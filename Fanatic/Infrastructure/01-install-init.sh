#!/bin/sh
# update and upgrade
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

echo "============================= INSTALL NEOVIM ============================="
# Install neo vim
sudo apt install -y neovim
# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

echo "============================= INSTALL DOCKER ============================="
# Install docker (Lasted Version)
sudo apt update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install with lasted version
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "============================= INSTALL DOCKER-COMPOSE ============================="
# Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker fanatic
