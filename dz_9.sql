USE shop;
# Практическое задание по теме “Транзакции, переменные, представления”
#  Задание №1

# В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из
# таблицы shop.users в таблицу sample.users. Используйте транзакции.


START TRANSACTION;
INSERT INTO sample.users
SELECT *
FROM shop.users
LIMIT 1;
DELETE
from shop.users
WHERE id = 1
LIMIT 1;
COMMIT;

# Задание №2
# Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название
# каталога name из таблицы catalogs.


CREATE OR REPLACE VIEW prdcts (name, category) AS
SELECT products.name, c.name
FROM products
         LEFT JOIN catalogs AS c ON c.id = products.catalog_id;

SHOW tables;
SELECT *
FROM prdcts;



# Практическое задание по теме “Администрирование MySQL”
# Задание №1

# Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть
# доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
DROP USER IF EXISTS 'shop_read';
CREATE USER 'shop_read' IDENTIFIED WITH sha256_password BY 'pass';
GRANT SELECT ON shop.* TO shop_read;
SHOW GRANTS FOR shop_read;

DROP USER IF EXISTS 'shop';
CREATE USER 'shop' IDENTIFIED WITH sha256_password BY 'pass';
GRANT ALL ON shop.* TO 'shop';
GRANT GRANT OPTION ON shop.* TO 'shop';
SHOW GRANTS FOR shop;



# Практическое задание по теме “Хранимые процедуры и функции, триггеры"

# Задание №1

# Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
# С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу
# "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DELIMITER //

DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello()
    RETURNS TINYTEXT
    NOT DETERMINISTIC
BEGIN
    DECLARE hour TIME DEFAULT HOUR(NOW());
    CASE
        WHEN hour BETWEEN 6 AND 11 THEN RETURN 'Доброе утро';
        WHEN hour BETWEEN 12 AND 17 THEN RETURN 'Добрый день';
        WHEN hour BETWEEN 18 AND 23 THEN RETURN 'Добрый вечер';
        WHEN hour BETWEEN 0 AND 5 THEN RETURN 'Доброй ночи';
        END CASE;
END //

SELECT hello() //


# Задание №2

# В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
# Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL
# неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке
# присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS  cancel_if_both_fields_are_null;
CREATE TRIGGER cancel_if_both_fields_are_null
    BEFORE INSERT
    ON products
    FOR EACH ROW
BEGIN
    IF (NEW.name IS NULL OR NEW.desription IS NULL) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Оба поля пусты';
    END IF;
END //

DROP TRIGGER IF EXISTS cancel_null_update;
CREATE TRIGGER cancel_null_update
    BEFORE UPDATE
    ON products
    FOR EACH ROW
BEGIN
    IF (NEW.name IS NULL OR NEW.desription IS NULL) THEN
        SIGNAL SQLSTATE '45000';
    END IF;
END //


INSERT INTO products(name, desription)
VALUES (NULL, NULL);

UPDATE products
SET name = NULL, desription = NULL
WHERE id =  1;


