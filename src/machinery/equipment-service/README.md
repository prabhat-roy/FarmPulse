# equipment-service

Service in the **machinery** domain of FarmPulse.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/equipment-service/](../../../helm/charts/equipment-service/) — Helm chart
- [manifests/machinery/equipment-service/](../../../manifests/machinery/equipment-service/) — Raw K8s manifests
