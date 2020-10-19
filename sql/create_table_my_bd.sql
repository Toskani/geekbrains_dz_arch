drop database if exists rmk_collection;
create database rmk_collection;
use rmk_collection;


DROP TABLE IF EXISTS rmk_cred_dogov;
CREATE TABLE rmk_cred_dogov (
  dog_number serial primary key,
  calday date not null,
  date_i DATETIME DEFAULT CURRENT_TIMESTAMP,
  date_u DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  product varchar(20) not null,
  summa float unsigned not null,
  issue_date date not null,
  end_dt date not null,
  status enum('work', 'end', 'end_early') default 'work',
  stage enum('monitoring', 'debtor', 'in_ska', 'in_court', 'in_restructing') default 'monitoring',
  debt_total decimal(10,6) unsigned not null,
  debt_pr_total decimal(10,6) unsigned not null,
  debt_procent decimal(10,6) unsigned not null,
  debt_other decimal(10,6) unsigned not null,
  debt_day date,
  debt_cnt_day bigint unsigned,
  master_id bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null,
  id_filial bigint unsigned not null,
  index(dog_number),
  index(issue_date),
  index(master_id),
  index(owner_id),
  index(con_id),
  index(id_filial)
) COMMENT = 'Портфель сегодня';

DROP TABLE IF EXISTS rm_cred_dogov;
CREATE TABLE rm_cred_dogov (
  dog_number bigint unsigned not null,
  calday date not null,
  date_i DATETIME DEFAULT CURRENT_TIMESTAMP,
  date_u DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  product varchar(20) not null,
  summa float unsigned not null,
  issue_date date not null,
  end_dt date not null,
  status enum('work', 'end', 'end_early') default 'work',
  stage varchar(50) not null,
  debt_total decimal(10,6) unsigned not null,
  debt_pr_total decimal(10,6) unsigned not null,
  debt_procent decimal(10,6) unsigned not null,
  debt_other decimal(10,6) unsigned not null,
  debt_day date,
  debt_cnt_day bigint unsigned,
  master_id bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null,
  id_filial bigint unsigned not null,
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (master_id) references rmk_cred_dogov (master_id),
  foreign key (owner_id) references rmk_cred_dogov (owner_id),
  foreign key (con_id) references rmk_cred_dogov (con_id),
  foreign key (id_filial) references rmk_cred_dogov (id_filial),
  index(dog_number),
  index(issue_date),
  index(master_id),
  index(owner_id),
  index(con_id),
  index(id_filial)
) COMMENT = 'Портфель ежедневные срезы';

DROP TABLE IF EXISTS rm_worker;
CREATE TABLE rm_worker(
  id serial primary key,
  pstn varchar(300) not null,
  fio varchar (200) not null,
  date_start date not null,
  date_end date not null,
  salary float unsigned not null,
  master_id bigint unsigned,
  owner_id bigint unsigned,
  foreign key (master_id) references rm_cred_dogov (master_id),
  foreign key (master_id) references rmk_cred_dogov (master_id),
  foreign key (owner_id) references rm_cred_dogov (owner_id),
  foreign key (owner_id) references rmk_cred_dogov (owner_id),
  index (fio),
  index (id),
  index (date_start),
  index (date_end)
) COMMENT = 'Отвественные сотрудники';

DROP TABLE IF EXISTS rm_filial;
CREATE TABLE rm_filial (
  id_filial bigint unsigned not null unique,
  id bigint unsigned not null,
  adress varchar(200) not null unique,
  foreign key (id_filial) references rm_cred_dogov (id_filial),
  foreign key (id_filial) references rmk_cred_dogov (id_filial),
  foreign key (id) references rm_worker (id),
  index (id_filial),
  index (adress)
) COMMENT = 'Перечень филиалов';

DROP TABLE IF EXISTS rm_person;
CREATE TABLE rm_person (
  con_id bigint unsigned not null unique,
  name varchar(40) not null,
  surname varchar(60) not null,
  patronymic varchar(40),
  bthday date not null,
  adress varchar(300) not null,
  email varchar(120) not null unique,
  phone bigint unsigned not null unique,
  foreign key (con_id) references rm_cred_dogov (con_id),
  foreign key (con_id) references rmk_cred_dogov (con_id),
  index (name, surname),
  index (adress),
  index (email),
  index (phone)
) COMMENT = 'Физические лица';

