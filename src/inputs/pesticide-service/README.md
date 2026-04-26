# pesticide-service

Service in the **inputs** domain of FarmPulse.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pesticide-service/](../../../helm/charts/pesticide-service/) — Helm chart
- [manifests/inputs/pesticide-service/](../../../manifests/inputs/pesticide-service/) — Raw K8s manifests
