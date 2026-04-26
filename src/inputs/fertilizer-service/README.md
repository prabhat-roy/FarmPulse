# fertilizer-service

Service in the **inputs** domain of FarmPulse.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fertilizer-service/](../../../helm/charts/fertilizer-service/) — Helm chart
- [manifests/inputs/fertilizer-service/](../../../manifests/inputs/fertilizer-service/) — Raw K8s manifests
