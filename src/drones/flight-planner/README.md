# flight-planner

Service in the drones domain of FarmPulse.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/flight-planner/](../../../helm/charts/flight-planner/) â€” Helm chart
- [manifests/drones/flight-planner/](../../../manifests/drones/flight-planner/) â€” Raw K8s manifests
