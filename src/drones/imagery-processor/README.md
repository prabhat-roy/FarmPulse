# imagery-processor

Service in the drones domain of FarmPulse.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/imagery-processor/](../../../helm/charts/imagery-processor/) â€” Helm chart
- [manifests/drones/imagery-processor/](../../../manifests/drones/imagery-processor/) â€” Raw K8s manifests
