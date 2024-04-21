#!/bin/bash

# Prompt for GitHub registry URL
echo "Using GitHub Container Registry at ghcr.io"
registry_url="ghcr.io"

# Prompt for GitHub username
read -p "Enter your GitHub username: " username

# Prompt for token (GitHub Personal Access Token)
read -s -p "Enter your GitHub Personal Access Token: " token

echo ""
echo ""

# Authenticate to the GitHub container registry
if docker login "$registry_url" -u "$username" --password-stdin <<< "$token"; then
    echo ""
else
    echo ""
    exit 1
fi
