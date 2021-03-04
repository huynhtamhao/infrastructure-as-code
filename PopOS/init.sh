#!/bin/sh
# update and upgrade
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL COMMON ============================="
sudo apt-get --purge remove -y libreoffice*
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y

echo "============================= INSTALL HUGO ============================="
brew install hugo

echo "============================= INSTALL GITUI ============================="
cargo install gitui

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL BRAVE BROWSER =========================="
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

echo "============================= INSTALL PAPARIUS ICON ============================="
# Install Paparius Icon
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update
sudo apt install -y papirus-icon-theme

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y


echo "============================= INSTALL TWEAK ============================="
# Install Tweak Tool
sudo add-apt-repository -y universe
sudo apt update
sudo apt install -y gnome-tweak-tool

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL SNAP ============================="
# Install Snap
sudo apt update
sudo apt install -y snapd
echo "============================= INSTALL POSTMAN ============================="
sudo snap install postman
echo "============================= INSTALL MOOKOON ============================="
sudo snap install mockoon
echo "============================= INSTALL REMINA ============================="
sudo snap install remmina
echo "============================= INSTALL TELEGRAM ============================="
sudo snap install telegram-desktop

# echo "============================= INSTALL TELEGRAM ============================="
# sudo snap install beekeeper-studio

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

sudo usermod -aG docker hao

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL VS CODE ============================="
# Install visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders
sh font-config.sh

echo "============================= INSTALL NODEJS ============================="
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y


echo "============================= INSTALL JAVA ============================="
# Install Java
# Create folder JDK
sudo mkdir /usr/lib/jvm
# Download file
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u275-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz
sudo tar -xvzf ./OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz && sudo mv jdk8u275-b01 /usr/lib/jvm/openjdk-8
wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1+1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
sudo tar -xvzf ./OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz && sudo mv jdk-11.0.9.1+1 /usr/lib/jvm/openjdk-11


echo "============================= INSTALL IBUS =========================="
sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo
sudo apt-get install -y ibus-bamboo
ibus restart

# Install Fish Shell
sh ./ fish.sh

# INstall tool for dev OPS
sh ./devops.sh

# Copy config
sh ./copy-config.sh

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# echo "============================= INSTALL DISCORD =========================="
# wget wget -O discord-0.0.1.deb https://discord.com/api/download?platform=linux&format=deb
# sudo dpkg -i discord-0.0.1.deb

echo "============================= INSTALL GITKRAKEN ============================="
# Install Git Kraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

# Install marktext, etcher, kdiff
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

reboot
