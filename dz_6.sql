USE vk;

# Задание №1
# Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался
# с нашим пользователем.

SELECT COUNT(from_user_id) as number_of_messages, from_user_id as user
FROM (
         SELECT from_user_id
         FROM messages
         WHERE from_user_id IN
               (SELECT initiator_user_id
                FROM friend_requests
                WHERE target_user_id = 1
                  and status = 'approved'
                UNION ALL
                SELECT target_user_id
                FROM friend_requests
                WHERE initiator_user_id = 1
                  and status = 'approved')
           AND to_user_id = 1
         UNION ALL
         SELECT from_user_id
         FROM messages
         WHERE to_user_id IN
               (SELECT initiator_user_id
                FROM friend_requests
                WHERE target_user_id = 1
                  and status = 'approved'
                UNION ALL
                SELECT target_user_id
                FROM friend_requests
                WHERE initiator_user_id = 1
                  and status = 'approved')
           AND from_user_id = 1) as result
GROUP BY from_user_id
ORDER BY number_of_messages DESC
LIMIT 1;

# Задание №2
# Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.

SELECT COUNT(*) AS likes_quantity
FROM likes
WHERE media_id in (SELECT id
                   FROM media
                   WHERE user_id in (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11));

# Задание №3
# Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT likes_quantity, gender
FROM (SELECT count(*) AS likes_quantity,
             (SELECT gender
              FROM profiles
              WHERE gender IS NOT NULL
                AND gender = 'f'
                AND likes.user_id = profiles.user_id) AS gender
      FROM likes
      GROUP BY gender
      HAVING gender IS NOT NULL
      UNION
      SELECT count(*),
             (SELECT gender
              FROM profiles
              WHERE gender IS NOT NULL
                AND gender = 'm'
                AND likes.user_id = profiles.user_id) AS gender
      FROM likes
      GROUP BY gender
      HAVING gender IS NOT NULL) as gender_counter
ORDER BY likes_quantity DESC
LIMIT 1;

