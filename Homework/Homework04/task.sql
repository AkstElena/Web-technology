-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет. 
-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.
-- Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql


-- create
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  adress TEXT NOT NULL
);

-- insert
INSERT INTO students (name, age, adress) VALUES ('Соня', 25, 'Москва');
INSERT INTO students (name, age, adress) VALUES ('Марк', 31, 'Казань');
INSERT INTO students (name, age, adress) VALUES ('Толя', 40, 'Москва');
INSERT INTO students (name, age, adress) VALUES ('Саша', 34, 'Казань');
INSERT INTO students (name, age, adress) VALUES ('Аня', 27, 'Самара');
INSERT INTO students (name, age, adress) VALUES ('Юля', 19, 'Москва');
INSERT INTO students (name, age, adress) VALUES ('Лена', 38, 'Набережные Челны');



-- fetch 
SELECT name AS Имя FROM students WHERE adress = "Москва" AND age >= 18 AND age < 30;
