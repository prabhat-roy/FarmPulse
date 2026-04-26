# AI_PLAN.md — FarmPulse (AgriTech & Precision Farming Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the FarmPulse-specific specialisation.

---

## 1. Why AI in FarmPulse

FarmPulse fuses satellite imagery, IoT (LoRaWAN soil/weather), drone
multispectral scans, livestock-collar telemetry, and farmer voice queries
into one platform. AI is non-optional because:

- A 24-hour delay on disease detection in a field can cost an entire
  harvest — only on-edge CV scales to thousands of farms.
- Smallholder farmers ask in 25+ languages, voice-first, low literacy —
  text-only chatbots do not work.
- Yield + market-price forecasting only beats heuristics when fused across
  satellite, weather, and futures data.

All AI must be **offline-tolerant** (rural connectivity is bursty), small
enough for on-edge inference, and explainable to extension officers.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Crop disease & pest detection (leaf images) | crop-management, advisory | EfficientNetV2 + custom backbone, on-device | <500 ms on phone |
| 2 | Yield prediction (per-field, per-crop) | analytics, finance | Temporal Fusion Transformer + satellite NDVI | weekly |
| 3 | Irrigation optimisation | water, iot | Reinforcement learning (offline RL) on soil + ET model | hourly |
| 4 | Hyper-local weather forecast | weather, advisory | GraphCast / Pangu-Weather distilled | 6-hourly |
| 5 | Soil-health analysis (pH, NPK from sensor / image) | soil, advisory | Tabular GBM + CV scorer | <2 s |
| 6 | Livestock tracking & health (collar telemetry, video) | livestock | LSTM anomaly + YOLO on barn cameras | streaming |
| 7 | Mandi / commodity price forecast | market, finance | NHITS + sentiment on news | nightly |
| 8 | Farmer voice assistant (Hindi + 22 Indic + Swahili + Spanish) | advisory | Whisper-large-v3 + IndicBERT + Llama 3.1 70B | <2 s |
| 9 | Satellite NDVI + crop-stage estimation | crop-management | U-Net + ConvLSTM | weekly |
| 10 | Pest-population spatial spread model | crop-management, scm | Spatial GNN + LSTM | daily |
| 11 | Loan / insurance claim risk for farmers | fintech | LightGBM on alt-data (satellite, mobile money) | <500 ms |
| 12 | Drone flight-path optimisation | drone, scouting | OR-Tools + RL | <30 s/plan |

---

## 3. Hierarchical Agent Architecture

Reuses **OpenClaw** / **Paperclip** / **NemoClaw** from `ShopOS/AI.md`.

### Tier 0 — Master Architect Agent

`farm-architect` (OpenClaw + Llama 3.1 70B). Researches new AI tooling,
proposes new services, on-boards Tier-1 leads, weekly written report.
Read-only on prod.

### Tier 1 — Division Leads (5)

