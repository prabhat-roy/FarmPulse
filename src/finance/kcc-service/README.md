# kcc-service

Service in the **finance** domain of FarmPulse.

**Language:** Go · **Port:** 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kcc-service/](../../../helm/charts/kcc-service/) — Helm chart
- [manifests/finance/kcc-service/](../../../manifests/finance/kcc-service/) — Raw K8s manifests
