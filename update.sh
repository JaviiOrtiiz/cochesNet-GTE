#!/bin/bash

# Navigate to the directory containing your repository
cd /home/orangepi/cochesNet-gte

# Pull the latest changes from the Git repository
git pull

# Stop and remove the old container if it exists
if [ "$(docker ps -q -f name=cochesnet-gte)" ]; then
    docker stop cochesnet-gte
    docker rm cochesnet-gte
fi

# Remove the old Docker image if it exists
if [ "$(docker images -q cochesnet-gte)" ]; then
    docker rmi cochesnet-gte
fi

# Build the Docker image
docker build -t cochesnet-gte .

# Run the run.sh script
sh run.sh
