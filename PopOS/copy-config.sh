#!/bin/sh
mkdir -p ~/.SpaceVim.d
sudo cp ./SpaceVim/init.toml ~/.SpaceVim.d/

sudo cp ./Fish/config.fish ~/.config/fish/
sudo cp ./Fish/docker.fish ~/.config/fish/conf.d/
sudo cp ./Fish/wellcome.fish ~/.config/fish/conf.d/

git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
ln -s ~/.config/kitty/kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf
sudo cp .Kitty/kitty.conf ~/.config/kitty/

# sudo cp ./Fish/fortune.fish ~/.config/fish/conf.d/

# sudo mkdir -p  $HOME/.config/alacritty/ && sudo cp Alacritty/alacritty.yml $HOME/.config/alacritty/
