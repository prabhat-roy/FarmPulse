# maintenance-scheduler

Service in the **machinery** domain of FarmPulse.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-scheduler/](../../../helm/charts/maintenance-scheduler/) — Helm chart
- [manifests/machinery/maintenance-scheduler/](../../../manifests/machinery/maintenance-scheduler/) — Raw K8s manifests
