# FarmPulse — Smart Agriculture & Precision Farming Platform

Enterprise-grade, cloud-native precision agriculture platform built on open source technologies.
Covers the full agricultural value chain — farm management, precision irrigation, crop monitoring,
soil analytics, pest detection, livestock management, supply chain traceability, and agri-market
connectivity — designed for large farming enterprises, agricultural cooperatives, agri-input companies,
and government farm welfare programmes. Built for operation in low-connectivity rural environments.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | Precision Farming · Farm Management · Agri Supply Chain · AgriFinance |
| Domains           | 16 business domains                                                |
| Services          | 170+ microservices                                                 |
| Languages         | Go, Python, Java, Node.js, Rust, TypeScript, MicroPython (edge devices) |
| Standards         | ISOBUS (ISO 11783), NGSI-LD (IoT data), SensorThings API, GeoJSON, OGC |
| Databases         | PostgreSQL, TimescaleDB, MongoDB, Redis, Cassandra, InfluxDB       |
| Message Broker    | Apache Kafka, MQTT (IoT), NATS JetStream, RabbitMQ                 |
| Cloud             | AWS (primary), GCP, Edge (on-farm Raspberry Pi / NVIDIA Jetson)    |
| Orchestration     | Kubernetes (EKS) + K3s (lightweight edge orchestration on-farm)    |
| IoT Integration   | LoRaWAN, NB-IoT, MQTT, ISOBUS — soil sensors, drones, weather stations |
| Frontend          | React (farm manager dashboard), Flutter (farmer mobile app — offline-first), Vue.js (market portal) |

---

## Business Domains

| # | Domain                   | Key Services                                                            |
|---|--------------------------|-------------------------------------------------------------------------|
| 1 | Farm & Field Management  | farm-service, field-service, plot-service, boundary-service, crop-calendar |
| 2 | Soil & Environment       | soil-service, sensor-aggregator, weather-service, microclimate, fertility|
| 3 | Crop Management          | crop-service, variety-service, growth-stage, yield-estimator, phenology |
| 4 | Precision Irrigation     | irrigation-service, water-scheduler, moisture-alert, pump-controller    |
| 5 | Pest & Disease Detection | pest-service, disease-service, alert-service, spray-recommendation      |
| 6 | Drones & Aerial         | drone-service, flight-planner, ndvi-service, imagery-processor, mapping |
| 7 | Livestock Management     | livestock-service, herd-tracker, health-record, breeding, feed-optimizer|
| 8 | Farm Machinery          | equipment-service, telematics, maintenance-scheduler, fuel-tracker      |
| 9 | Agri Input Management   | input-service, seed-service, fertilizer-service, pesticide, inventory   |
| 10 | Harvest & Post-Harvest  | harvest-service, storage-service, grading, cold-chain, milling          |
| 11 | Supply Chain & Traceability | traceability-service, batch-service, qr-service, blockchain-anchor   |
| 12 | Agri Market & Trade     | market-service, price-service, auction-service, mandi-integration, export|
| 13 | Agri Finance            | credit-service, insurance-service, subsidy-service, kcc-service, claim  |
| 14 | Analytics & AI          | yield-prediction, risk-assessment, advisory-service, satellite-analytics |
| 15 | Identity & Access       | auth-service, farmer-profile, cooperative-service, mfa, kyc-service     |
| 16 | Platform                | api-gateway, farmer-bff, agronomy-bff, market-bff, graphql-gateway      |

---

## Architecture

```
          ┌────────────────────────────────────────────────────────┐
          │                    Cloud Core (AWS EKS)                 │
          │  ┌─────────────────────────────────────────────────┐   │
          │  │                 API Gateway                     │   │
          │  │    (OAuth2 · mTLS · Rate Limit · Offline Sync)  │   │
          │  └─────┬────────────┬───────────────┬──────────────┘   │
          │        │            │               │                   │
          │ ┌──────▼──┐  ┌──────▼──┐   ┌───────▼────────┐         │
          │ │Farmer   │  │Agronomy │   │ Market Portal  │         │
          │ │ App BFF │  │Dashboard│   │  (Vue.js)      │         │
          │ │(Flutter)│  │ (React) │   └───────┬────────┘         │
          │ └──────┬──┘  └──────┬──┘           │                   │
          │        └────────────┴───────────────┘                   │
          │                     │ gRPC (Istio mTLS)                 │
          │  ┌──────────┐  ┌────▼───────┐  ┌──────────────────┐   │
          │  │  Crop &  │  │  IoT Data  │  │   AI Advisory    │   │
          │  │   Farm   │  │  Platform  │  │   Services       │   │
          │  └──────────┘  └────▼───────┘  └──────────────────┘   │
          └───────────────────── │ ─────────────────────────────────┘
                                 │ Kafka (Farm Events)
          ┌──────────────────────▼─────────────────────────────────┐
          │                  Edge Layer (K3s on-farm)               │
          │  ┌─────────────┐  ┌─────────────┐  ┌───────────────┐   │
          │  │  IoT Gateway│  │ MQTT Broker │  │ Local AI      │   │
          │  │  (LoRaWAN / │  │ (Mosquitto) │  │ (NVIDIA Jetson│   │
          │  │   NB-IoT)   │  │             │  │  — drone ML)  │   │
          │  └──────┬──────┘  └──────┬──────┘  └───────────────┘   │
          │         │                │                               │
          │  Soil Sensors  GPS Trackers  Weather Stations  Drones   │
          └────────────────────────────────────────────────────────┘
```

---

## Tech Stack

