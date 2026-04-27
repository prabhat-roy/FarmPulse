# seed-service

Service in the inputs domain of FarmPulse.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/seed-service/](../../../helm/charts/seed-service/) â€” Helm chart
- [manifests/inputs/seed-service/](../../../manifests/inputs/seed-service/) â€” Raw K8s manifests
