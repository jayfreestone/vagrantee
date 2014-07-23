#!/usr/bin/env bash
apt-get install -y curl
wget -qO ee rt.cx/ee && sudo bash ee 
source /etc/bash_completion.d/ee
ee stack install
cat ~/.my.cnf
