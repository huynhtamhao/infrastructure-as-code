echo "============================= INSTALL JAVA ============================="
# Install Java
# Create folder JDK
sudo mkdir /usr/lib/jvm
# Download file
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u275-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz
sudo tar -xvzf ./OpenJDK8U-jdk_x64_linux_hotspot_8u275b01.tar.gz && sudo mv jdk8u275-b01 /usr/lib/jvm/openjdk-8
wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1+1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz
sudo tar -xvzf ./OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz && sudo mv jdk-11.0.9.1+1 /usr/lib/jvm/openjdk-11


echo "============================= INSTALL NODEJS ============================="
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y