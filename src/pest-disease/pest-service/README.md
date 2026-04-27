# pest-service

Service in the pest-disease domain of FarmPulse.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pest-service/](../../../helm/charts/pest-service/) â€” Helm chart
- [manifests/pest-disease/pest-service/](../../../manifests/pest-disease/pest-service/) â€” Raw K8s manifests
