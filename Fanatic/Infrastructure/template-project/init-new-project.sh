PROJECT_DIRECTORY=$1
FE_BE_ALL=$2
ENVIRONMENT=$3

create_bk_logs_directory_be(){
    mkdir -p ../backend/$PROJECT_DIRECTORY
    mkdir ../backend/$PROJECT_DIRECTORY/backup
    mkdir ../backend/$PROJECT_DIRECTORY/logs
    touch ../backend/$PROJECT_DIRECTORY/backup/.keep

    echo -n > ../backend/$PROJECT_DIRECTORY/before-deploy.sh "#!/bin/bash
sudo docker-compose stop
sudo mv *.jar backup/\$(date +%Y-%m-%d-%H-%M-%S).jar"

    echo -n > ../backend/$PROJECT_DIRECTORY/deploy.sh "#!/bin/bash
sudo docker-compose start"

    sh init-be.sh $PROJECT_DIRECTORY $ENVIRONMENT
}

create_bk_logs_directory_fe(){
    mkdir -p ../frontend/$PROJECT_DIRECTORY
    mkdir ../frontend/$PROJECT_DIRECTORY/backup
    touch ../frontend/$PROJECT_DIRECTORY/backup/.keep
    cp nginx.conf ../frontend/$PROJECT_DIRECTORY/

    echo -n > ../frontend/$PROJECT_DIRECTORY/before-deploy.sh "#!/bin/bash
sudo docker-compose stop
sudo mv dist backup/dist_$(date +%Y-%m-%d-%H-%M-%S)"

    echo -n > ../frontend/$PROJECT_DIRECTORY/deploy.sh "#!/bin/bash
sudo docker-compose start"
}

create_bk_logs_directory(){
    create_bk_logs_directory_be $PROJECT_DIRECTORY
    create_bk_logs_directory_fe $PROJECT_DIRECTORY
}

if \[ "$FE_BE_ALL" = "backend" ]; then
    echo "Create new project just for BackEnd"
    create_bk_logs_directory_be $PROJECT_DIRECTORY
elif \[ "$FE_BE_ALL" = "frontend" ]; then
    echo "Create new project just for FrontEnd"
    create_bk_logs_directory_fe $PROJECT_DIRECTORY
elif \[ "$FE_BE_ALL" = "all" ]; then
    echo "Create new project for both BackEnd and FrontEnd"
    create_bk_logs_directory $PROJECT_DIRECTORY
else
    echo "Please input 'backend', 'frontend', 'all' for creating project."
    return
fi
