echo "============================= INSTALL KITTY TERMINAL =========================="
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir -p ~/.local/bin/
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop

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

echo "============================= INSTALL NEOVIM ============================="
# Install neo vim
sudo apt install -y neovim
echo "============================= INSTALL SPACEVIM ============================="
# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash
sudo apt-get install exuberant-ctags