## Задание 1 модуля 1:

### Установка и настройка СУБД и среды управления:
- Выберите СУБД и среду управления.
- Установите ядро выбранной СУБД и среду управления SQL.
- Задайте имя сервера - "SBD номер вашего рабочего места".
- Включите режим смешанной аутентификации.
- Создайте пользователя sa с паролем "Де номер вашего рабочего места".

### Создание скрипты для автоматической настройки:
- Создать 10 пользователей (user1, user2, ..., user10) с случайными паролями.
- Создать базы данных (BD1, BD2, ..., BD10).
- Настроить права доступа пользователей к базам данных: user1 к BD1, user2 к BD2 и т.д.
- Создать базу данных BD и таблицу Users для хранения пользователей и их паролей.
- Заполнить таблицу Users данными созданных пользователей и паролей.
- Зашифровать пароли в таблице Users.
- Создать скрипт для отображения данных из таблицы Users с расшифрованными паролями.
- Создать скрипт для резервного копирования базы данных BD.
- Создать скрипт для процедуры восстановления базы данных.

## Задание 2 модуля 1:

### Спроектировать ER-диаграмму:
- Определить сущности: Товары, Заказы, Клиенты, Сотрудники, Промо компания.
- Определить атрибуты для каждой сущности.
- Установить связи между сущностями.
- Создать таблицы для базы данных с необходимыми ограничениями и первичными ключами.

### Создать базу данных:
- Создать таблицы для основных сущностей.
- Заполнить таблицы начальными тестовыми данными.
- Обеспечить возможность клиентов совершать несколько покупок и каждая покупка оформляется на несколько товаров.

### Создать процедуру для проверки адреса электронной почты на корректность:
- Проверить адрес на соответствие допустимым символам.
- Убедиться, что адрес не содержит символы, вызывающие ошибки.
- Вывести все адреса с указанием валидности.

### Создать таблицу для истории изменения цен на товары (HistoryCost):
- Структура: Дата изменения, Товар, Старое значение цены, Новое значение цены.
- Создать триггер для записи данных при изменении цены товара в таблицу HistoryCost.

## Задание модуля 2:

### Запросы к базе данных:
- Вывести список клиентов с данными о заказе и суммой к оплате.
- Удалить просроченные товары из базы данных.
- Обновить цену на российские товары, уменьшив её на 25%.
