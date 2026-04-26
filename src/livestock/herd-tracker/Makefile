.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/herd-tracker .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/herd-tracker:latest .

docker-run:
	docker run --rm -p 50140:50140 --env-file .env farmpulse/herd-tracker:latest
