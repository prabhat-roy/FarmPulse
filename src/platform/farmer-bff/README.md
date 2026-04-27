# farmer-bff

BFF for Flutter farmer mobile (offline-first, CRDT sync).

- Domain: platform
- Language: Go
- Port: 50001

## Endpoints
- `GET  /healthz`
- `GET  /metrics`
- `POST /v1/sync/delta` â€” accepts CRDT deltas from offline farmer device
