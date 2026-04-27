# Events â€” FarmPulse

Kafka, MQTT, and NATS JetStream event schemas. Topic naming follows
`{domain}.{entity}.{event}` per CLAUDE.md.

| Transport | Used for |
|---|---|
| Kafka | Cloud-side events (Avro registered in Schema Registry) |
| MQTT | Sensor telemetry from edge (LoRaWAN/NB-IoT bridges) |
| NATS JetStream | Cloud<->edge replication, offline-first sync |

## Layout

- `avro/` â€” Avro schemas (Kafka)
- `mqtt/` â€” MQTT topic catalogue + payload schemas
- `nats/` â€” NATS subjects for cloud<->edge sync
- `topics.yaml` â€” registry of all topics + retention policy
