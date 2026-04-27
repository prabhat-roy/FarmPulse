# breeding-service

Service in the livestock domain of FarmPulse.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/breeding-service/](../../../helm/charts/breeding-service/) â€” Helm chart
- [manifests/livestock/breeding-service/](../../../manifests/livestock/breeding-service/) â€” Raw K8s manifests
