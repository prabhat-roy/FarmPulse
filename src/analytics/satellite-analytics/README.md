# satellite-analytics

Service in the **analytics** domain of FarmPulse.

**Language:** Go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/satellite-analytics/](../../../helm/charts/satellite-analytics/) — Helm chart
- [manifests/analytics/satellite-analytics/](../../../manifests/analytics/satellite-analytics/) — Raw K8s manifests
