.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/cooperative-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/cooperative-service:latest .

docker-run:
	docker run --rm -p 50021:50021 --env-file .env farmpulse/cooperative-service:latest
