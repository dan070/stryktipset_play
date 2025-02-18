.PHONY: build run jupyter help

build:
	docker build -t my-jupyter-env .

run:
	docker run -p 8888:8888 -v $(shell pwd):/app my-jupyter-env

jupyter: build run

help:
	@echo "Available commands:"
	@echo "  make build    - Build the Docker image"
	@echo "  make run      - Run the Docker container"
	@echo "  make jupyter  - Build and run in one command"