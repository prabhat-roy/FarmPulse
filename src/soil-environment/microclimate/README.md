# microclimate

Service in the soil-environment domain of FarmPulse.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/microclimate/](../../../helm/charts/microclimate/) â€” Helm chart
- [manifests/soil-environment/microclimate/](../../../manifests/soil-environment/microclimate/) â€” Raw K8s manifests
