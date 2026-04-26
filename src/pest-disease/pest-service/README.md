# pest-service

Service in the **pest-disease** domain of FarmPulse.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pest-service/](../../../helm/charts/pest-service/) — Helm chart
- [manifests/pest-disease/pest-service/](../../../manifests/pest-disease/pest-service/) — Raw K8s manifests
