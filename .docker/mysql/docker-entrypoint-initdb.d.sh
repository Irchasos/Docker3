#!/bin/bash

set -e
mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOSQL

CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;

USE $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO $MYSQL_USER;

EOSQL