### Agriculture Standards & Protocols
- **ISOBUS (ISO 11783)**: Farm machine communication — tractor, planter, sprayer data via CAN bus adapter
- **NGSI-LD**: FIWARE standard for IoT context data (soil sensors, weather stations) — semantic data model
- **SensorThings API (OGC)**: Standard API for IoT sensor observation data
- **GeoJSON / WKT**: Field boundaries, farm plots, irrigation zones stored as geospatial features (PostGIS)
- **LoRaWAN**: Long-range, low-power IoT connectivity for remote soil sensors (The Things Network compatible)
- **NB-IoT**: NB-IoT for livestock trackers and field sensors in areas with cellular coverage

### Infrastructure
- **Cloud Core**: Kubernetes on EKS — analytical workloads, core APIs, AI model serving
- **Edge Layer**: K3s on Raspberry Pi 4 / NVIDIA Jetson (on-farm) — local IoT aggregation, offline ML inference
- **Geospatial**: PostGIS (farm boundaries, irrigation zones); QGIS for farm mapping; Sentinel Hub API (satellite imagery)
- **Time-Series**: TimescaleDB (soil moisture, temperature, humidity, NDVI timeseries per field per sensor)
- **Drone Data**: DroneDeploy-compatible orthomosaic processing (OpenDroneMap — open source photogrammetry)
- **Connectivity**: Offline-first architecture — K3s edge syncs to cloud when connectivity available (NATS JetStream)

### CI/CD & GitOps
- **CI**: Jenkins (primary), GitHub Actions, GitLab CI
- **CD**: ArgoCD (cloud core), Fleet (Rancher Fleet for K3s edge deployments — OTA firmware updates)
- **IaC**: Terraform (EKS + LoRaWAN gateway provisioning), Ansible (edge node setup and hardening)
- **Edge OTA**: Rancher Fleet manages K3s node upgrades across 1000s of on-farm edge nodes
- **Secrets**: HashiCorp Vault (cloud) + SOPS (edge — encrypted secrets in Git for K3s)

### Observability
- **Metrics**: Prometheus + Grafana (field sensor health, irrigation pump uptime, drone flight status)
- **Logs**: Loki + Fluent Bit (edge nodes ship logs to cloud when online)
- **Traces**: Jaeger + OTel (trace advisory recommendation from satellite data → AI model → farmer alert)
- **Farm Dashboard**: Real-time field health map on Grafana — NDVI heatmap, soil moisture, weather overlays
- **SLOs**: Irrigation command latency < 5s (P99), sensor data freshness < 15min, advisory delivery < 30min

### Security
- **Device Identity**: SPIFFE/SPIRE + X.509 certificates for each IoT edge device (mutual TLS to MQTT broker)
- **Farmer Identity**: Keycloak (mobile SSO + biometric), OTP-based login for feature phone farmers
- **Network**: Cilium eBPF (cloud), WireGuard VPN (edge-to-cloud tunnel), MQTT over TLS
- **Scanning**: Trivy, Semgrep, SonarQube, OWASP ZAP
- **Supply Chain**: Cosign + Rekor (cloud images), SBOM tracking for edge firmware

### AI / ML (Precision Agriculture Intelligence)
- **Crop Disease Detection**: CNN (ResNet-50) trained on PlantVillage dataset — runs on NVIDIA Jetson at field edge (< 100ms inference, works offline)
- **Yield Prediction**: Ensemble model (XGBoost + LSTM) using historical yield, weather, soil, satellite NDVI
- **Irrigation Scheduling**: Reinforcement learning (RL) agent — optimises irrigation schedule to minimise water use while maintaining crop stress index
- **Pest Forecasting**: Time-series ML model on weather + pest incidence data — 7-day pest risk forecast
- **Satellite Analytics**: Sentinel-2 satellite imagery processed with NDVI, EVI, SAVI indices — field health heatmaps
- **Market Price Prediction**: LSTM model on commodity price timeseries — 14-day price forecast for farmer selling decisions
- **Soil Health Score**: Composite ML score from soil test data (N-P-K, pH, organic matter) — fertiliser recommendation engine

---

## Key Design Decisions

1. **Offline-first everywhere**: Flutter farmer app + K3s edge work fully without internet — critical for rural areas with unreliable connectivity; sync on reconnection
2. **Edge AI for disease detection**: CNN model runs on NVIDIA Jetson at farm edge — no image upload required (privacy + latency)
3. **LoRaWAN for sensor connectivity**: Soil sensors transmit on LoRaWAN (10km range, 10-year battery) — no cellular SIM cost per sensor
4. **ISOBUS integration**: Farm machinery telemetry read directly from tractor CAN bus via ISOBUS adapter — no manual data entry
5. **Blockchain-anchored traceability**: Farm-to-fork traceability events anchored on Hyperledger Fabric — tamper-evident QR code on produce
6. **Multi-language farmer app**: Flutter app in 22 languages + voice interface (Whisper STT) — critical for low-literacy farmers
7. **Variable rate application**: AI prescription maps (fertiliser, pesticide) output in ISO-XML format — direct upload to ISOBUS-compatible machinery

---

## Status

- [ ] Architecture design & IoT data model (NGSI-LD)
- [ ] Service registry & proto definitions
- [ ] K3s edge cluster setup + Rancher Fleet
- [ ] LoRaWAN gateway integration (The Things Network)
- [ ] ISOBUS adapter service
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev with sensor simulators)
- [ ] Helm charts (cloud) + K3s manifests (edge)
- [ ] CI/CD pipelines (Jenkins, GitHub Actions)
- [ ] GitOps (ArgoCD + Rancher Fleet)
- [ ] AI crop disease detection model (PlantVillage)
- [ ] Satellite imagery pipeline (Sentinel-2)
