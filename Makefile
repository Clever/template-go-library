include golang.mk

SHELL := /bin/bash

$(eval $(call golang-version-check,1.24))

.PHONY: test generate install_deps tool

test:
	go test -race ./...
	golangci-lint run

generate: tool vendor
	go generate ./...
	go mod tidy

install_deps: vendor

vendor: go.sum go.mod
	go mod vendor

tool: vendor
	go install tool

go.sum:
	go mod tidy
