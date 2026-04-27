# auction-service

Service in the market domain of FarmPulse.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/auction-service/](../../../helm/charts/auction-service/) â€” Helm chart
- [manifests/market/auction-service/](../../../manifests/market/auction-service/) â€” Raw K8s manifests
