DROP DATABASE IF EXISTS snet1;
CREATE DATABASE snet1 CHARACTER SET utf8mb4;
USE snet1;

CREATE TABLE `communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
);

INSERT INTO communities (name) VALUES 
('PHP')
,('Planetaro')
,('Ruby')
,('Vim')
,('Ассемблер в Linux для программистов C')
,('Аффинные преобразования')
,('Биология клетки')
,('Древнекитайский язык')
,('Знакомство с методом математической индукции')
,('Информация, системы счисления')
;
INSERT INTO communities (name) VALUES 
('Кодирование текста и работа с ним')
,('Комплексные числа')
,('Лингва де планета')
,('Лисп')
,('Математика случая')
,('Микромир, элементарные частицы, вакуум')
,('Московская олимпиада по информатике')
,('Оцифровка печатных текстов')
,('Реализации алгоритмов')
,('Регулярные выражения')
;
INSERT INTO communities (name) VALUES 
('Рекурсия')
,('Русский язык')
,('Создание электронной копии книги в формате DjVu в Linux')
,('Токипона')
,('Учебник логического языка')
,('Что такое вычислительная математика')
,('Электронные таблицы в Microsoft Excel')
,('Эсперанто? Зачем?')
,('Язык Си в примерах')
,('Японский язык')
;