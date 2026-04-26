# feed-optimizer

Service in the **livestock** domain of FarmPulse.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/feed-optimizer/](../../../helm/charts/feed-optimizer/) — Helm chart
- [manifests/livestock/feed-optimizer/](../../../manifests/livestock/feed-optimizer/) — Raw K8s manifests
