.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/equipment-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/equipment-service:latest .

docker-run:
	docker run --rm -p 50160:50160 --env-file .env farmpulse/equipment-service:latest
