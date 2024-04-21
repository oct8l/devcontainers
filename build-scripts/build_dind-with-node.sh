#!/bin/bash

devcontainer build --workspace-folder ./dind-with-node --image-name oct8l/devcontainers:dind-latest

docker push oct8l/devcontainers:dind-latest
