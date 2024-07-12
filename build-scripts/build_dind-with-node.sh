#!/bin/bash

devcontainer build --workspace-folder ./dind-with-node --image-name oct8l/devcontainers:amd64_dind-latest &
#devcontainer build --workspace-folder ./dind-with-node --platform linux/arm64 --image-name oct8l/devcontainers:arm64_dind-latest &

## Wait for the builds to finish
#wait

docker push oct8l/devcontainers:amd64_dind-latest &
#docker push oct8l/devcontainers:arm64_dind-latest &

## Wait until both images are pushed
#wait
#
## Create and push our custom manifest
#docker manifest create oct8l/devcontainers:dind-latest && \
#    --amend oct8l/devcontainers:arm64_dind-latest  && \
#    --amend oct8l/devcontainers:amd64_dind-latest
#docker manifest push oct8l/devcontainers:dind-latest
