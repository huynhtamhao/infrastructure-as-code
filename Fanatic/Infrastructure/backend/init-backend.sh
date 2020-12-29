create_bk_logs_directory(){
    mkdir $1/backup
    mkdir $1/logs
    touch $1/backup/.gitkeep
}

create_bk_logs_directory 01_user
create_bk_logs_directory 02_material
create_bk_logs_directory 03_product
create_bk_logs_directory 04_procurement
create_bk_logs_directory 05_maintenance
create_bk_logs_directory 06_productdata
create_bk_logs_directory 07_datawarehouse
create_bk_logs_directory admin
create_bk_logs_directory config
create_bk_logs_directory discovery
create_bk_logs_directory fanaman
create_bk_logs_directory gateway
create_bk_logs_directory master
