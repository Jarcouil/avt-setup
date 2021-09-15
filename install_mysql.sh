#!bin/bash

sudo apt install mysql-server
sudo mysql_secure_installation
sudo mysql <<EOF
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
ALTER USER 'user'@'localhost' IDENTIFIED BY 'password';
SET GLOBAL max_allowed_packet=524288000;
CREATE SCHEMA avt;
EXIT
EOF
