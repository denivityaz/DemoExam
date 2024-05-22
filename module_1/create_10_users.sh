#!/bin/bash

export PGUSER='sa'
export PGPASSWORD='De_05'
export PGDATABASE='postgres'

psql -c "CREATE DATABASE\"BD\""
psql -c "\c \"BD\"" -c "CREATE TABLE Users(name VARCHAR(128), password VARCHAR(128));"

for ((i=1;i<11;i++))
do
	pass=$(tr -dc A-Za-z0-9 < /dev/urandom | head -c 5)
	psql -c "CREATE DATABASE\"BD$i\""
	psql -c "CREATE USER user$i WITH PASSWORD '$pass'"
	psql -c "GRANT ALL PRIVILEGES ON DATABASE\"BD$i\" TO user$i"
	psql -c "\c \"BD\"" -c "INSERT INTO Users VALUES('user$i','$pass')"
done
