USE vk;
# Задание №1
# Приложени в папке с дз


# Задание №2
# Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке.

SELECT DISTINCT firstname
FROM users
ORDER BY firstname;


# Задание №3
# Первые пять пользователей пометить как удаленные.

UPDATE users
SET is_deleted = TRUE
LIMIT 5;

# Задание №4
# Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней).

DELETE FROM messages
WHERE created_at > CURRENT_DATE;


# Задание №5
# Написать название темы курсового проекта.

# База данных для сервиса краткосрочной аренды (аналог airbnb)
