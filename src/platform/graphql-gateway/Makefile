.PHONY: run build test lint fmt
SVC=graphql-gateway
run:
	go run ./cmd/server
build:
	docker build -t farmpulse/$(SVC):dev .
test:
	go test ./...
lint:
	golangci-lint run
fmt:
	gofmt -w .
