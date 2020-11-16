#Пусть задан некоторый пользователь. 
#Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

# Так как у меня не совпали пользователи, в юзерах минимальный был 200, а в месенджах макс был 100, сделал исскуственно апдейт
# Не знаю надо ли так было, но брал данные из инсертов к уроку и не совпал!

UPDATE snet1509.messages m
set m.to_user_id = 219
WHERE m.to_user_id = 100 #Апдейтим чтобы поймать хотя бы 1 совпадение

UPDATE snet1509.friend_requests fr 
set fr.target_user_id = 219,
fr.initiator_user_id = 219
WHERE fr.target_user_id = 210 or fr.initiator_user_id = 210 #сделал апдейт тут, так как не мог посмотреть друзей по пути вырубил ключи

with t as (select u.id, m.from_user_id, fr.status, COUNT(m.from_user_id) cnt_frm_usr_id 
FROM snet1509.users u 

left join snet1509.messages m 
on u.id = m.to_user_id

left join (select DISTINCT fr.initiator_user_id, fr.target_user_id, fr.status from snet1509.friend_requests fr
where fr.status = 'approved'
or fr.status = 'requested') fr
on u.id = fr.initiator_user_id 

WHERE u.id = 219
group by u.id, m.from_user_id, fr.status
order by COUNT(m.from_user_id) desc)
select t.*, ROW_NUMBER () over (partition by t.id, t.from_user_id order by t.cnt_frm_usr_id desc) rn from t t
where cnt_frm_usr_id = 3


#Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

select u.* from (select u.*, ROW_NUMBER () over (order by u.years asc) rn from 
(select u.*, lp.cnt_likes, (YEAR(CURRENT_DATE) - YEAR(u.birthday)) - 
	   (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(u.birthday, '%m%d')) years 
	   from snet1509.users u
	   
	   left join (select lp.user_id, COUNT(lp.user_id) cnt_likes from snet1509.likes_posts lp
	   group by lp.user_id) lp
	   on lp.user_id = u.id) u) u
	   where u.rn BETWEEN 1 and 10
	   



#Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT u.gender, count(u.gender) FROM snet1509.users u
left join snet1509.likes_posts lp 
on u.id = lp.user_id 
where lp.user_id is not null
GROUP BY u.gender


#Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

select * from (SELECT u.id, c.cnt_user_id, lp.cnt_likes, m.cnt_from_user_id,  coalesce(c.cnt_user_id, 0) + coalesce(lp.cnt_likes, 0) + 
coalesce(m.cnt_from_user_id, 0) pivot, ROW_NUMBER () over (order by coalesce(c.cnt_user_id, 0) + coalesce(lp.cnt_likes, 0) + 
coalesce(m.cnt_from_user_id, 0) asc) rn

from snet1509.users u

left join (select c.user_id , count(c.user_id) cnt_user_id from snet1509.comments c 
group by c.user_id) c
on u.id =c.user_id

left join (select lp.user_id, COUNT(lp.user_id) cnt_likes from snet1509.likes_posts lp
	   group by lp.user_id) lp
	   on lp.user_id = u.id
	   
	   
left join (select m.from_user_id, count(m.from_user_id) cnt_from_user_id FROM snet1509.messages m
group by m.from_user_id) m
on u.id = m.from_user_id) a
where a.rn BETWEEN 1 and 3
# И тд столько джоинов делаем, сколько парамметров хотим привлечь к расчетую Можно придумать даже вес параметра через case, ибо сообщения явно менее весомы чем фото или группы