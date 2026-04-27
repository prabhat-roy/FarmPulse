# cooperative-service

Service in the identity domain of FarmPulse.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cooperative-service/](../../../helm/charts/cooperative-service/) â€” Helm chart
- [manifests/identity/cooperative-service/](../../../manifests/identity/cooperative-service/) â€” Raw K8s manifests
