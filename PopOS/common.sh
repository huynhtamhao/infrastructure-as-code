echo "============================= INSTALL COMMON ============================="
sudo apt --purge remove -y libreoffice*
# sudo apt --purge remove -y firefox*
sudo apt update
sudo apt autoremove -y

sudo add-apt-repository -y universe
sudo apt update

sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y kdiff3
sudo apt install -y gnome-tweak-tool
sudo apt install -y alacarte
sudo apt install -y unzip
sudo apt install -y unrar
sudo apt install -y fortune-mod

echo "============================= INSTALL PAPARIUS ICON ============================="
# Install Paparius Icon
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update
sudo apt install -y papirus-icon-theme

echo "============================= INSTALL IBUS =========================="
sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo
sudo apt update
sudo apt-get install -y ibus-bamboo
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['xkb:us::eng', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

sudo apt update
sudo apt autoremove
