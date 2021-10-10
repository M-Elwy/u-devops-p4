#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="elwy/ml"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment elwy-ml --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/elwy-ml --type="NodePort" --port=5001 --target-port=8080
