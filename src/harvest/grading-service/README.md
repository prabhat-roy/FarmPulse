# grading-service

Service in the **harvest** domain of FarmPulse.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/grading-service/](../../../helm/charts/grading-service/) — Helm chart
- [manifests/harvest/grading-service/](../../../manifests/harvest/grading-service/) — Raw K8s manifests
