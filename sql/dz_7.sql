#Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT u.name, o.kolvo_pokoopok FROM users u 
left join (select o.user_id, COUNT(o.id) kolvo_pokoopok FROM orders o 
group by o.user_id) o
on u.id = o.user_id 
where o.kolvo_pokoopok <> 0;


#Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT c.name as category, p.name, p.description, p.price FROM products p 
join catalogs c
on p.id = c.id 

#(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
#Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_place VARCHAR(255) COMMENT 'Место вылета',
  to_place VARCHAR(255) COMMENT 'Место прилета'
) COMMENT = 'Рейсы';


INSERT into flights 
	(from_place, to_place)
values ('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');
	
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255) COMMENT 'английский',
  name VARCHAR(255) COMMENT 'русский'
) COMMENT = 'словарь';


INSERT into cities 
(label, name)
values ('moscow', 'москва'),
 ('omsk','омск'),
 ('novgorod','новгород'),
 ('kazan','казань'),
 ('irkutsk','иркутск');
 

SELECT f.id, ci.name, ci2.name from flights f
left join cities ci
on f.from_place = ci.label
left join cities ci2
on f.from_place = ci2.label
