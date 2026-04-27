# storage-service

Service in the harvest domain of FarmPulse.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/storage-service/](../../../helm/charts/storage-service/) â€” Helm chart
- [manifests/harvest/storage-service/](../../../manifests/harvest/storage-service/) â€” Raw K8s manifests
