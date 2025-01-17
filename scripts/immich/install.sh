#!/bin/bash

# Get the current timezone of the system
CURRENT_TZ=$(timedatectl | sed -n 's/^\s*Time zone: \(.*\) (.*/\1/p')

if [[ -z "$CURRENT_TZ" ]]; then
    echo "Could not determine the current timezone. Ensure that /etc/timezone exists."
    exit 1
fi

mkdir ./immich-app
cd ./immich-app

# Path to the .env file
ENV_FILE=".env"

wget -O docker-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
wget -O $ENV_FILE https://github.com/immich-app/immich/releases/latest/download/example.env

wget -O upgrade.sh https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/immich/upgrade.sh
chmod +x upgrade.sh

# Check if the .env file exists
if [[ ! -f "$ENV_FILE" ]]; then
    echo "The file $ENV_FILE was not found."
    exit 1
fi

# Uncomment the line "# TZ=Etc/UTC" and set the current timezone
sed -i "s|^# TZ=Etc/UTC|TZ=$CURRENT_TZ|" "$ENV_FILE"

docker compose up -d