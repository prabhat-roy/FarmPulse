# pesticide-service

Service in the inputs domain of FarmPulse.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pesticide-service/](../../../helm/charts/pesticide-service/) â€” Helm chart
- [manifests/inputs/pesticide-service/](../../../manifests/inputs/pesticide-service/) â€” Raw K8s manifests
