.PHONY: run build test
SVC=growth-stage-service
run: ; uvicorn app.main:app --reload
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; pytest -q
