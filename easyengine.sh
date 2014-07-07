#!/usr/bin/env bash
apt-get install -y curl
curl -sL rt.cx/ee | sudo bash
source /etc/bash_completion.d/ee
ee system install
cat ~/.my.cnf
