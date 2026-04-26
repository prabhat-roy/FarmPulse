package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("HTTP_PORT")
	if port == "" { port = "8080" }
	http.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte(`{"status":"ok"}`)) })
	http.HandleFunc("/metrics", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte("# TYPE up gauge\nup 1\n")) })
	log.Printf("boundary-service listening on :%s", port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
