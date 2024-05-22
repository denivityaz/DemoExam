#!/bin/bash

export PGUSER='sa'
export PGPASSWORD='De_05'
export PGDATABASE='BD'

KEY=$(cat ./key.txt)

psql -c "CREATE EXTENSION IF NOT EXISTS pgcrypto;"

psql -c "ALTER TABLE users ADD COLUMN encrypt_password BYTEA"

psql -c "UPDATE Users SET encrypt_password=pgp_sym_encrypt(password,'$KEY')"

psql -c "ALTER TABLE users DROP COLUMN password"

psql -c "SELECT * FROM Users;"
