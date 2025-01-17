#!/bin/bash

docker compose down
docker volume prune -f -a

docker compose pull
docker compose up -d