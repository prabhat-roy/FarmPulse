# auction-service

Service in the **market** domain of FarmPulse.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/auction-service/](../../../helm/charts/auction-service/) — Helm chart
- [manifests/market/auction-service/](../../../manifests/market/auction-service/) — Raw K8s manifests
