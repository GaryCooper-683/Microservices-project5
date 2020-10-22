#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=docker.io/gcooper683/prediction:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath prediction-pod

# Step 3:
kubectl get pods

# Step 4:
kubectl port-forward pods/prediction-pod-794c8ff7b4-mbhz7   8000:80

