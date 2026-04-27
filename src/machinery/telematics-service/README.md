# telematics-service

Service in the machinery domain of FarmPulse.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/telematics-service/](../../../helm/charts/telematics-service/) â€” Helm chart
- [manifests/machinery/telematics-service/](../../../manifests/machinery/telematics-service/) â€” Raw K8s manifests
