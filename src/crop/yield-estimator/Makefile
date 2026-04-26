.PHONY: run build test
SVC=yield-estimator
run: ; uvicorn app.main:app --reload
build: ; docker build -t farmpulse/$(SVC):dev .
test: ; pytest -q
