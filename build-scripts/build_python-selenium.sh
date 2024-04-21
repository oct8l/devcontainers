#!/bin/bash

devcontainer build --workspace-folder ./python-selenium --image-name oct8l/devcontainers:python-selenium-latest

docker push oct8l/devcontainers:python-selenium-latest
