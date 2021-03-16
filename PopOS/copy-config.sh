#!/bin/sh
#mkdir -p ~/.SpaceVim.d
#sudo cp ./SpaceVim/init.toml ~/.SpaceVim.d/

# sudo mkdir -p  $HOME/.config/alacritty/ && sudo cp Alacritty/alacritty.yml $HOME/.config/alacritty/

#sudo cp ./Fish/config.fish ~/.config/fish/
#sudo cp ./Fish/docker.fish ~/.config/fish/conf.d/
#sudo cp ./Fish/wellcome.fish ~/.config/fish/conf.d/
# sudo cp ./Fish/fortune.fish ~/.config/fish/conf.d/

gh repo clone dexpota/kitty-themes ~/.config/kitty/kitty-themes
ln -s ~/.config/kitty/kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf
sudo cp ./Kitty/kitty.conf ~/.config/kitty/

cp ./.zshrc ~/

# Follow this url to config for linux OS (https://support.google.com/chrome/answer/1649523#linux-crd)
#sudo cp ./ChromeRemoteDesktop/.chrome-remote-desktop-session $HOME/