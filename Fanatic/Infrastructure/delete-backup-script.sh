delete_bk_logs_directory_be(){
    # find ./backend/$1/backup/ ! -name '.keep' -mtime +10 -type f -delete
    ls -t ./backend/$1/backup/ | grep '.jar' | tail -n +4 | xargs rm -f --
    find ./backend/$1/logs/ -name '*.log' -mtime +1 -type f -delete
    find ./backend/$1/logs/ -name '*.gz' -mtime +10 -type f -delete
}

delete_bk_logs_directory_fe(){
    find ./frontend/$1/backup/ ! -name '.keep' -mtime +10 -type d | xargs rm -rf
}

delete_bk_logs_directory(){
    delete_bk_logs_directory_be $1
    delete_bk_logs_directory_fe $1
}

# Config Services
delete_bk_logs_directory_be admin
delete_bk_logs_directory_be config
delete_bk_logs_directory_be discovery
delete_bk_logs_directory_be fanaman

# Menu
#find ./frontend/menu/backup/ -mtime +10 -type d | xargs rm -rf
delete_bk_logs_directory_fe menu

# Bussiness Services
delete_bk_logs_directory 01_user
delete_bk_logs_directory 02_material
delete_bk_logs_directory 03_product
delete_bk_logs_directory 04_procurement
delete_bk_logs_directory 05_maintenance
delete_bk_logs_directory 06_productdata
delete_bk_logs_directory 07_datawarehouse
delete_bk_logs_directory master
