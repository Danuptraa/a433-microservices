#!/bin/bash
# Build the Docker image
echo "Building the Docker image..."
docker build -t karsajobs-ui:latest .

echo "List image"
docker images

docker image tag karsajobs-ui:latest ghcr.io/danuptraa/karsajobs-ui:latest

echo $PAT | docker login ghcr.io --username danuptraa --password-stdin

echo "Pushing to github package"
docker push ghcr.io/danuptraa/karsajobs-ui:latest