#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 9677778749/9677778749

# Check if any containers are running
if [ $(docker ps -q | wc -l) -gt 0 ]; then
    # Force delete all running containers
    docker rm -f $(docker ps -aq)
else
    echo "No containers running"
fi

# Run the Docker image as a container
docker run -d -p 5000:5000 9677778749/9677778749
