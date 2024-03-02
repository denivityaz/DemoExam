#!/bin/bash

# Создаем базу данных BD
psql -U postgres -d postgres -c "CREATE DATABASE BD;"

# Подключаемся к базе данных BD
psql -U postgres -d BD -c "\c BD;"

# Создаем 10 баз данных BD1, BD2, ..., BD10
psql -U postgres -d BD -c "DO $$ BEGIN FOR i IN 1..10 LOOP EXECUTE format('CREATE DATABASE BD%s;', i); END LOOP; END $$;"

# Подключаемся к базе данных BD
psql -U postgres -d BD -c "\c BD;"

# Создаем таблицу users для хранения логинов и паролей пользователей
psql -U postgres -d BD -c "CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(50), password VARCHAR(50));"

# Создаем 10 пользователей user1, user2, ..., user10 с случайными паролями
psql -U postgres -d BD -c "DO $$ DECLARE random_password TEXT; BEGIN FOR i IN 1..10 LOOP random_password := substring(md5(random()::text), 1, 5); EXECUTE format('CREATE USER user%s WITH PASSWORD %L;', i, random_password); END LOOP; END $$;"

# Добавляем записи в таблицу users
psql -U postgres -d BD -c "DO $$ BEGIN FOR i IN 1..10 LOOP EXECUTE format('INSERT INTO users (username, password) VALUES (%L, %L);', 'user' || i, substring(md5(random()::text), 1, 5)); END LOOP; END $$;"
