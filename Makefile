include golang.mk

PKG = github.com/Clever/$(APP_NAME)

.PHONY: all test build run
SHELL := /bin/bash

all: test build

test: $(PKGS) lint

build:
	echo "TODO build app"

run: build
	echo "TODO run app"

install_deps:
	go mod tidy
	go mod vendor

lint: 
	go fmt ./...
	go vet ./...
	golint -set_exit_status ./...
