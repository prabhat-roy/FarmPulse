.PHONY: run build test
SVC=sensor-aggregator
run: ; go run ./cmd/server
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; go test ./...
