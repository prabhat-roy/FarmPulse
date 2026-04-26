# seed-service

Service in the **inputs** domain of FarmPulse.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/seed-service/](../../../helm/charts/seed-service/) — Helm chart
- [manifests/inputs/seed-service/](../../../manifests/inputs/seed-service/) — Raw K8s manifests
