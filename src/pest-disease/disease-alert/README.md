# disease-alert

Service in the pest-disease domain of FarmPulse.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/disease-alert/](../../../helm/charts/disease-alert/) â€” Helm chart
- [manifests/pest-disease/disease-alert/](../../../manifests/pest-disease/disease-alert/) â€” Raw K8s manifests
