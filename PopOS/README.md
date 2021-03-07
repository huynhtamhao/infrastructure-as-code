# README

## Before run script install

### Install Common some tools

**Install Cargo (Rust)**

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

**Install Brew**

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
```

**Install pip**

```bash
sudo apt install python3-pip
```

**Clone Pop OS's automation installation tools and config**

```bash
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt install gh

gh auth login

cd Documents
gh repo clone huynhtamhao/infrastructure-as-code IaC
```

**Install some other tools**

- Install Chrome

- Install Gnome extensions [EXTENSIONS-GNOME](https://extensions.gnome.org/) => Install Dash to Dock

- Check version of NodeJS -=> Edit in ./Fish/config.fish

## Follow this guide

[POP-OS-INSTALLATION-GUIDE](https://www.notion.so/huynhtamhao/POP-OS-INSTALLATION-GUIDE-bde39e5fd6184937bd91348e59aa2b6b)

```bash
# Run following command to install needed tools and software
sh init.sh
# After reboot the compute, open vim by using command
nvim
# Run the following command to config VIM and Fish
sh ./copy-config.sh
```

Sử dụng MainMenu để  edit tham chiếu đến /usr/share/icons/Papirus/96x96/
