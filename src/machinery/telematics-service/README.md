# telematics-service

Service in the **machinery** domain of FarmPulse.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/telematics-service/](../../../helm/charts/telematics-service/) — Helm chart
- [manifests/machinery/telematics-service/](../../../manifests/machinery/telematics-service/) — Raw K8s manifests
