#!/bin/bash

mkdir ./tomcat-file-server
cd ./tomcat-file-server

COMPOSE_FILE="docker-compose.yml"
wget -O $COMPOSE_FILE https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/tomcat-file-server/docker-compose.yml
if [[ ! -f "$COMPOSE_FILE" ]]; then
    echo "The file $COMPOSE_FILE was not found."
    exit 1
fi

mkdir ./config
CONFIG_FILE="./config/web.xml"
wget -O $CONFIG_FILE https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/tomcat-file-server/config/web.xml
if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "The file $CONFIG_FILE was not found."
    exit 1
fi

mkdir ./files
#touch ./files/nothing.txt

docker compose up -d