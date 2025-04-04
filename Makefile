SHELL := /bin/bash
PROJECT_NAME = go-clean-architecture-template

.PHONY: setup
setup:
	@if [[ ! -f ./setup.sh ]]; then \
		echo "Setup is already complete. You can delete this setup make target."; \
	else \
		chmod 755 ./setup.sh && ./setup.sh && rm ./setup.sh; \
	fi

.PHONY: build
build:
	mkdir -p ./dist
	go build -o ./dist/$(PROJECT_NAME) ./cmd

.PHONY: generate-mock
generate-mock:
	mockery