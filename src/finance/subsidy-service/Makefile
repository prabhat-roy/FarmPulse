.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/subsidy-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/subsidy-service:latest .

docker-run:
	docker run --rm -p 50262:50262 --env-file .env farmpulse/subsidy-service:latest
