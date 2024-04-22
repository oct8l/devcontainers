#!/bin/bash

devcontainer build --workspace-folder ./python-selenium --image-name oct8l/devcontainers:amd64_python-selenium-latest &
#devcontainer build --workspace-folder ./python-selenium --platform linux/arm64 --image-name oct8l/devcontainers:arm64_python-selenium-latest &

# Wait for the builds to finish
wait

docker push oct8l/devcontainers:amd64_python-selenium-latest &
#docker push oct8l/devcontainers:arm64_python-selenium-latest &

# Wait until both images are pushed
wait

# Create and push our custom manifest
docker manifest create oct8l/devcontainers:python-selenium-latest && \
#    --amend oct8l/devcontainers:arm64_python-selenium-latest && \
    --amend oct8l/devcontainers:amd64_python-selenium-latest
docker manifest push oct8l/devcontainers:python-selenium-latest
