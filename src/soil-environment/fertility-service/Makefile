.PHONY: run build test
SVC=fertility-service
run: ; uvicorn app.main:app --reload
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; pytest -q
