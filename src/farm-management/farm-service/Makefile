.PHONY: run build test lint fmt
SVC=farm-service
run:
	./mvnw spring-boot:run
build:
	docker build -t farmpulse/$(SVC):dev .
test:
	./mvnw test
lint:
	./mvnw -q checkstyle:check
fmt:
	./mvnw -q spotless:apply
