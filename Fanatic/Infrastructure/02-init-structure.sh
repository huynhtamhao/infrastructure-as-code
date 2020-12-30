ENVIRONMENT="dev"

sh template-project/init-new-project.sh 02_material all $ENVIRONMENT
sh template-project/init-new-project.sh 01_user all $ENVIRONMENT
sh template-project/init-new-project.sh 03_product all $ENVIRONMENT
sh template-project/init-new-project.sh 04_procurement all $ENVIRONMENT
sh template-project/init-new-project.sh 05_maintenance all $ENVIRONMENT
sh template-project/init-new-project.sh 06_productdata all $ENVIRONMENT
sh template-project/init-new-project.sh 07_datawarehouse all $ENVIRONMENT
sh template-project/init-new-project.sh master all $ENVIRONMENT

sh template-project/init-new-project.sh admin backend $ENVIRONMENT
sh template-project/init-new-project.sh config backend $ENVIRONMENT
sh template-project/init-new-project.sh discovery backend $ENVIRONMENT
sh template-project/init-new-project.sh fanaman backend $ENVIRONMENT
sh template-project/init-new-project.sh gateway backend $ENVIRONMENT

sh template-project/init-new-project.sh menu frontend $ENVIRONMENT