# subsidy-service

Service in the finance domain of FarmPulse.

Language: Go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/subsidy-service/](../../../helm/charts/subsidy-service/) â€” Helm chart
- [manifests/finance/subsidy-service/](../../../manifests/finance/subsidy-service/) â€” Raw K8s manifests
