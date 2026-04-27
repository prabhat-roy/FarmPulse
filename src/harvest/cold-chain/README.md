# cold-chain

Service in the harvest domain of FarmPulse.

Language: Go Â· Port: 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cold-chain/](../../../helm/charts/cold-chain/) â€” Helm chart
- [manifests/harvest/cold-chain/](../../../manifests/harvest/cold-chain/) â€” Raw K8s manifests
