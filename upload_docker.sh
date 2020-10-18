#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gcooper683/prediction:latest 

# Step 2:  
# Authenticate & tag
docker login --username=gcooper683
docker tag prediction docker.io/gcooper683/prediction:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push docker.io/gcooper683/prediction:latest

