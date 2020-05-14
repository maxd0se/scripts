#!/bin/bash

echo "updating packages"
sudo apt update
echo "upgrading packages"
sudo apt full-upgrade -y
echo "installing prerequisite packages"
sudo apt install git python3-pip build-essential software-properties-common -y
echo "installing Empire"
git clone https://github.com/BC-SECURITY/Empire.git
cd Empire
echo | sudo ./setup/install.sh
echo "starting Empire"
sudo ./empire -rest
dig +short myip.opendns.com @resolver1.opendns.com
echo "empire is running on port 1337"
