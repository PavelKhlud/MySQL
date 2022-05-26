USE vk;


#  Связь один к одному:
# Один пользователь может иметь только одни платежные реквизиты
CREATE TABLE IF NOT EXISTS `payment_details`(
    user_id  SERIAL PRIMARY KEY,
    card_number VARCHAR(16),
    card_password VARCHAR(4),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);


#  Связь многие ко многим:
# Один пользователь может оставлять комментарий ко множеству фотографий, к каждой фотографии может
# быть множество комментариев от разных пользователей
CREATE TABLE IF NOT EXISTS `comment`(
    id         SERIAL PRIMARY KEY,
    author_id  BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    comment_text    VARCHAR(255)    NOT NULL,
    FOREIGN KEY (author_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `photo_comment`(
    `photo_id`   BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `comment_id` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    FOREIGN KEY (photo_id) REFERENCES photos (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (comment_id) REFERENCES comment (id) ON UPDATE CASCADE ON DELETE CASCADE
);


#Связь многие к одному
#Место работы у каждого юзера, один пользователь может работать только в одном месте, но в это месте может работать
# много юзеров


ALTER TABLE `profiles`
ADD COLUMN `work_place` BIGINT UNSIGNED;

CREATE TABLE IF NOT EXISTS `works`(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

ALTER TABLE `profiles`
ADD FOREIGN KEY (work_place) REFERENCES works(id);

