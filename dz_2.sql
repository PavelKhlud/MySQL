-- Задание №2
CREATE DATABASE IF NOT EXISTS example;

USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя пользователя'
);

INSERT INTO users
VALUES (DEFAULT, 'Иван Иванов'),
       (DEFAULT, 'Кирилл Федоров'),
       (DEFAULT, 'Степан Степанов'),
       (DEFAULT, 'Артем Сидоров');


-- Задание №3
-- Пароль и логин не указываю, так как он в файле .my.cnf
/* Для создания дампа я разобрался с тем, как он делается в DataGrip,
   привык уже к  IDE от IntelliJ, но так же без труда могу сделать дамп через
   терминал:
   mysqldump example > Desktop/dump1.sql
   И также инициализировать другую базу данных из этого дампа:
   1) для начала нужно создать бд в которую будем переносить дамп
   mysql> CREATE DATABASE example1
   2) добавляем туда дамп mysql example1 < Desktop/dump1.sql
   Готово! Дамп загружен в бд example1
   Могу приложить сам файл дамп, если необходимо*/


-- Задание №4
/*mysqldump -w "true limit 100" mysql help_keyword > Desktop/dump_100.sql
  Нашел документацию по where:

  --where='where_condition', -w 'where_condition'
  Dump only rows selected by the given WHERE condition.

  Получается, что помимо limit можно использовать и другие условия фильтраци

  Также нашел, почему перед условием надо ставить true:

   The --where option is basically appended to a query of the form SELECT * from table WHERE , so in this case you get
  SELECT * from table WHERE true limit 1000000. Without the true, you would have an invalid query. Specifying true for a where
  clause (since true is always true) simply selects all records*/




