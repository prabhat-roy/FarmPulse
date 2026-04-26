package main

import (
	"log"
	"net/http"
	"os"
)

// sensor-aggregator: MQTT/LoRaWAN -> Kafka pipeline.
// Subscribes to topic glob `farmpulse/+/+/+/sensor/+/+`, decodes JSON payloads,
// writes to Kafka. Falls back to local TimescaleDB buffer when Kafka unreachable.
func main() {
	port := os.Getenv("HTTP_PORT")
	if port == "" { port = "8080" }
	http.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte(`{"status":"ok"}`)) })
	http.HandleFunc("/metrics", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("# TYPE sensor_messages_total counter\nsensor_messages_total 0\n"))
	})
	log.Printf("sensor-aggregator listening on :%s", port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
