USE shop;
#Таблица из видеоурока
# Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

# Задание №1
# Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
UPDATE users
SET created_at = CURRENT_TIMESTAMP,
    updated_at = CURRENT_TIMESTAMP;

# WHERE updated_at IS NULL  AND updated_at IS NULL;
# Если они оказались незаполнены, без этого условия обновит все столбцы таблицы


# Задание №2
# Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое
# время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые
# ранее значения.


ALTER TABLE users
    MODIFY
        created_at DATETIME,
    MODIFY
        updated_at DATETIME;

# Задание №3

# В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар
# закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они
# выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей


SELECT value
FROM storehouses_products
ORDER BY value = 0, value;


# Задание №4
# Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских
# названий (may, august)


SELECT name, birthday_at
FROM users
WHERE MONTH(birthday_at) = 5
   OR MONTH(birthday_at) = 8;


# Задание №5
# Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
# Отсортируйте записи в порядке, заданном в списке IN.


SELECT *
FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY FIELD(id, 5, 1, 2);


# Практическое задание теме «Агрегация данных»

# Задание №1
# Подсчитайте средний возраст пользователей в таблице users.


SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, CURRENT_TIMESTAMP()))) as average_age
FROM users;

# Задание №2
# Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни
# недели текущего года, а не года рождения.

SELECT DAYNAME(DATE_FORMAT(birthday_at, '2022-%m-%d')) as `day`,
       count(*)
from users
GROUP BY day;
