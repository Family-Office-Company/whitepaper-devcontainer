.DEFAULT_GOAL := build

build:
	DOCKER_BUILDKIT=1 docker build -t familyoffice/whitepaper-devcontainer:latest .
