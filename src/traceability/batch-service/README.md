# batch-service

Service in the **traceability** domain of FarmPulse.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/batch-service/](../../../helm/charts/batch-service/) — Helm chart
- [manifests/traceability/batch-service/](../../../manifests/traceability/batch-service/) — Raw K8s manifests
