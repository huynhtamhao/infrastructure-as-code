delete_bk_logs_directory_be(){
    find ./backend/$1/backup/ -mtime +10 -type f -delete
    find ./backend/$1/logs/ -mtime +1 -type f -delete
}

delete_bk_logs_directory(){
    delete_bk_logs_directory_be $1
    find ./frontend/$1/backup/ -mtime +10 -type d | xargs rm -rf
}

# Config Services
delete_bk_logs_directory_be admin
delete_bk_logs_directory_be config
delete_bk_logs_directory_be discovery
delete_bk_logs_directory_be fanaman

# Menu
find ./frontend/menu/backup/ -mtime +10 -type d | xargs rm -rf

# Bussiness Services
delete_bk_logs_directory 01_user
delete_bk_logs_directory 02_material
delete_bk_logs_directory 03_product
delete_bk_logs_directory 04_procurement
delete_bk_logs_directory 05_maintenance
delete_bk_logs_directory 06_productdata
delete_bk_logs_directory 07_datawarehouse
delete_bk_logs_directory master
