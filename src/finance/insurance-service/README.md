# insurance-service

Service in the **finance** domain of FarmPulse.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/insurance-service/](../../../helm/charts/insurance-service/) — Helm chart
- [manifests/finance/insurance-service/](../../../manifests/finance/insurance-service/) — Raw K8s manifests
