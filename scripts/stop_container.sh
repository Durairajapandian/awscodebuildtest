#!/bin/bash
set -e

# Stop the running container (if any)
echo "Hi"

# Stop the running container (if any)
containerid=`docker ps | awk 'NR==2{print $1}'`
docker rm -f "$containerid"
