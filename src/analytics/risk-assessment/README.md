# risk-assessment

Service in the **analytics** domain of FarmPulse.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/risk-assessment/](../../../helm/charts/risk-assessment/) — Helm chart
- [manifests/analytics/risk-assessment/](../../../manifests/analytics/risk-assessment/) — Raw K8s manifests
