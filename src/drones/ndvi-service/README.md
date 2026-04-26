# ndvi-service

Service in the **drones** domain of FarmPulse.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ndvi-service/](../../../helm/charts/ndvi-service/) — Helm chart
- [manifests/drones/ndvi-service/](../../../manifests/drones/ndvi-service/) — Raw K8s manifests
