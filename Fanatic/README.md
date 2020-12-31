# Fanatic Guide

## How to deploy

```bash
# Preparation before deployment
sysctl -w vm.max_map_count=262144
sudo sysctl -w fs.file-max=65536
ulimit -n 65536
ulimit -u 4096

# Deploy elk stack
sudo docker build . --tag fanatic-elk
sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name fanatic-elk fanatic-elk

# Install Swagger Editor
docker pull swaggerapi/swagger-editor
sudo docker pull swaggerapi/swagger-editor
sudo docker run -d -p 18082:8080 swaggerapi/swagger-editor

# Install Portainer
sudo docker run -d -p 19093:9000 -p 18083:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```

## Some useful command

```bash
sudo docker system prune
sudo docker volume prune
sudo docker network prune
```

## This folder contain all IaC about Fanatic Computers

- Preparation :

- Terraform : Config Resource for Server

- Chia structure thành:

  - Cấu hình máy: Resource như thề nào, CPU, Harkdisk, RAM
  - Cấu hình [terraform provider cho KVM](https://dev.to/ruanbekker/terraform-with-kvm-2d9e)
  - Cấu hình sẵn cho cloud (để dành dự định cho tương lai)

- Ansible   : Install All needed Software & tools

- Cài đặt sẵn:

  - Docker, docker-compose
  - Config private network, global IP
  - Download structure directory for deployment
