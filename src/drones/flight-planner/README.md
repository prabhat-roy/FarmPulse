# flight-planner

Service in the **drones** domain of FarmPulse.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/flight-planner/](../../../helm/charts/flight-planner/) — Helm chart
- [manifests/drones/flight-planner/](../../../manifests/drones/flight-planner/) — Raw K8s manifests
