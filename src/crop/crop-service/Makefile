.PHONY: run build test
SVC=crop-service
run: ; ./mvnw spring-boot:run
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; ./mvnw test
