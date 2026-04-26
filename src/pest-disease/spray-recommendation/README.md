# spray-recommendation

Service in the **pest-disease** domain of FarmPulse.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/spray-recommendation/](../../../helm/charts/spray-recommendation/) — Helm chart
- [manifests/pest-disease/spray-recommendation/](../../../manifests/pest-disease/spray-recommendation/) — Raw K8s manifests
