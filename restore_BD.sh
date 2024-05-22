#!/bin/bash
export PGUSER='sa'
export PGPASSWORD='De_05'
export PGDATABASE='postgres'

psql -c "DROP DATABASE IF EXISTS\"BD\""

psql -c "CREATE DATABASE restored_BD"
psql -d restored_bd < dump.sql
