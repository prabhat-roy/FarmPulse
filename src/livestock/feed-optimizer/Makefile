.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/feed-optimizer .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/feed-optimizer:latest .

docker-run:
	docker run --rm -p 50142:50142 --env-file .env farmpulse/feed-optimizer:latest
