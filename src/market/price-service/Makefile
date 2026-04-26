.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/price-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/price-service:latest .

docker-run:
	docker run --rm -p 50240:50240 --env-file .env farmpulse/price-service:latest
