package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("HTTP_PORT")
	if port == "" { port = "8080" }
	mux := http.NewServeMux()
	mux.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(`{"status":"ok","service":"farmer-bff"}`))
	})
	mux.HandleFunc("/metrics", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("# TYPE up gauge\nup{service=\"farmer-bff\"} 1\n"))
	})
	mux.HandleFunc("/v1/sync/delta", func(w http.ResponseWriter, r *http.Request) {
		// TODO: accept CRDT deltas, persist, emit reconciliation events
		w.WriteHeader(http.StatusAccepted)
	})
	log.Printf("farmer-bff listening on :%s", port)
	log.Fatal(http.ListenAndServe(":"+port, mux))
}
