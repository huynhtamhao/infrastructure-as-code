#!/bin/sh
# update and upgrade
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL PAPARIUS ICON ============================="
# Install Paparius Icon
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update
sudo apt install -y papirus-icon-theme

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL COMMON ============================="
sudo apt-get --purge remove -y libreoffice*
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo add-apt-repository -y universe
sudo apt update

sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y kdiff3
sudo apt install -y gnome-tweak-tool
sudo apt install -y alacarte

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL IBUS =========================="
sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo
sudo apt-get install -y ibus-bamboo
ibus restart

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL BRAVE BROWSER =========================="
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser


echo "============================= INSTALL HUGO ============================="
brew install hugo

echo "============================= INSTALL GITUI ============================="
cargo install gitui

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

sudo flatpak install io.dbeaver.DBeaverCommunity

# Install tool for dev OPS
sh ./devops.sh
# Install programming environment (Java, NodeJs)
sh ./environment.sh
# Install Fish Shell
sh ./fish.sh
# Font Configuration
sh ./font-config.sh
# Install Snap Tools
sh ./snap.sh
# Install and config VIM
sh ./vim.sh

# Copy configuration
sh ./copy-config.sh

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL GITKRAKEN ============================="
# Install Git Kraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

echo "============================= INSTALL DISCORD =========================="
wget wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord.deb

# Install marktext, etcher, kdiff
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

reboot
