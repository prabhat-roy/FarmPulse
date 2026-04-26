# disease-alert

Service in the **pest-disease** domain of FarmPulse.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/disease-alert/](../../../helm/charts/disease-alert/) — Helm chart
- [manifests/pest-disease/disease-alert/](../../../manifests/pest-disease/disease-alert/) — Raw K8s manifests
