-- Создаем базу данных BD
CREATE DATABASE BD;

-- Подключаемся к базе данных BD
\c BD

-- Создаем таблицу users для хранения логинов и паролей пользователей
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);

-- Создаем 10 баз данных BD1, BD2, ..., BD10
DO $$
BEGIN
    FOR i IN 1..10 LOOP
        EXECUTE format('CREATE DATABASE BD%s;', i);
    END LOOP;
END $$;

-- Создаем 10 пользователей user1, user2, ..., user10 с случайными паролями и предоставляем им доступ только к их соответствующим базам данных
DO $$
DECLARE
    random_password TEXT;
BEGIN
    FOR i IN 1..10 LOOP
        random_password := substr(md5(random()::text), 0, 5);
        
        EXECUTE format('CREATE USER user%s WITH PASSWORD %L;', i, random_password);
        EXECUTE format('GRANT ALL PRIVILEGES ON DATABASE BD%s TO user%s;', i, i);
    END LOOP;
END $$;
