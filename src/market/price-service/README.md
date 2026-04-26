# price-service

Service in the **market** domain of FarmPulse.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/price-service/](../../../helm/charts/price-service/) — Helm chart
- [manifests/market/price-service/](../../../manifests/market/price-service/) — Raw K8s manifests
