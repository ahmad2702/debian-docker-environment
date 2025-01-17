# Prerequisites

```
apt-get update -y
apt-get upgrade -y
apt-get install net-tools ca-certificates curl -y

# optional: set your timezone
timedatectl set-timezone Europe/Amsterdam
```

# Setups

## Disable ipv6

```
curl -sSL https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/disable-ipv6.sh | bash
```

## Install Docker

```
curl -sSL https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/docker-install.sh | bash
```

## Install Portainer

```
curl -sSL https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/portainer-install.sh | bash
```

## Install Immich

```
curl -sSL https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/immich/install.sh | bash
```

## Install Static File Server

```
curl -sSL https://github.com/ahmad2702/debian-docker-environment/raw/refs/heads/main/scripts/tomcat-file-server/install.sh | bash
```