#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t prediction .

# Step 2: 
docker images

# Step 3: 
docker run -d --name prediction -p 8000:80 prediction:latest
