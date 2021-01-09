SERVER_URL="192.168.210.201"

sh init-new-project.sh 01_user $SERVER_URL
sh init-new-project.sh 02_material $SERVER_URL
sh init-new-project.sh 03_product $SERVER_URL
sh init-new-project.sh 04_procurement $SERVER_URL
sh init-new-project.sh 05_maintenance $SERVER_URL
sh init-new-project.sh 06_productdata $SERVER_URL
sh init-new-project.sh 07_datawarehouse $SERVER_URL
sh init-new-project.sh master $SERVER_URL

# sh init-new-project.sh admin backend $SERVER_URL
# sh init-new-project.sh config backend $SERVER_URL
# sh init-new-project.sh discovery backend $SERVER_URL
# sh init-new-project.sh fanaman backend $SERVER_URL
# sh init-new-project.sh gateway backend $SERVER_URL
# sh init-new-project.sh menu frontend $SERVER_URL