| Agent | Scope |
|-------|-------|
| `farm-dev-lead`        | Backend/frontend service code |
| `farm-devops-lead`     | Helm, GitOps, infra, CI |
| `farm-devsecops-lead`  | OPA, Vault, Cilium, Falco |
| `farm-dataml-lead`     | Feature store, training pipelines, drift |
| `farm-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 — Specialist Agents

**By language**: Go, Java, Kotlin, Python, Node, Rust, TypeScript, Dart
(mobile).

**By tool**: PostgreSQL/PostGIS, MongoDB, Redis, TimescaleDB, MinIO,
ClickHouse, Kafka, NATS, MQTT (LoRaWAN gateway), ChirpStack, Vault,
Keycloak, OPA, Kyverno, Falco, Cilium, Istio, ArgoCD, Argo Workflows,
Prometheus, Grafana, Loki, Jaeger, OpenTelemetry, Trivy, Cosign,
GeoServer, MapLibre, OpenDroneMap, ODK Central, OpenFGA, Wazuh,
Camunda, Druid, Pulsar.

**By service** — one agent per microservice (~165). Owns README, OpenAPI,
test coverage, CHANGELOG, deps, /healthz wiring.

### Tier 3 — Ephemeral Workers

Spawned for retraining a disease detector on newly labelled images,
generating runbooks, or building model bundles for offline mobile use.

### Lifecycle

Research → Document → Implement → Test → Review → Deploy → Monitor →
Respond → Upgrade → Report. Weekly markdown report in `ai/reports/`.

---

## 4. Separate AI Infrastructure

```
ai-platform/
├── cluster: farm-ai-{aws,gcp,azure}      ← cloud GPU pool
├── edge: farmer-mobile-app               ← TFLite / Core ML / ONNX models bundled in app
├── edge: village-gateway                 ← Jetson Nano-class for drone/cam
├── namespace: farm-ai-control             ← Paperclip
├── namespace: farm-ai-agents              ← OpenClaw runtime
├── namespace: farm-ai-sandbox             ← NemoClaw
├── namespace: farm-ai-models              ← vLLM, Ollama, LiteLLM, Triton
├── namespace: farm-ai-data                ← Qdrant, Weaviate, MinIO, MLflow
├── namespace: farm-ai-obs                 ← Langfuse, Phoenix
└── namespace: farm-ai-pipelines           ← Argo Workflows
```

### Hardware

- **Cloud**: A100 pool for satellite + multispectral training; A10G/L4 for
  LLM inference.
- **Mobile edge**: TFLite + ONNX Runtime models <50 MB; quantised
  EfficientNetV2 for disease detection.
- **Village gateway**: Jetson Nano / Orin Nano running Triton with
  TensorRT-quantised pest-spread + drone-stitching pipelines.

### Software stack

| Layer | Tool | Purpose |
|-------|------|---------|
| Cloud inference | vLLM, Triton | LLM + vision |
| Edge inference | TFLite, ONNX Runtime, TensorRT | Mobile + gateway |
| Local dev | Ollama | Offline |
| Gateway | LiteLLM | OpenAI-compatible, quota |
| Orchestrator | **Paperclip** | Task queue, audit |
| Agent platform | **OpenClaw** | Llama 3.1 70B |
| Sandbox | **NemoClaw** | NeMo Guardrails |
| Vector | Qdrant | Knowledge-base for advisory |
| Vector | Weaviate | Multimodal disease image+text |
| MLOps | MLflow | Model registry |
| Workflows | Argo Workflows | Retraining, satellite ingest |
| Feature store | Feast | Field, weather, market features |
| Drift | Evidently | Feature drift, regional shift |
| LLM obs | Langfuse + Phoenix | Trace, cost, eval |
| Voice | Whisper-large-v3 + Coqui TTS | Multilingual STT/TTS, self-hosted |

### Data isolation

- Country-level data sovereignty (IN, KE, BR farms separate clusters).
- Smallholder PII never persisted in prompts — voice queries hash farmer-ID.
- Satellite imagery: licensed by country; OPA enforces query scope.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| GDPR / DPDP | PII tokenisation; right-to-erasure in Paperclip |
| Drone airspace (DGCA / FAA / EASA) | AI flight-plans must pass rule-engine before publish |
| Pesticide / agronomic advisory | Every AI advisory tagged with confidence + government-recommended fallback; <70% confidence → human extension officer |
| Insurance fairness | LightGBM credit model audited quarterly for bias by region/caste/gender |
| Offline-fallback safety | Mobile model decisions display "no internet — local model only" notice |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `farm-ai-*` cloud cluster up; vLLM serving Llama 3.1 70B |
| 2 | Paperclip + NemoClaw + Langfuse; Tier-0 architect live |
| 3 | Tier-1 leads; first disease-detection model on MLflow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents; mobile app TFLite bundle |
| 6 | Voice assistant prod (Hindi + 4 Indic) |
| 7 | Satellite NDVI + yield prediction prod |
| 8 | Multi-region (IN→KE→BR) rollout, multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- **Cloud infra**: $3,200 – $5,400 / month per primary cloud
- **Edge gateway** (per village): $400 one-time, $20/month ops
- **No** subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
