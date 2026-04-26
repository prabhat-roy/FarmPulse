.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/maintenance-scheduler .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/maintenance-scheduler:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env farmpulse/maintenance-scheduler:latest
