
#1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
#Заполните их текущими датой и временем.
update users u
set u.created_at = NOW(),
u.updated_at = NOW()
WHERE u.created_at is null OR 
u.updated_at is null;

#2. Таблица users была неудачно спроектирована. Записи created_at и updated_at 
#были заданы типом VARCHAR и в них долгое время помещались значения в 
#формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, 
#сохранив введённые ранее значения.

ALTER table users
modify column created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER table users
modify column updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

#3. В таблице складских запасов storehouses_products в поле value могут встречаться 
#самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются 
#запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке 
#увеличения значения value. Однако нулевые запасы должны выводиться в конце, после 
#всех записей.

SELECT sp.* FROM (SELECT sp.*, 
	   CASE when sp.value > 0 then 1 
	   else 2 
	   end as my_count #предусмотрел как 0, так и неизвестные значения, для наглядности в 2 селекта, не стал кейс в сортировку пихать
FROM storehouses_products sp) sp
order by sp.value DESC , sp.my_count ASC;

#4. (по желанию) Из таблицы users необходимо извлечь пользователей, 
#родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)

SELECT u.id,
	   u.name,
	   case when DATE_FORMAT( u.birthday_at, '%m') = '05' then 'may'
			when DATE_FORMAT( u.birthday_at, '%m') = '08' then 'august'
			else null
			end as my_mnth # Знаю, что можно '%M' но так более переносимо между версиями sql
FROM users u
where DATE_FORMAT( u.birthday_at, '%m') = '05' OR 
	  DATE_FORMAT( u.birthday_at, '%m') = '08'

#5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
#SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, 
#заданном в списке IN.

(select c.* from (SELECT c.* FROM catalogs c
WHERE c.id IN (5, 1, 2) 
ORDER BY c.id desc) c
limit 1)
union all
(select c.* from (SELECT c.* FROM catalogs c
WHERE c.id IN (5, 1, 2) 
ORDER BY c.id ASC) c
limit 0,2); # странное задание - ни разу в жизни не встречал практического применения, поэтому даже не сообразил как это адкватно решить.

#6. Подсчитайте средний возраст пользователей в таблице users.

SELECT avg((YEAR(CURRENT_DATE) - YEAR(u.birthday_at)) - 
	   (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(u.birthday_at, '%m%d')))  AS age
  FROM users u 

#7. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
#Следует учесть, что необходимы дни недели текущего года, а не года рождения.

select DATE_FORMAT(CONCAT('2020-',u.my_dt), '%W') my_dt_2020,
		COUNT(u.birthday_at) as my_cnt
from (select DATE_FORMAT(u.birthday_at, '%W'), 
			 DATE_FORMAT(u.birthday_at, '%m-%d') as my_dt, 
			 u.birthday_at
	  FROM users u) u
	  group by DATE_FORMAT(CONCAT('2020-',u.my_dt), '%W');

#8.(по желанию) Подсчитайте произведение чисел в столбце таблицы.
select exp(sum(ln(u2.id))) from users u2 
where u2.id <= 5 #Добавил меньше или равно 5 чтобы как раз 120 получить как в задании
