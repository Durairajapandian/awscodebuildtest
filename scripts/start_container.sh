#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 9677778749/9677778749

# Run the Docker image as a container
docker run -d -p 5000:5000 9677778749/9677778749
