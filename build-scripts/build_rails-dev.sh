#!/bin/bash

# Start the builds in the background
devcontainer build --workspace-folder ./rails-dev --image-name oct8l/devcontainers:amd64_rails-dev-latest &
devcontainer build --workspace-folder ./rails-dev --platform linux/arm64 --image-name oct8l/devcontainers:arm64_rails-dev-latest &

# Wait for the builds to finish
wait

# Push the images in the background
docker push oct8l/devcontainers:amd64_rails-dev-latest &
docker push oct8l/devcontainers:arm64_rails-dev-latest &

# Wait until both images are pushed
wait

# Create and push our custom manifest
docker manifest create oct8l/devcontainers:rails-dev-latest \
    --amend oct8l/devcontainers:arm64_rails-dev-latest \
    --amend oct8l/devcontainers:amd64_rails-dev-latest
docker manifest push oct8l/devcontainers:rails-dev-latest
