.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/batch-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/batch-service:latest .

docker-run:
	docker run --rm -p 50220:50220 --env-file .env farmpulse/batch-service:latest
