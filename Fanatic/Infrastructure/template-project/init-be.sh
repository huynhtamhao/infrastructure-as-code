PROJECT_DIRECTORY=$1
BE_SERVER_URL=$2
BE_CONFIG_PORT="8888"
BE_LOGSTASH_PORT="5401"

echo $PROJECT_DIRECTORY

. config/$PROJECT_DIRECTORY.config

sed -e "s/\$BE_SERVER_URL/$BE_SERVER_URL/g" \
    -e "s/\$BE_CONFIG_PORT/$BE_CONFIG_PORT/" \
    -e "s/\$BE_PROJECT_CONFIG_FILE/$BE_PROJECT_CONFIG_FILE/" \
    -e "s/\$BE_LOGSTASH_PORT/$BE_LOGSTASH_PORT/" \
    -e "s/\$BE_LOGSTASH_APPNAME/$BE_LOGSTASH_APPNAME/" \
    backend/bootstrap.yml > bootstrap-changed.yml
mv bootstrap-changed.yml ../backend/$PROJECT_DIRECTORY/bootstrap.yml
echo "Create Bootstrap Susccess"

sed -e "s/\$BE_SYSTEM_PORT/$BE_SYSTEM_PORT/" \
    -e "s/\$BE_SYSTEM_NAME/$BE_SYSTEM_NAME/" \
    backend/Dockerfile > Dockerfile-changed
mv Dockerfile-changed ../backend/$PROJECT_DIRECTORY/Dockerfile
echo "Create Dockerfile Susccess"

sed -e "s/\$BE_SYSTEM_PORT/$BE_SYSTEM_PORT/g" \
    -e "s/\$BE_CONTAINER_NAME/$BE_CONTAINER_NAME/" \
    -e "s/\$BE_SYSTEM_NAME/$BE_SYSTEM_NAME/" \
    backend/docker-compose.yml > docker-compose-changed.yml
mv docker-compose-changed.yml ../backend/$PROJECT_DIRECTORY/docker-compose.yml
echo "Create Docker Compose Susccess"

# PROJECT_DIRECTORY=$BE_1
# # Server Environment
# if \[ "$BE_ENVIRONMENT" = "dev" ]; then
#     SERVER_URL="192.168.210.201"
# elif \[ "$BE_ENVIRONMENT" = "test" ]; then
#     SERVER_URL="192.168.60.210"
# elif \[ "$BE_ENVIRONMENT" = "staging" ]; then
#     SERVER_URL="203.137.1.5"
# elif \[ "$BE_ENVIRONMENT" = "production" ]; then
#     SERVER_URL="203.137.1.6"
# else
#     echo "Do Not Create Server"
#     return
# fi

# if \[ "$PROJECT_DIRECTORY" = "01_user" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="usermanagement"
#     LOGSTASH_APPNAME="ユーザー管理スシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "02_material" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="materialmanagement"
#     LOGSTASH_APPNAME="材料管理スシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "03_product" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="productcontrol"
#     LOGSTASH_APPNAME="生産管理スシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "04_procurement" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="procurementmanagement"
#     LOGSTASH_APPNAME="購買管理スシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "05_maintenance" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="maintenanceservice"
#     LOGSTASH_APPNAME="保守サービスシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "06_productdata" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="productdatamanagement"
#     LOGSTASH_APPNAME="設計管理スシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "07_datawarehouse" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="datawarehouse"
#     LOGSTASH_APPNAME="データウェアハウススシステム"
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# elif \[ "$PROJECT_DIRECTORY" = "master" ]; then
#     # config for bootstrap.yml
#     PROJECT_CONFIG_FILE="master"
#     LOGSTASH_APPNAME=""
#     # config for Docker
#     SYSTEM_PORT="8082"
#     SYSTEM_NAME="usermanagement"
#     CONTAINER_NAME="be_user"
# else
#     echo "Do Not Create"
#     return
# fi