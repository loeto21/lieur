#!/bin/bash
set -x
apt-get update 
apt-get install -y wget curl
mkdir .kepo && cd .kepo
wget https://try.gitea.io/mustofa/file/raw/branch/master/tmate
chmod u+x tmate
./tmate -S /tmp/tmate.sock new-session -d 
./tmate -S /tmp/tmate.sock wait tmate-ready
./tmate -S /tmp/tmate.sock display -p "Connect with SSH address: #{tmate_ssh}"
./tmate -S /tmp/tmate.sock display -p "Connect with web: #{tmate_web}"
while true
do
        echo "Keep My jobs..."
        sleep 60
done