# risk-assessment

Service in the analytics domain of FarmPulse.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/risk-assessment/](../../../helm/charts/risk-assessment/) â€” Helm chart
- [manifests/analytics/risk-assessment/](../../../manifests/analytics/risk-assessment/) â€” Raw K8s manifests