DROP TABLE IF EXISTS rm_zalog_dogov;
CREATE TABLE rm_zalog_dogov (
  dog_zal_number serial primary key,
  con_id bigint unsigned not null,
  summa float unsigned not null,
  status enum('in_client', 'in_bank', 'sell'),
  dog_number bigint unsigned not null unique,
  foreign key (dog_number) references rm_cred_dogov (dog_number),
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  index(dog_zal_number),
  index(dog_number)
) COMMENT = 'Залоговые договоры';

DROP TABLE IF EXISTS rm_graph;
CREATE TABLE rm_graph(
  dog_number bigint unsigned not null,
  con_id bigint unsigned not null,
  date_pay date not null,
  summa_pay bigint unsigned not null,
  status bool default 0,
  foreign key (dog_number)  references rm_cred_dogov (dog_number),
  foreign key (dog_number)  references rmk_cred_dogov (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  index (dog_number),
  index (date_pay),
  index (status)
) COMMENT = 'Графики платежей';

DROP TABLE IF EXISTS rm_pays;
CREATE TABLE rm_pays(
  dog_number bigint unsigned not null,
  con_id bigint unsigned not null,
  date_pay date,
  pay_total float not null,
  pay_pr_total float not null,
  pay_procent float not null,
  pay_other float not null,
  foreign key (dog_number)  references rm_cred_dogov (dog_number),
  foreign key (dog_number)  references rmk_cred_dogov (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  index (dog_number),
  index (date_pay)
) COMMENT = 'Графики платежей';

DROP TABLE IF EXISTS rm_task;
CREATE TABLE rm_task(
  row_id serial primary key,
  dog_number bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null,
  act_type varchar(100) not null,
  act_subtype varchar(100) not null,
  x_result varchar(100) not null,
  start_date date not null,
  end_fact_date date not null,
  comment text,
  foreign key (dog_number) references rm_cred_dogov (dog_number),
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (dog_number) references rm_pays (dog_number),
  foreign key (dog_number) references rm_graph (dog_number),
  foreign key (dog_number) references rm_zalog_dogov (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  foreign key (owner_id)  references rm_worker (owner_id),
  index (row_id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (act_type),
  index (act_subtype),
  index (x_result)
) COMMENT = 'Задачи';

DROP TABLE IF EXISTS rm_restracting;
CREATE TABLE rm_restracting (
  id serial primary key,
  dog_number bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null, 
  type_name varchar(100) not null,
  start_date date not null,
  end_date date not null,
  foreign key (dog_number) references rm_cred_dogov (dog_number),
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (dog_number) references rm_pays (dog_number),
  foreign key (dog_number) references rm_graph (dog_number),
  foreign key (dog_number) references rm_zalog_dogov (dog_number),
  foreign key (dog_number) references rm_task (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (con_id)  references rm_task (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  foreign key (owner_id)  references rm_worker (owner_id),
  foreign key (owner_id)  references rm_task (owner_id),
  index (id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (type_name)
) COMMENT = 'Спецпрограммы/реструктризация';

DROP TABLE IF EXISTS rm_reestr_work;
CREATE TABLE rm_reestr_work (
  id serial primary key,
  dog_number bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null,
  type_name varchar(100) not null,
  start_date date not null,
  end_date date not null,
  status bool default 0,
  foreign key (dog_number) references rm_cred_dogov (dog_number),
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (dog_number) references rm_pays (dog_number),
  foreign key (dog_number) references rm_graph (dog_number),
  foreign key (dog_number) references rm_zalog_dogov (dog_number),
  foreign key (dog_number) references rm_task (dog_number),
  foreign key (dog_number) references rm_restracting (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (con_id)  references rm_task (con_id),
  foreign key (con_id)  references rm_restracting (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  foreign key (owner_id)  references rm_worker (owner_id),
  foreign key (owner_id)  references rm_task (owner_id),
  foreign key (owner_id)  references rm_restracting (owner_id),
  index (id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (type_name)
) COMMENT = 'Агентсва/суды';
