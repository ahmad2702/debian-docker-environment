#!/bin/bash

mkdir ./nginx-proxy-manager
cd ./nginx-proxy-manager

# Path to the .env file
COMPOSE_FILE="docker-compose.yml"
wget -O $COMPOSE_FILE https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/nginx-proxy-manager/docker-compose.yml
if [[ ! -f "$COMPOSE_FILE" ]]; then
    echo "The file $COMPOSE_FILE was not found."
    exit 1
fi

CONFIG_FILE="config.json"
wget -O $CONFIG_FILE https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/nginx-proxy-manager/config.json
if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "The file $CONFIG_FILE was not found."
    exit 1
fi

docker compose up -d