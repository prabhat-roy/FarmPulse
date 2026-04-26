# credit-service

Service in the **finance** domain of FarmPulse.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/credit-service/](../../../helm/charts/credit-service/) — Helm chart
- [manifests/finance/credit-service/](../../../manifests/finance/credit-service/) — Raw K8s manifests
