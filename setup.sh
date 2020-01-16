#!/bin/bash

echo 'Updating packages...'
sudo apt update -y

echo 'Upgrading packages...'
sudo apt full-upgrade -y

echo 'Installing packages...'
sudo apt install apt-transport-https ca-certificates curl software-properties-common build-essential emacs -y

echo 'Installing Docker...'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt install docker-ce docker-compose
sudo systemctl enable docker

echo 'Installing docker-elk...'
git clone https://github.com/deviantony/docker-elk.git
cd docker-elk
sudo docker-compose up -d

echo 'Finished!'
