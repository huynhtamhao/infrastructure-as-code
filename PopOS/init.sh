#!/bin/sh
pip3 -V
brew -v
node -v
npm -v

# echo "============================= INSTALL BRAVE BROWSER =========================="
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# echo "============================= INSTALL VS CODE ============================="
# Install visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders

#sudo flatpak install io.dbeaver.DBeaverCommunity

# Install common tools
sh ./common.sh
# Install tool for dev OPS
# sh ./devops.sh
# Install programming environment (Java, NodeJs)
sh ./environment.sh
# Font Configuration
sh ./font-config.sh
# Install Snap Tools
sh ./snap.sh
# Install Fish Shell
sh ./terminal.sh

# Copy configuration
# sh ./copy-config.sh

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

chsh -s $(which zsh)

# echo "============================= INSTALL GITKRAKEN ============================="
# # Install Git Kraken
# wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
# sudo dpkg -i gitkraken-amd64.deb

echo "============================= INSTALL MARKTEXT ============================="
sudo wget https://github.com/marktext/marktext/releases/latest/download/marktext-x86_64.AppImage $HOME/Documents/Tools/
sudo chmod a+x $HOME/Documents/Tools/marktext-x86_64.AppImage

# Install marktext, etcher, discord
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

reboot
