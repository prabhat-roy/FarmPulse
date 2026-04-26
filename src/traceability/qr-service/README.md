# qr-service

Service in the **traceability** domain of FarmPulse.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/qr-service/](../../../helm/charts/qr-service/) — Helm chart
- [manifests/traceability/qr-service/](../../../manifests/traceability/qr-service/) — Raw K8s manifests
