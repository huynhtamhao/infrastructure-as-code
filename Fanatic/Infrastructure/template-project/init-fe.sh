PROJECT_DIRECTORY=$1

if \[ "$PROJECT_DIRECTORY" = "01_user" ]; then
    # config for Docker
    BE_SYSTEM_PORT="8082"
    BE_SYSTEM_NAME="usermanagement"
    BE_CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "02_material" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "03_product" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "04_procurement" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "05_maintenance" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "06_productdata" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "07_datawarehouse" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
elif \[ "$PROJECT_DIRECTORY" = "master" ]; then
    # config for Docker
    SYSTEM_PORT="8082"
    SYSTEM_NAME="usermanagement"
    CONTAINER_NAME="be_user"
else
    echo "Do Not Create"
    return
fi

echo "Project: $PROJECT_DIRECTORY and server environment: $2"

sed -e "s/\$SYSTEM_NAME/$SYSTEM_NAME/" frontend/Dockerfile > Dockerfile-changed
mv Dockerfile-changed ../frontend/$PROJECT_DIRECTORY/Dockerfile
echo "Create Dockerfile Susccess"

sed -e "s/\$SYSTEM_PORT/$SYSTEM_PORT/g" \
    -e "s/\$SYSTEM_NAME/$SYSTEM_NAME/" \
    -e "s/\$CONTAINER_NAME/$CONTAINER_NAME/" \
    frontend/docker-compose.yml > docker-compose-changed.yml
mv docker-compose-changed.yml ../frontend/$PROJECT_DIRECTORY/docker-compose.yml
echo "Create Docker Compose Susccess"
