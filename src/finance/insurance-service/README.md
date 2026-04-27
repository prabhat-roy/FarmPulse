# insurance-service

Service in the finance domain of FarmPulse.

Language: Go Â· Port: 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/insurance-service/](../../../helm/charts/insurance-service/) â€” Helm chart
- [manifests/finance/insurance-service/](../../../manifests/finance/insurance-service/) â€” Raw K8s manifests
