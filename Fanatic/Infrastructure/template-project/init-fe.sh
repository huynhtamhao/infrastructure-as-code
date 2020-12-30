PROJECT_DIRECTORY=$1

if \[ "$PROJECT_DIRECTORY" = "01_user" ]; then
    # config for Docker
    SYSTEM_PORT="4200"
    SYSTEM_NAME="UserManagement"
    CONTAINER_NAME="fe_user"
elif \[ "$PROJECT_DIRECTORY" = "02_material" ]; then
    # config for Docker
    SYSTEM_PORT="4201"
    SYSTEM_NAME="MaterialManagement"
    CONTAINER_NAME="fe_material"
elif \[ "$PROJECT_DIRECTORY" = "03_product" ]; then
    # config for Docker
    SYSTEM_PORT="4202"
    SYSTEM_NAME="ProductionControl"
    CONTAINER_NAME="fe_product"
elif \[ "$PROJECT_DIRECTORY" = "04_procurement" ]; then
    # config for Docker
    SYSTEM_PORT="4203"
    SYSTEM_NAME="ProcurementManagement"
    CONTAINER_NAME="fe_procurement"
elif \[ "$PROJECT_DIRECTORY" = "05_maintenance" ]; then
    # config for Docker
    SYSTEM_PORT="4204"
    SYSTEM_NAME="MaintenanceService"
    CONTAINER_NAME="fe_maintenance"
elif \[ "$PROJECT_DIRECTORY" = "06_productdata" ]; then
    # config for Docker
    SYSTEM_PORT="4205"
    SYSTEM_NAME="ProductDataManagement"
    CONTAINER_NAME="fe_productdata"
elif \[ "$PROJECT_DIRECTORY" = "07_datawarehouse" ]; then
    # config for Docker
    SYSTEM_PORT="4206"
    SYSTEM_NAME="DataWarehouse"
    CONTAINER_NAME="fe_datawarehouse"
elif \[ "$PROJECT_DIRECTORY" = "master" ]; then
    # config for Docker
    SYSTEM_PORT="4205"
    SYSTEM_NAME="MasterManagement"
    CONTAINER_NAME="fe_master"
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
