# credit-service

Service in the finance domain of FarmPulse.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/credit-service/](../../../helm/charts/credit-service/) â€” Helm chart
- [manifests/finance/credit-service/](../../../manifests/finance/credit-service/) â€” Raw K8s manifests
