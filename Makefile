NAME:=mini-media-server
VERSION:=latest
PORT:=8080
TAG=${NAME}:${VERSION}

.PHONY: build
build:
	docker build -t "${TAG}" .

.PHONY: run
run: build
	docker run --rm -p 80:${PORT} "${TAG}"
