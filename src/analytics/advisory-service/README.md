# advisory-service

Service in the analytics domain of FarmPulse.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/advisory-service/](../../../helm/charts/advisory-service/) â€” Helm chart
- [manifests/analytics/advisory-service/](../../../manifests/analytics/advisory-service/) â€” Raw K8s manifests
