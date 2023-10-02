#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

IMAGE_TAG="udacity-ml"
# Step 1:
# Build image and add a descriptive tag
docker build -t $IMAGE_TAG .

# Step 2: 
# List docker images
docker images $IMAGE_TAG

# Step 3: 
# Run flask app
docker run -p 8000:80 $IMAGE_TAG
