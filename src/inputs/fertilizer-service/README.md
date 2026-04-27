# fertilizer-service

Service in the inputs domain of FarmPulse.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fertilizer-service/](../../../helm/charts/fertilizer-service/) â€” Helm chart
- [manifests/inputs/fertilizer-service/](../../../manifests/inputs/fertilizer-service/) â€” Raw K8s manifests
