# cooperative-service

Service in the **identity** domain of FarmPulse.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cooperative-service/](../../../helm/charts/cooperative-service/) — Helm chart
- [manifests/identity/cooperative-service/](../../../manifests/identity/cooperative-service/) — Raw K8s manifests
