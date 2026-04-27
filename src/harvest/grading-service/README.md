# grading-service

Service in the harvest domain of FarmPulse.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/grading-service/](../../../helm/charts/grading-service/) â€” Helm chart
- [manifests/harvest/grading-service/](../../../manifests/harvest/grading-service/) â€” Raw K8s manifests
