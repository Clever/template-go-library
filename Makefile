include golang.mk

PKGS := $(shell go list ./... | grep -v /vendor/)

$(eval $(call golang-version-check,1.24))

.PHONY: all install_deps test lint generate
SHELL := /bin/bash

all: install_deps test generate

test: $(PKGS) lint
$(PKGS): generate golang-test-all-strict-cover-deps golang-setup-coverage
	$(call golang-test-all-strict-cover,$@)

install_deps:
	go mod tidy
	go mod vendor

generate:
	go generate ./...