#!/bin/bash

export PGUSER='sa'
export PGPASSWORD='De_05'
export PGDATABASE='BD'

KEY=$(cat ./key.txt)

psql -c "SELECT name, pgp_sym_decrypt(encrypt_password,'$KEY') FROM Users;"
