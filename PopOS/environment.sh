echo "============================= INSTALL DOCKER ======================================"
# Install docker (Lasted Version)
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
\



asdjbnasj
asdfasd
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install with lasted version
sudo apt-get dockerupdate
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

echo "============================= INSTALL DOCKER-COMPOSE ============================="
# Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker hao

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL JAVA ========================================"
# Install Java
# Create folder JDK
sudo mkdir -p /usr/lib/jvm
# Download file
#wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u275-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz
#sudo tar -xvzf ./OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz && sudo mv jdk8u275-b01 /usr/lib/jvm/openjdk-8
# wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1+1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
# sudo tar -xvzf ./OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
# sudo mv jdk-11.0.9.1+1 /usr/lib/jvm/openjdk-11

# wget https://download.java.net/java/GA/jdk16.0.1/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.1_linux-x64_bin.tar.gz
# sudo tar -xvzf ./openjdk-16.0.1_linux-x64_bin.tar.gz
# sudo mv jdk-16.0.1 /usr/lib/jvm/openjdk-16

wget https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz
sudo tar -xvzf ./openjdk-11+28_linux-x64_bin.tar.gz
sudo mv jdk-11 /usr/lib/jvm/jdk-11
wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz
sudo tar -xvzf ./openjdk-17_linux-x64_bin.tar.gz
sudo mv jdk-17 /usr/lib/jvm/jdk-17

#wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1+1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
#sudo tar -xvzf ./OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz && sudo mv jdk-11.0.9.1+1 /usr/lib/jvm/openjdk-11

# wget https://download.java.net/java/GA/jdk15.0.2/0d1cfde4252546c6931946de8db48ee2/7/GPL/openjdk-15.0.2_linux-x64_bin.tar.gz
# sudo tar -xvzf ./openjdk-15.0.2_linux-x64_bin.tar.gz
# sudo mv jdk-15.0.2 /usr/lib/jvm/openjdk-15.0.2


# echo "============================= INSTALL NODEJS ============================="
# nvm install --lts
npm install -g @angular/cli

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
