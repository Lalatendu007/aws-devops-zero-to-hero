#!/bin/bash
set -e

# Stop the running container (if any)
# Get the container ID without headers
container_id=$(sudo docker ps -q | head -n 1)

# Check if container ID is not empty
if [ ! -z "$container_id" ]; then
    # Remove the container
    sudo docker rm -f "$container_id"
else
    echo "No running containers found."
fi