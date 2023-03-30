#!/bin/bash
echo "server: https://`curl --silent ifconfig.me`:9345" > /tmp/config.yaml
echo "token: `cat /var/lib/rancher/rke2/server/node-token`" >> /tmp/config.yaml
cat /etc/rancher/rke2/config.yaml >> /tmp/config.yaml
