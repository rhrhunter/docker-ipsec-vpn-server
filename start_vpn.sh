#!/usr/bin/env bash

# spawn the server
docker run --name ipsec-vpn-server \
       --env-file ./vpn.env.example \
       --restart=always \
       -p 500:500/udp \
       -p 4500:4500/udp \
       -d --privileged \
       hwdsl2/ipsec-vpn-server

sudo ufw allow 500/udp
sudo ufw allow 4500/udp

