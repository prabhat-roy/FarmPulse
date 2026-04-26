# microclimate

Service in the **soil-environment** domain of FarmPulse.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/microclimate/](../../../helm/charts/microclimate/) — Helm chart
- [manifests/soil-environment/microclimate/](../../../manifests/soil-environment/microclimate/) — Raw K8s manifests
