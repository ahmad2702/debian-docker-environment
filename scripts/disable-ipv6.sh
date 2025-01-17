#!/bin/bash

echo "Disabling IPv6..."
{
    echo "net.ipv6.conf.all.disable_ipv6 = 1"
    echo "net.ipv6.conf.default.disable_ipv6 = 1"
    echo "net.ipv6.conf.lo.disable_ipv6 = 1"
} >> /etc/sysctl.conf

# Änderungen anwenden
echo "Applying sysctl-settings..."
sysctl -p

reboot