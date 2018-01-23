#Run Docker container
#docker run --name mysqldbv1 -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

#Create database
CREATE DATABASE sql_dev;
CREATE DATABASE sql_prod;

#Create database service accounts(use wildcard, '%' instead of 'localhost' for Docker mysql container
CREATE USER 'sql_dev_user'@'%' IDENTIFIED BY 'yoo';
CREATE USER 'sql_prod_user'@'%' IDENTIFIED BY 'yoo';

#Database grant
GRANT SELECT ON sql_dev.* to 'sql_dev_user'@'%';
GRANT INSERT ON sql_dev.* to 'sql_dev_user'@'%';
GRANT DELETE ON sql_dev.* to 'sql_dev_user'@'%';
GRANT UPDATE ON sql_dev.* to 'sql_dev_user'@'%';
GRANT SELECT ON sql_prod.* to 'sql_prod_user'@'%';
GRANT INSERT ON sql_prod.* to 'sql_prod_user'@'%';
GRANT DELETE ON sql_prod.* to 'sql_prod_user'@'%';
GRANT UPDATE ON sql_prod.* to 'sql_prod_user'@'%';