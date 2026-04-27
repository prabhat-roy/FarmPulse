# price-service

Service in the market domain of FarmPulse.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/price-service/](../../../helm/charts/price-service/) â€” Helm chart
- [manifests/market/price-service/](../../../manifests/market/price-service/) â€” Raw K8s manifests
