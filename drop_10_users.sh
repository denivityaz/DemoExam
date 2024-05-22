#!/bin/bash

export PGUSER='sa'
export PGPASSWORD='De_05'
export PGDATABASE='postgres'

psql -c "DROP DATABASE\"BD\""


for ((i=1;i<=11;i++))
do
	psql -c "DROP DATABASE\"BD$i\""
	psql -c "DROP USER user$i"
done
