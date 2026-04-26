# breeding-service

Service in the **livestock** domain of FarmPulse.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/breeding-service/](../../../helm/charts/breeding-service/) — Helm chart
- [manifests/livestock/breeding-service/](../../../manifests/livestock/breeding-service/) — Raw K8s manifests
