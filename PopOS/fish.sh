echo "============================= INSTALL FISH SHELL =========================="
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
sudo apt upgrade -y
sudo apt autoremove -y

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
curl -fsSL https://starship.rs/install.sh | bash
chsh -s `which fish`

# fisher install danhper/fish-ssh-agent
# fisher install jorgebucaran/nvm.fish
# nvm install lts