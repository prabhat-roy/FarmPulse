# batch-service

Service in the traceability domain of FarmPulse.

Language: Go Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/batch-service/](../../../helm/charts/batch-service/) â€” Helm chart
- [manifests/traceability/batch-service/](../../../manifests/traceability/batch-service/) â€” Raw K8s manifests
