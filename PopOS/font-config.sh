#!/bin/sh
# Install JetbrainsMono Font for Visual Code
# wget https://download.jetbrains.com/fonts/JetBrainsMono-2.221.zip
# unzip JetBrainsMono-2.221.zip -d ./JetBrainsMono
# cp JetBrainsMono/fonts/ttf/*.ttf ~/usr/share/fonts/

wget -O Fira_Code.zip https://fonts.google.com/download?family=Fira\%20Code
sudo unzip Fira_Code.zip -d ./FiraCode
sudo cp FiraCode-VariableFont_wght.ttf ~/usr/share/fonts/
sudo cp FiraCode/static/ttf/*.ttf ~/usr/share/fonts/

#wget https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
#unzip Fira_Code_v5.2.zip -d ./FiraCode
#cp FiraCode/ttf/*.ttf ~/.local/share/fonts/

fc-cache -f -v
