USE vk;

# Задание №1
# Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с
# выбранным пользователем (написал ему сообщений).

SELECT messages.from_user_id AS most_active_friend_id,
       COUNT(*) AS messages_quantity
FROM friend_requests
         LEFT JOIN messages
                   ON from_user_id IN (initiator_user_id, target_user_id) AND friend_requests.status = 'approved'
WHERE messages.to_user_id = 1 AND 1 IN (initiator_user_id, target_user_id)
GROUP BY most_active_friend_id
ORDER BY messages_quantity DESC
LIMIT 1;


# Задание №2
# Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.

SELECT COUNT(*) AS likes_quantity
FROM likes
         INNER JOIN media m ON likes.media_id = m.id
         INNER JOIN profiles p ON m.user_id = p.user_id
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11;

# Задание №3
# Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT gender AS gender_giving_more_likes,
       COUNT(gender) AS likes_quantity
FROM likes
         INNER JOIN profiles p ON likes.user_id = p.user_id
GROUP BY gender_giving_more_likes
ORDER BY gender_giving_more_likes
LIMIT 1;