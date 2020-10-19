#Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
#С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
#с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
drop procedure if exists hello;

delimiter //
CREATE procedure hello ()
begin
	select case when DATE_FORMAT(now(), "%H") between 6 and 12
	then 'Доброе утро'
	when DATE_FORMAT(now(), "%H") between 12 and 18
	then 'Добрый день'
	else 'Доброй ночи'
	end;
end//

call hello ();

#В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей 
#или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих
#полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.
SELECT * FROM catalogs c 

drop TRIGGER if exists prod_name;

DELIMITER //
CREATE TRIGGER prod_name
before INSERT
ON catalogs
FOR EACH ROW BEGIN 
	DECLARE total text;
	SELECT new.name into total from catalogs;
	if total is null then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Значение не может быть нулевым';
	end if;
END//

INSERT catalogs(id, name) 
VALUES ('6', 'sdasdasd');

DELETE from catalogs c where c.id = 6

#В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в 
#таблицу sample.users. Используйте транзакции.



#Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
drop VIEW  if exists my_view;

CREATE view my_view as
select c2.name as name_catalog, p2.name as name_product
from products p2 
left join catalogs c2
on p2.catalog_id = c2.id;


select * from my_view;

#Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_rea
#должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
create user shop identified with sha256_password by '321';
