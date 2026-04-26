# imagery-processor

Service in the **drones** domain of FarmPulse.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/imagery-processor/](../../../helm/charts/imagery-processor/) — Helm chart
- [manifests/drones/imagery-processor/](../../../manifests/drones/imagery-processor/) — Raw K8s manifests
