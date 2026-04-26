.PHONY: run build test lint fmt
SVC=field-service
run: ; ./mvnw spring-boot:run
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; ./mvnw test
lint: ; ./mvnw -q checkstyle:check
fmt: ; ./mvnw -q spotless:apply
