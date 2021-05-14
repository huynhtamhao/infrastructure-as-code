echo "============================= INSTALL DOCKER ======================================"
# Install docker (Lasted Version)
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install with lasted version
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "============================= INSTALL DOCKER-COMPOSE ============================="
# Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker hao

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "============================= INSTALL JAVA ========================================"
# Install Java
# Create folder JDK
sudo mkdir /usr/lib/jvm
# Download file
#wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u275-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz
#sudo tar -xvzf ./OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz && sudo mv jdk8u275-b01 /usr/lib/jvm/openjdk-8
#wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1+1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
#sudo tar -xvzf ./OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz && sudo mv jdk-11.0.9.1+1 /usr/lib/jvm/openjdk-11
# wget https://download.java.net/java/GA/jdk16/7863447f0ab643c585b9bdebf67c69db/36/GPL/openjdk-16_linux-x64_bin.tar.gz
# sudo tar -xvzf ./openjdk-16_linux-x64_bin.tar.gz
# sudo mv openjdk-16 /usr/lib/jvm/

wget https://download.java.net/java/GA/jdk15.0.2/0d1cfde4252546c6931946de8db48ee2/7/GPL/openjdk-15.0.2_linux-x64_bin.tar.gz
sudo tar -xvzf ./openjdk-15.0.2_linux-x64_bin.tar.gz
sudo mv jdk-15.0.2 /usr/lib/jvm/openjdk-15.0.2


# echo "============================= INSTALL NODEJS ============================="
# nvm install --lts

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
