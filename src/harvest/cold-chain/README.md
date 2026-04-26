# cold-chain

Service in the **harvest** domain of FarmPulse.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cold-chain/](../../../helm/charts/cold-chain/) — Helm chart
- [manifests/harvest/cold-chain/](../../../manifests/harvest/cold-chain/) — Raw K8s manifests
