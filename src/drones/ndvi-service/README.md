# ndvi-service

Service in the drones domain of FarmPulse.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ndvi-service/](../../../helm/charts/ndvi-service/) â€” Helm chart
- [manifests/drones/ndvi-service/](../../../manifests/drones/ndvi-service/) â€” Raw K8s manifests
