#!/bin/bash
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https -y
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
wget -qO - https://www.mongodb.org/static/pgp/server-3.4.asc | sudo apt-key add -
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
sudo apt-get update
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
sudo apt install openjdk-8-jre-headless -y
sudo apt-get update && sudo apt-get install unifi -y
sudo ufw limit 22/tcp
sudo ufw allow 80,443/tcp
sudo ufw allow 8080,8443/tcp
sudo ufw allow 3478/udp
sudo ufw allow 10001/udp
sudo ufw allow 8880,8843/tcp
sudo ufw allow out 22/tcp
sudo ufw allow out 80,443/tcp
sudo ufw allow out 8080,8443/tcp
sudo ufw allow out 3478/udp
sudo ufw allow out 10001/udp
sudo ufw allow out 8880,8843/tcp
sudo service unifi restart
