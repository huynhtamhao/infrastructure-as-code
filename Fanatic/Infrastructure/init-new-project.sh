create_bk_logs_directory_be(){
    mkdir backend/$1/backup
    mkdir backend/$1/logs
    touch backend/$1/backup/.keep

    echo -n > backend/$1/before-deploy.sh "#!/bin/bash
sudo docker-compose stop
sudo mv *.jar backup/\$(date +%Y-%m-%d-%H-%M-%S).jar"

    echo -n > backend/$1/deploy.sh "#!/bin/bash
sudo docker-compose start"

}

create_bk_logs_directory_fe(){
    mkdir frontend/$1/backup
    touch frontend/$1/backup/.keep
    cp nginx.conf frontend/$1/

    echo -n > frontend/$1/before-deploy.sh "#!/bin/bash
sudo docker-compose stop
sudo mv dist backup/dist_$(date +%Y-%m-%d-%H-%M-%S)"

    echo -n > frontend/$1/deploy.sh "#!/bin/bash
sudo docker-compose start"
}

create_bk_logs_directory(){
    create_bk_logs_directory_be $1
    create_bk_logs_directory_fe $1
}
echo $1
echo $2

if ["$2" = "backend"]; then
    echo "Create new project just for BackEnd"
    create_bk_logs_directory_be $1
elif ["$2" = "frontend"]; then
    echo "Create new project just for FrontEnd"
    create_bk_logs_directory_fe $1
else
    echo "Create new project for both BackEnd and FrontEnd"
    create_bk_logs_directory $1
fi

# create_bk_logs_directory 01_user
# create_bk_logs_directory 02_material
# create_bk_logs_directory 03_product
# create_bk_logs_directory 04_procurement
# create_bk_logs_directory 05_maintenance
# create_bk_logs_directory 06_productdata
# create_bk_logs_directory 07_datawarehouse
# create_bk_logs_directory admin
# create_bk_logs_directory config
# create_bk_logs_directory discovery
# create_bk_logs_directory fanaman
# create_bk_logs_directory gateway
# create_bk_logs_directory master
