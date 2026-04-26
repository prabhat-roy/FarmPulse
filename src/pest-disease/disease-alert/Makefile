.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/disease-alert .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/disease-alert:latest .

docker-run:
	docker run --rm -p 50101:50101 --env-file .env farmpulse/disease-alert:latest
