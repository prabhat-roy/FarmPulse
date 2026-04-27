# kcc-service

Service in the finance domain of FarmPulse.

Language: Go Â· Port: 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kcc-service/](../../../helm/charts/kcc-service/) â€” Helm chart
- [manifests/finance/kcc-service/](../../../manifests/finance/kcc-service/) â€” Raw K8s manifests
