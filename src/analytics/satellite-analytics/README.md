# satellite-analytics

Service in the analytics domain of FarmPulse.

Language: Go Â· Port: 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/satellite-analytics/](../../../helm/charts/satellite-analytics/) â€” Helm chart
- [manifests/analytics/satellite-analytics/](../../../manifests/analytics/satellite-analytics/) â€” Raw K8s manifests
