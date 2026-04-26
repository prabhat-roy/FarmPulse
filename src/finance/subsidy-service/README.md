# subsidy-service

Service in the **finance** domain of FarmPulse.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/subsidy-service/](../../../helm/charts/subsidy-service/) — Helm chart
- [manifests/finance/subsidy-service/](../../../manifests/finance/subsidy-service/) — Raw K8s manifests
