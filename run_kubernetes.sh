#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath= zypher9/project4
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment project4 --image=zypher9/project4:latest
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/project4 8000:80
