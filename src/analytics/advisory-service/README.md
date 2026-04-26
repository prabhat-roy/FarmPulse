# advisory-service

Service in the **analytics** domain of FarmPulse.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/advisory-service/](../../../helm/charts/advisory-service/) — Helm chart
- [manifests/analytics/advisory-service/](../../../manifests/analytics/advisory-service/) — Raw K8s manifests
