#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="haqle/udacity-ml"

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run udacity-ml --image="$dockerpath" --port=80

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward pod/udacity-ml 8000:80
