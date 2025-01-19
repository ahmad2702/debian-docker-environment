#!/bin/bash

mkdir ./nextcloud
cd ./nextcloud

# Path to the .env file
COMPOSE_FILE="docker-compose.yml"

wget -O $COMPOSE_FILE https://github.com/nextcloud/all-in-one/raw/refs/heads/main/compose.yaml

# Check if the .env file exists
if [[ ! -f "$COMPOSE_FILE" ]]; then
    echo "The file $COMPOSE_FILE was not found."
    exit 1
fi

docker compose up -d