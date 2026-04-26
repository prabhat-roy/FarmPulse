# storage-service

Service in the **harvest** domain of FarmPulse.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/storage-service/](../../../helm/charts/storage-service/) — Helm chart
- [manifests/harvest/storage-service/](../../../manifests/harvest/storage-service/) — Raw K8s manifests
