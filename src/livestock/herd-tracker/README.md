# herd-tracker

Service in the livestock domain of FarmPulse.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/herd-tracker/](../../../helm/charts/herd-tracker/) â€” Helm chart
- [manifests/livestock/herd-tracker/](../../../manifests/livestock/herd-tracker/) â€” Raw K8s manifests
