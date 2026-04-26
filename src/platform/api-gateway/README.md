# api-gateway

HTTP+gRPC ingress, JWT auth, rate limiting, offline-sync routing.

- **Domain**: platform
- **Language**: Go
- **Port**: 50000

## Run locally
```sh
make run
```

## Endpoints
- `GET  /healthz` — liveness
- `GET  /metrics` — Prometheus
- gRPC `farmpulse.platform.v1.ApiGatewayService` on `:50000`
