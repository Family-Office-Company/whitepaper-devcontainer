.DEFAULT_GOAL := build

.PHONY: help
help: ## display command overview
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[35m%-30s\033[0m %s\n", $$1, $$2}'

build: ## build image
	DOCKER_BUILDKIT=1  docker build -t ghcr.io/family-office-company/whitepaper-devcontainer:latest .
