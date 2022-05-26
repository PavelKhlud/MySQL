USE `Travelinka`;


##################################################### Задание № 6 #####################################################

# 1. Посчитать количество домов каждого типа
SELECT type, COUNT(*) houses_types
FROM houses_for_rent
         JOIN houses_types ht ON houses_for_rent.house_type_id = ht.id
GROUP BY type;


# 2. Найти пользователя, от лица которого было совершено большее количество операций
SELECT u.first_name, u.last_name, COUNT(*) performed_operations
FROM payments
         JOIN users u ON u.id = payments.from_user_id
GROUP BY from_user_id
ORDER BY performed_operations DESC
LIMIT 1;


# 3. Найти все дома с одного региона (Bermuda)
SELECT hfr.id houses_in_the_same_region_id
FROM address
         JOIN houses_for_rent hfr ON address.id = hfr.address_id
WHERE region = 'Bermuda';


# 4. Найти пользователей с большим количество домов
SELECT u.first_name, u.last_name, count(*) owned_houses
FROM owners_houses
         JOIN users u ON owners_houses.user_id = u.id
GROUP BY user_id
LIMIT 1;

# 5. Найти пользователя с максимальным рейтингом
SELECT ROUND(AVG(CAST(CAST(`rating` AS CHAR) AS SIGNED)), 2) avg_rating, u.last_name, u.first_name
FROM users_rating
         JOIN users u ON u.id = users_rating.to_user_id
GROUP BY to_user_id
ORDER BY avg_rating DESC
LIMIT 1;


# 6. Найти пользователей, который чаще всего производил бронирование
SELECT u.first_name, u.last_name, COUNT(*) booking_counter
FROM booking
         JOIN users u ON booking.user_id = u.id
GROUP BY user_id
LIMIT 1;


##################################################### Задание № 7 #####################################################


# 1. Список адресов домов с их владельцами
CREATE OR REPLACE VIEW owners_with_adresses AS
SELECT u.last_name, u.first_name, a.city, a.street
FROM houses_for_rent
         JOIN owners_houses oh ON houses_for_rent.id = oh.house_id
         JOIN users u ON u.id = oh.user_id
         JOIN address a ON a.id = houses_for_rent.address_id;

SELECT *
FROM owners_with_adresses;

# 2. Список людей сделавших бронирование с адресами и id дома
CREATE OR REPLACE VIEW booking_with_persons AS
SELECT u.first_name, u.last_name, u.email, house_id, start_date, end_date
from booking
         JOIN users u ON booking.user_id = u.id;

SELECT *
FROM booking_with_persons;


##################################################### Задание № 8 #####################################################

# 1. Процедура. Вывести все дома пользователя по id
DELIMITER //
DROP PROCEDURE IF EXISTS owners_houses//
CREATE PROCEDURE owners_houses(IN id BIGINT)
BEGIN
    SELECT ht.type house_type, hfr.number_of_beds, a.region, a.city, a.street
    FROM owners_houses
             JOIN houses_for_rent hfr on owners_houses.house_id = hfr.id
             JOIN address a on a.id = hfr.address_id
             JOIN houses_types ht on hfr.house_type_id = ht.id
    WHERE user_id = id;
END //
DELIMITER ;

CALL owners_houses(101);


# 2. Триггер. При создании адреса пустыми полями производится отмена операции
DELIMITER //
DROP TRIGGER IF EXISTS cancel_any_field_empty;
CREATE TRIGGER cancel_any_field_empty
    BEFORE INSERT
    ON address
    FOR EACH ROW
BEGIN
    IF (NEW.region IS NULL OR NEW.city IS NULL OR NEW.street IS NULL OR NEW.house_number IS NULL OR
        NEW.flat IS NULL) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Пустые поля недопутсимы';
    END IF;
END //
DELIMITER ;

# Вчтавляется
INSERT INTO address
VALUES (245, 'Russia', 'Krasnoyarsk', 'Kutuzova', '12', '24');

# При значении поля Null выбрасывает ошибку
INSERT INTO address
VALUES (245, NULL, 'Krasnoyarsk', 'Kutuzova', '12', '24');