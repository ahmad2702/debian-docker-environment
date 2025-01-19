#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install net-tools ca-certificates curl -y

# optional: set your timezone
timedatectl set-timezone Europe/Amsterdam