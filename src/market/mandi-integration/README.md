# mandi-integration

Service in the **market** domain of FarmPulse.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mandi-integration/](../../../helm/charts/mandi-integration/) — Helm chart
- [manifests/market/mandi-integration/](../../../manifests/market/mandi-integration/) — Raw K8s manifests
