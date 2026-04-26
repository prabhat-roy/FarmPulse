# herd-tracker

Service in the **livestock** domain of FarmPulse.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/herd-tracker/](../../../helm/charts/herd-tracker/) — Helm chart
- [manifests/livestock/herd-tracker/](../../../manifests/livestock/herd-tracker/) — Raw K8s manifests
