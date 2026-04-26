.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/cold-chain .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t farmpulse/cold-chain:latest .

docker-run:
	docker run --rm -p 50202:50202 --env-file .env farmpulse/cold-chain:latest
