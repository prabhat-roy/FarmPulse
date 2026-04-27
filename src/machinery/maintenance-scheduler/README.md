# maintenance-scheduler

Service in the machinery domain of FarmPulse.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-scheduler/](../../../helm/charts/maintenance-scheduler/) â€” Helm chart
- [manifests/machinery/maintenance-scheduler/](../../../manifests/machinery/maintenance-scheduler/) â€” Raw K8s manifests
