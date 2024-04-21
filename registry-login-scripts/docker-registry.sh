#!/bin/bash

# Prompt for username
read -p "Enter your Docker Hub username: " username

# Prompt for token (or password)
read -s -p "Enter your Docker Hub token: " token

echo ""
echo ""

# Authenticate to Docker Hub
if docker login -u "$username" --password-stdin <<< "$token"; then
    echo ""
else
    echo ""
    exit 1
fi
