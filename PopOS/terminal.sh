echo "============================= INSTALL KITTY TERMINAL =========================="
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir -p ~/.local/bin/
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
# Set kitty as default terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator ~/.local/kitty.app/bin/kitty 50

gh repo clone dexpota/kitty-themes ~/.config/kitty/kitty-themes
ln -s ~/.config/kitty/kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf

# add terminal info for root user
sudo ln -s $HOME/.local/kitty.app/share/terminfo /root/.terminfo

echo "============================= INSTALL ZSH =========================="
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


curl -fsSL https://starship.rs/install.sh | bash

# Colorls
# sudo gem install colorls

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "============================= INSTALL NEOVIM ============================="
# Install neo vim
sudo apt install -y neovim
sudo apt-get install fonts-powerline

# echo "============================= INSTALL SPACEVIM ============================="
# # Install SpaceVim
# curl -sLf https://spacevim.org/install.sh | bash
# sudo apt-get install exuberant-ctags

echo "============================= TERMINAL ARE SEX ============================="
# Tool download youtube
# pip3 install --user mps-youtube
# Tool view docker
# npm install -g dockly
# Tool huong dan coding
pip install howdoi
# Tool to mau 7 sac cau vong
sudo snap install lolcat
# Like postman
sudo apt install -y httpie
# Huong dan su dung tool
npm install -g tldr
# Search google bang comamnd line
# sudo snap install googler

sudo apt install exa #modern ls
snap install bashtop

echo "============================= INSTALL GITUI ============================="
brew install gitui

chsh -s $(which zsh)

# echo "============================= INSTALL FISH SHELL =========================="
# sudo apt-add-repository -y ppa:fish-shell/release-3
# sudo apt update
# sudo apt install -y fish
# sudo apt upgrade -y
# sudo apt autoremove -y

# curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# curl -fsSL https://starship.rs/install.sh | bash
# chsh -s `which fish`

# fisher install danhper/fish-ssh-agent
# fisher install jorgebucaran/nvm.fish
# nvm install lts