# Install vitualbox
sudo apt update
echo "================================================== INSTALL VIRTUAL BOX================================================"
sudo apt install -y virtualbox


# Install Vagrant
echo "================================================== INSTALL VAGRANT =================================================="
wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
sudo dpkg -i vagrant_2.2.14_x86_64.deb
vagrant box add ubuntu/bionic64


echo "================================================== INSTALL TERRAFORM =================================================="
# Install teraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository -y "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install -y terraform


echo "================================================== INSTALL ANSIBLE =================================================="
# Install ansible
sudo apt install -y ansible


echo "================================================== INSTALL KUBENATES =================================================="
# Install kubernates
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2 curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl


echo "================================================== INSTALL MINIKUBE =================================================="
# Mini kube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb


echo "================================================== INSTALL LENS =================================================="
sudo snap install kontena-lens --classic