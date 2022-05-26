USE shop;
# Таблица дана в задании


# Задание №1
# Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT DISTINCT users.id, users.name
FROM users
         INNER JOIN orders ON users.id = user_id;

# Задание №2
# Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT products.name, catalogs.name
FROM products
         INNER JOIN catalogs ON products.catalog_id = catalogs.id

# Задание №3
# (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
# Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights
# с русскими названиями городов.

CREATE DATABASE IF NOT EXISTS translator;
USE translator;
CREATE TABLE flight
(
    id     BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    `from` VARCHAR(255),
    `to`   VARCHAR(255)
);

CREATE TABLE cities
(
    label VARCHAR(255) UNIQUE,
    name  VARCHAR(255) UNIQUE
);


INSERT INTO flight (`from`, `to`)
VALUES ('novgorod', 'kazan'),
       ('irkutsk', 'moscow'),
       ('omsk', 'irkutsk'),
       ('moscow', 'kazan');

INSERT INTO cities (`label`, `name`)
VALUES ('moscow', 'Москва'),
       ('irkutsk', 'Иркутск'),
       ('novgorod', 'Новгород'),
       ('kazan', 'Казань'),
       ('omsk', 'Омск');

SELECT id, `from`.name, `to`.name
FROM flight
         INNER JOIN cities as `from` ON flight.from = `from`.label
         INNER JOIN cities as `to` ON flight.to = `to`.label

