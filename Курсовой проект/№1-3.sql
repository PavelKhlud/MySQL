#  1. Составить общее текстовое описание БД и решаемых ею задач;

# База данных 'Travelinka' создана для одноименного сервиса поиска жилья для краткосрочной аренды, в базе данных
# присутствует таблица для оценивания и комментирования пользователей и их домов, также есть возможность пополнения
# внутрисервисного баланса для оплаты аренды внутри сервиса


# 2. Минимальное количество таблиц - 10; (Выполнено)


# 3. Cкрипты создания структуры БД (с первичными ключами, индексами, внешними ключами);

DROP DATABASE IF EXISTS `Travelinka`;
CREATE DATABASE `Travelinka`;
USE `Travelinka`;

CREATE TABLE IF NOT EXISTS `users`
(
    `id`           SERIAL PRIMARY KEY,
    `first_name`   VARCHAR(40) COMMENT 'Имя',
    `last_name`    VARCHAR(40) COMMENT 'Фамилия',
    `email`        VARCHAR(40) UNIQUE COMMENT 'Почтовый адрес',
    `phone_number` BIGINT UNIQUE COMMENT 'Номер телефона',
    `balance`      BIGINT UNSIGNED COMMENT 'Баланс'
);
CREATE TABLE IF NOT EXISTS `address`
(
    `id`           SERIAL PRIMARY KEY,
    `region`       VARCHAR(50),
    `city`         VARCHAR(50),
    `street`       VARCHAR(50),
    `house_number` INT,
    `flat`         INT
);
CREATE TABLE IF NOT EXISTS `houses_types`
(
    `id`   SERIAL PRIMARY KEY,
    `type` VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS `houses_for_rent`
(
    `id`             SERIAL PRIMARY KEY,
    `house_type_id`  BIGINT UNSIGNED NOT NULL,
    `number_of_beds` BIGINT COMMENT 'Количество спальных мест',
    `address_id`     BIGINT UNSIGNED NOT NULL COMMENT 'Адрес',
    FOREIGN KEY (house_type_id) REFERENCES houses_types (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `owners_houses`
(
    `user_id`  BIGINT UNSIGNED NOT NULL,
    `house_id` BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, house_id),
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (house_id) REFERENCES houses_for_rent (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `booking`
(
    `id`         SERIAL PRIMARY KEY,
    `user_id`    BIGINT UNSIGNED NOT NULL,
    `house_id`   BIGINT UNSIGNED NOT NULL,
    `start_date` DATETIME DEFAULT NULL,
    `end_date`   DATETIME DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (house_id) REFERENCES houses_for_rent (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `payments`
(
    `id`            SERIAL PRIMARY KEY,
    `from_user_id`  BIGINT UNSIGNED NOT NULL,
    `to_user_id`    BIGINT UNSIGNED NOT NULL,
    `amount`        BIGINT UNSIGNED NOT NULL,
    `creation_date` DATETIME        NOT NULL DEFAULT NOW(),
    FOREIGN KEY (from_user_id) REFERENCES users (id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users (id) ON DELETE NO ACTION ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `houses_photos`
(
    `id`        SERIAL PRIMARY KEY,
    `house_id`  BIGINT UNSIGNED NOT NULL,
    `file_name` VARCHAR(255)    NOT NULL,
    `size`      INT,
    `metadata`  JSON,
    created_at  DATETIME DEFAULT NOW(),
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (house_id) REFERENCES houses_for_rent (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `users_avatars`
(
    `user_id`   BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `file_name` VARCHAR(255)    NOT NULL,
    `size`      INT,
    `metadata`  JSON,
    created_at  DATETIME DEFAULT NOW(),
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `houses_reviews`
(
    `house_id`     BIGINT UNSIGNED NOT NULL,
    `from_user_id` BIGINT UNSIGNED NOT NULL,
    `rating`       ENUM ('0', '1', '2', '3', '4', '5'),
    `review`       VARCHAR(255),
    PRIMARY KEY (house_id, from_user_id),
    FOREIGN KEY (house_id) REFERENCES houses_for_rent (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (from_user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `messages`
(
    `id`           SERIAL PRIMARY KEY,
    `from_user_id` BIGINT UNSIGNED NOT NULL,
    `to_user_id`   BIGINT UNSIGNED NOT NULL,
    `message`      VARCHAR(255),
    FOREIGN KEY (from_user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS `users_rating`
(
    `from_user_id` BIGINT UNSIGNED NOT NULL,
    `to_user_id`   BIGINT UNSIGNED NOT NULL,
    `rating`       ENUM ('0', '1', '2', '3', '4', '5'),
    `review`       VARCHAR(255),
    PRIMARY KEY (from_user_id, to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);
