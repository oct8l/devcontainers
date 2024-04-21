#!/bin/bash

# Prompt for GitLab registry URL
read -p "Enter your GitLab registry URL (will use registry.gitlab.com if not defined): " registry_url

# Set default if no input is provided
if [ -z "$registry_url" ]; then
    registry_url="registry.gitlab.com"
fi

# Prompt for username
read -p "Enter your username: " username

# Prompt for token
read -s -p "Enter your token: " token

echo ""
echo ""

# Authenticate to the GitLab registry
if docker login "$registry_url" -u "$username" --password-stdin <<< "$token"; then
    echo ""
else
    echo ""
    exit 1
fi

