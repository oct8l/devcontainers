#!/bin/bash

devcontainer build --workspace-folder ./dind-with-node --image-name oct8l/dind-with-node:latest

docker push oct8l/dind-with-node:latest
