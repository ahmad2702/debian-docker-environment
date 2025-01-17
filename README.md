# Prerequisites

```
apt-get update -y
apt-get upgrade -y
apt-get install net-tools ca-certificates curl -y
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