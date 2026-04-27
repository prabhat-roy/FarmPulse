# qr-service

Service in the traceability domain of FarmPulse.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/qr-service/](../../../helm/charts/qr-service/) â€” Helm chart
- [manifests/traceability/qr-service/](../../../manifests/traceability/qr-service/) â€” Raw K8s manifests
