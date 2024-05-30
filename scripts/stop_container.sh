#!/bin/bash

# Check if any containers are running
if [ $(docker ps -q | wc -l) -gt 0 ]; then
    # Stop all running containers
    docker stop $(docker ps -q)
    
    # Move containers to another folder
    for container_id in $(docker ps -a -q); do
        docker inspect --format='{{.Name}}' $container_id | cut -c2- | xargs -I {} docker commit $container_id moved_{}
        docker rm $container_id
    done

    echo "Containers moved successfully."
else
    echo "No containers running."
fi