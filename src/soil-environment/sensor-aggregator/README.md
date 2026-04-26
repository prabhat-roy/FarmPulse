# sensor-aggregator

Sensor telemetry aggregator (MQTT/LoRaWAN to Kafka). Subscribes to MQTT broker
on `farmpulse/+/+/+/sensor/+/+`, decodes payloads, and produces Kafka topics
under `soil-environment.sensor.*`.

- **Domain**: soil-environment · **Language**: Go · **Port**: 50041
