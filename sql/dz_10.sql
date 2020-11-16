#Практическое задание по теме “Оптимизация запросов”
#Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs
#помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

show engines;

DROP table if exists logs;


Create table logs (
id serial primary key,
created_at DATETIME,
name VArCHAR(255),
id_table INT
) ENGINE = Archive;

CREATE TABLE test_archive (
  id bigint auto_increment NOT NULL,
  created_at DATETIME NULL,
  name varchar(100) NULL,
  id_table INT null,
  CONSTRAINT test_archive_pk PRIMARY KEY (id)
)
ENGINE=ARCHIVE;

delimiter //
CREATE procedure insert_logs ()
begin
	INSERT into logs values (created_at, name, id_table from) as
	(select new.created_at, new.name, new.id from users);
end//



DELIMITER //
CREATE TRIGGER logs
after INSERT
ON users
FOR EACH ROW BEGIN
	begin insert_logs()
	end;
END//


#Практическое задание по теме “NoSQL”
#В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
> set server:name "fido"
OK
> hset visits 192.01.01.02 1
1
> hset visits 192.01.01.03 1
1
> hset visits 192.01.01.04 1
1
> hgetall visits
1) "192.01.01.02"
2) "1"
3) "192.01.01.03"
4) "1"
5) "192.01.01.04"
6) "1"
> hincrby visits 192.01.01.02 1
(integer) 2

#При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
> hset user:100 name "Roman"
1
> hset user:100 emal "roma@gmail.com"
1
> hgetall user:100
1) "name"
2) "Roman"
3) "emal"
4) "roma@gmail.com"

#Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
