#!/usr/bin/env bash

# shutdown the server
docker kill ipsec-vpn-server

sudo ufw deny 500/udp
sudo ufw deny 4500/udp

