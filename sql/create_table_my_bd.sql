drop database if exists rmk_collection;
create database rmk_collection;
use rmk_collection;


DROP TABLE IF EXISTS rmk_cred_dogov;
CREATE TABLE rmk_cred_dogov (
  dog_number serial primary key,
  calday date not null,
  date_i DATETIME DEFAULT CURRENT_TIMESTAMP,
  date_u DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  product enum('consumer', 'mortgage', 'credit card')  not null,
  summa float unsigned not null,
  issue_date date not null,
  end_dt date not null,
  status enum('work', 'end', 'end_early') default 'work',
  stage enum('monitoring', 'debtor', 'in_ska', 'in_court', 'in_restructing') default 'monitoring',
  debt_total float unsigned not null,
  debt_pr_total float unsigned not null,
  debt_procent float unsigned not null,
  debt_other float unsigned not null,
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


INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('1', '2020-10-27', 'credit card', '50000', '2017-11-27', '2021-02-20', 'work', 'in_restructing', '30000', '0', '0', '0', '2020-10-27', '0', '1', '4', '1', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('2', '2020-10-27', 'credit card', '60000', '2017-10-09', '2020-01-10', 'end', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '2', '5', '2', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('3', '2020-10-27', 'credit card', '75000', '2016-04-26', '2022-07-20', 'work', 'in_restructing', '42000', '28000', '27500', '500', '2019-12-20', '312', '3', '6', '3', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('4', '2020-10-27', 'credit card', '40000', '2018-04-06', '2021-11-20', 'work', 'in_court', '24000', '24000', '23000', '1000', '2019-06-07', '508', '1', '4', '4', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('5', '2020-10-27', 'mortgage', '5200000', '2016-03-08', '2022-01-23', 'work', 'in_restructing', '3800000', '200000', '197000', '3000', '2020-04-04', '206', '2', '5', '5', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('6', '2020-10-27', 'mortgage', '7800000', '2020-06-09', '2021-08-16', 'work', 'debtor', '7200000', '120000', '110000', '10000', '2020-09-27', '30', '3', '6', '6', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('7', '2020-10-27', 'consumer', '620000', '2020-01-31', '2022-07-28', 'work', 'debtor', '50000', '27000', '26500', '500', '2020-08-20', '68', '1', '4', '7', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('8', '2020-10-27', 'mortgage', '12000000', '2018-08-20', '2021-02-25', 'work', 'in_court', '8600000', '8550000', '8500000', '50000', '2019-03-25', '582', '2', '5', '8', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('9', '2020-10-27', 'credit card', '60000', '2017-07-08', '2022-11-02', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '3', '6', '1', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('10', '2020-10-27', 'credit card', '80000', '2018-05-21', '2021-09-14', 'work', 'in_court', '68000', '64000', '60000', '4000', '2019-02-18', '617', '1', '4', '3', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('11', '2020-10-27', 'credit card', '70000', '2016-12-26', '2022-08-12', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-10-06', '752', '2', '5', '5', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('12', '2020-10-27', 'mortgage', '6800000', '2018-03-22', '2021-02-03', 'work', 'in_court', '5700000', '5612830', '5600000', '12830', '2019-06-04', '511', '3', '6', '9', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('13', '2020-10-27', 'consumer', '520000', '2020-05-07', '2022-11-13', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '1', '4', '10', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('14', '2020-10-27', 'mortgage', '13000000', '2017-03-21', '2021-01-15', 'work', 'in_court', '11500000', '11500000', '11000000', '500000', '2018-08-20', '799', '2', '5', '11', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('15', '2020-10-27', 'credit card', '50000', '2018-11-11', '2022-06-19', 'work', 'in_court', '24000', '24000', '23000', '1000', '2019-04-15', '561', '3', '6', '12', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('16', '2020-10-27', 'credit card', '60000', '2019-05-19', '2021-02-01', 'work', 'in_restructing', '30000', '0', '0', '0', '2020-10-27', '0', '1', '4', '5', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('17', '2020-10-27', 'consumer', '600000', '2017-10-09', '2022-08-13', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-11-09', '718', '2', '5', '6', '2');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('18', '2020-10-27', 'credit card', '70000', '2019-03-09', '2021-01-07', 'work', 'debtor', '68000', '64000', '60000', '4000', '2020-08-13', '75', '3', '6', '7', '3');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('19', '2020-10-27', 'consumer', '590000', '2020-06-09', '2022-09-13', 'work', 'debtor', '50000', '27000', '26500', '500', '2020-10-05', '22', '1', '4', '6', '1');
INSERT INTO `rmk_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('20', '2020-10-27', 'mortgage', '5200000', '2018-09-10', '2021-02-13', 'work', 'in_court', '4200000', '4000000', '3900000', '100000', '2019-03-19', '588', '2', '5', '13', '2');

DROP TABLE IF EXISTS rm_cred_dogov;
CREATE TABLE rm_cred_dogov (
  dog_number bigint unsigned not null,
  calday date not null,
  date_i DATETIME DEFAULT CURRENT_TIMESTAMP,
  date_u DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  product enum('consumer', 'mortgage', 'credit card')  not null,
  summa float unsigned not null,
  issue_date date not null,
  end_dt date not null,
  status enum('work', 'end', 'end_early') default 'work',
  stage varchar(50) not null,
  debt_total float unsigned not null,
  debt_pr_total float unsigned not null,
  debt_procent float unsigned not null,
  debt_other float unsigned not null,
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

INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('1', '2020-10-26', 'credit card', '50000', '2017-11-27', '2021-02-20', 'work', 'monitoring', '35000', '0', '0', '0', '2020-10-27', '0', '1', '4', '1', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('2', '2020-10-26', 'credit card', '60000', '2017-10-09', '2020-01-10', 'end', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '2', '5', '2', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('3', '2020-10-26', 'credit card', '75000', '2016-04-26', '2022-07-20', 'work', 'in_restructing', '42000', '28000', '27500', '500', '2019-12-20', '311', '3', '6', '3', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('4', '2020-10-26', 'credit card', '40000', '2018-04-06', '2021-11-20', 'work', 'in_restructing', '32000', '12000', '12000', '0', '2019-06-07', '507', '1', '4', '4', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('5', '2020-10-26', 'mortgage', '5200000', '2016-03-08', '2022-01-23', 'work', 'debtor', '4200000', '100000', '100000', '0', '2020-04-04', '205', '2', '5', '5', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('6', '2020-10-26', 'mortgage', '7800000', '2020-06-09', '2021-08-16', 'work', 'monitoring', '7200000', '0', '0', '0', '2020-09-27', '29', '3', '6', '6', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('7', '2020-10-26', 'consumer', '620000', '2020-01-31', '2022-07-28', 'work', 'debtor', '60000', '13000', '13000', '0', '2020-08-20', '67', '1', '4', '7', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('8', '2020-10-26', 'mortgage', '12000000', '2018-08-20', '2021-02-25', 'work', 'in_court', '8600000', '8550000', '8500000', '50000', '2019-03-25', '581', '2', '5', '8', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('9', '2020-10-26', 'credit card', '60000', '2017-07-08', '2022-11-02', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '3', '6', '1', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('10', '2020-10-26', 'credit card', '80000', '2018-05-21', '2021-09-14', 'work', 'in_court', '68000', '64000', '60000', '4000', '2019-02-18', '616', '1', '4', '3', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('11', '2020-10-26', 'credit card', '70000', '2016-12-26', '2022-08-12', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-10-06', '751', '2', '5', '5', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('12', '2020-10-26', 'mortgage', '6800000', '2018-03-22', '2021-02-03', 'work', 'in_court', '5700000', '5612830', '5600000', '12830', '2019-06-04', '510', '3', '6', '9', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('13', '2020-10-26', 'consumer', '520000', '2020-05-07', '2022-11-13', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '1', '4', '10', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('14', '2020-10-26', 'mortgage', '13000000', '2017-03-21', '2021-01-15', 'work', 'in_court', '11500000', '11500000', '11000000', '500000', '2018-08-20', '798', '2', '5', '11', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('15', '2020-10-26', 'credit card', '50000', '2018-11-11', '2022-06-19', 'work', 'in_court', '24000', '24000', '23000', '1000', '2019-04-15', '560', '3', '6', '12', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('16', '2020-10-26', 'credit card', '60000', '2019-05-19', '2021-02-01', 'work', 'in_restructing', '40000', '0', '0', '0', '2020-10-27', '0', '1', '4', '5', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('17', '2020-10-26', 'consumer', '600000', '2017-10-09', '2022-08-13', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-11-09', '717', '2', '5', '6', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('18', '2020-10-26', 'credit card', '70000', '2019-03-09', '2021-01-07', 'work', 'debtor', '79000', '74000', '70000', '4000', '2020-08-13', '74', '3', '6', '7', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('19', '2020-10-26', 'consumer', '590000', '2020-06-09', '2022-09-13', 'work', 'monitoring', '70000', '0', '0', '0', '2020-10-05', '0', '1', '4', '6', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('20', '2020-10-26', 'mortgage', '5200000', '2018-09-10', '2021-02-13', 'work', 'in_court', '4200000', '4000000', '3900000', '100000', '2019-03-19', '587', '2', '5', '13', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('1', '2020-10-27', 'credit card', '50000', '2017-11-27', '2021-02-20', 'work', 'in_restructing', '30000', '0', '0', '0', '2020-10-27', '0', '1', '4', '1', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('2', '2020-10-27', 'credit card', '60000', '2017-10-09', '2020-01-10', 'end', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '2', '5', '2', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('3', '2020-10-27', 'credit card', '75000', '2016-04-26', '2022-07-20', 'work', 'in_restructing', '42000', '28000', '27500', '500', '2019-12-20', '312', '3', '6', '3', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('4', '2020-10-27', 'credit card', '40000', '2018-04-06', '2021-11-20', 'work', 'in_court', '24000', '24000', '23000', '1000', '2019-06-07', '508', '1', '4', '4', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('5', '2020-10-27', 'mortgage', '5200000', '2016-03-08', '2022-01-23', 'work', 'in_restructing', '3800000', '200000', '197000', '3000', '2020-04-04', '206', '2', '5', '5', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('6', '2020-10-27', 'mortgage', '7800000', '2020-06-09', '2021-08-16', 'work', 'debtor', '7200000', '120000', '110000', '10000', '2020-09-27', '30', '3', '6', '6', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('7', '2020-10-27', 'consumer', '620000', '2020-01-31', '2022-07-28', 'work', 'debtor', '50000', '27000', '26500', '500', '2020-08-20', '68', '1', '4', '7', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('8', '2020-10-27', 'mortgage', '12000000', '2018-08-20', '2021-02-25', 'work', 'in_court', '8600000', '8550000', '8500000', '50000', '2019-03-25', '582', '2', '5', '8', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('9', '2020-10-27', 'credit card', '60000', '2017-07-08', '2022-11-02', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '3', '6', '1', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('10', '2020-10-27', 'credit card', '80000', '2018-05-21', '2021-09-14', 'work', 'in_court', '68000', '64000', '60000', '4000', '2019-02-18', '617', '1', '4', '3', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('11', '2020-10-27', 'credit card', '70000', '2016-12-26', '2022-08-12', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-10-06', '752', '2', '5', '5', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('12', '2020-10-27', 'mortgage', '6800000', '2018-03-22', '2021-02-03', 'work', 'in_court', '5700000', '5612830', '5600000', '12830', '2019-06-04', '511', '3', '6', '9', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('13', '2020-10-27', 'consumer', '520000', '2020-05-07', '2022-11-13', 'end_early', 'monitoring', '0', '0', '0', '0', '2020-10-27', '0', '1', '4', '10', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('14', '2020-10-27', 'mortgage', '13000000', '2017-03-21', '2021-01-15', 'work', 'in_court', '11500000', '11500000', '11000000', '500000', '2018-08-20', '799', '2', '5', '11', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('15', '2020-10-27', 'credit card', '50000', '2018-11-11', '2022-06-19', 'work', 'in_court', '24000', '24000', '23000', '1000', '2019-04-15', '561', '3', '6', '12', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('16', '2020-10-27', 'credit card', '60000', '2019-05-19', '2021-02-01', 'work', 'in_restructing', '30000', '0', '0', '0', '2020-10-27', '0', '1', '4', '5', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('17', '2020-10-27', 'consumer', '600000', '2017-10-09', '2022-08-13', 'work', 'in_ska', '42000', '28000', '27500', '500', '2018-11-09', '718', '2', '5', '6', '2');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('18', '2020-10-27', 'credit card', '70000', '2019-03-09', '2021-01-07', 'work', 'debtor', '68000', '64000', '60000', '4000', '2020-08-13', '75', '3', '6', '7', '3');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('19', '2020-10-27', 'consumer', '590000', '2020-06-09', '2022-09-13', 'work', 'debtor', '50000', '27000', '26500', '500', '2020-10-05', '22', '1', '4', '6', '1');
INSERT INTO `rm_cred_dogov` (`dog_number`, `calday`, `product`, `summa`, `issue_date`, `end_dt`, `status`, `stage`, `debt_total`, `debt_pr_total`, `debt_procent`, `debt_other`, `debt_day`, `debt_cnt_day`, `master_id`, `owner_id`, `con_id`, `id_filial`)
VALUES ('20', '2020-10-27', 'mortgage', '5200000', '2018-09-10', '2021-02-13', 'work', 'in_court', '4200000', '4000000', '3900000', '100000', '2019-03-19', '588', '2', '5', '13', '2');


DROP TABLE IF EXISTS rm_worker;
CREATE TABLE rm_worker(
  id serial primary key,
  pstn varchar(300) not null,
  fio varchar (200) not null,
  date_start date not null,
  date_end varchar(10),
  salary float unsigned not null,
  master_id bigint unsigned,
  foreign key (master_id) references rm_cred_dogov (master_id),
  foreign key (master_id) references rmk_cred_dogov (master_id),
  index (fio),
  index (id),
  index (date_start),
  index (date_end)
) COMMENT = 'Отвественные сотрудники';

INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('1', 'admin', 'Prof. Domenica Adams', '2015-11-01', '', '300000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('2', 'it', 'Adolfo Grady', '2016-03-21', '2019-10-21', '120690', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('3', 'it', 'Ms. Arlie Spencer Sr.', '2016-12-29', '', '100000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('4', 'claimant', 'Prof. Howell Friesen', '2015-12-10', '', '80000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('5', 'claimant', 'Dr. Maida Cartwright I', '2016-07-20', '', '60000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('6', 'claimant', 'Rasheed Larkin DDS', '2019-09-30', '', '100000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('7', 'recoverer', 'Gilda Harris', '2014-09-01', '', '500000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('8', 'claimant', 'Jackson Runolfsson III', '2019-09-28', '2019-11-04', '60157', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('9', 'claimant', 'Zaria Heidenreich', '2017-11-14', '2019-03-08', '80000', '1');
INSERT INTO `rm_worker` (`id`, `pstn`, `fio`, `date_start`, `date_end`, `salary`, `master_id`)
VALUES ('10', 'claimant', 'Gordon Jast', '2018-08-20', '2020-01-07', '140000', '1');


DROP TABLE IF EXISTS rm_filial;
CREATE TABLE rm_filial (
  id_filial bigint unsigned not null,
  id bigint unsigned not null,
  adress varchar(200) not null,
  foreign key (id_filial) references rm_cred_dogov (id_filial),
  foreign key (id_filial) references rmk_cred_dogov (id_filial),
  foreign key (id) references rm_worker (id),
  index (id_filial),
  index (adress)
) COMMENT = 'Перечень филиалов';

INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('1', '1', '1001 Mary St, Harrisville, WV, 26362');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('2', '2', '6430 Hagen Blvd, El Cerrito, CA, 94530');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('3', '3', '2028 Kimberly Dr, Mount Juliet, TN, 37122');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('1', '4', '1001 Mary St, Harrisville, WV, 26362');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('2', '5', '6430 Hagen Blvd, El Cerrito, CA, 94530');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('3', '6', '2028 Kimberly Dr, Mount Juliet, TN, 37122');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('1', '7', '1001 Mary St, Harrisville, WV, 26362');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('2', '8', '6430 Hagen Blvd, El Cerrito, CA, 94530');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('3', '9', '2028 Kimberly Dr, Mount Juliet, TN, 37122');
INSERT INTO `rm_filial` (`id_filial`, `id`, `adress`)
VALUES ('1', '10', '1001 Mary St, Harrisville, WV, 26362');


DROP TABLE IF EXISTS rm_person;
CREATE TABLE rm_person (
  con_id bigint unsigned not null unique,
  name varchar(40) not null,
  surname varchar(60) not null,
  patronymic varchar(40),
  bthday date not null,
  adress varchar(300) not null,
  email varchar(120) not null unique,
  phone varchar(120) not null unique,
  foreign key (con_id) references rm_cred_dogov (con_id),
  foreign key (con_id) references rmk_cred_dogov (con_id),
  index (name, surname),
  index (adress),
  index (email),
  index (phone)
) COMMENT = 'Физические лица';

INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('1', 'Thorndike', 'Parlatt', 'Cob', '1997-07-06', '4607 Cambridge Lane', 'cparlatt0@usgs.gov', '863-302-0916');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('2', 'Con', 'Minchell', 'Nicola', '1978-07-30', '4828 Sunnyside Circle', 'nminchell1@smugmug.com', '918-383-2496');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('3', 'Nedi', 'Mathiassen', 'Emery', '1977-06-12', '8 Pepper Wood Way', 'emathiassen2@vk.com', '400-179-5819');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('4', 'Errick', 'Burkart', 'Corbett', '1995-10-02', '8 Fallview Circle', 'cburkart3@reuters.com', '605-617-8192');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('5', 'Prent', 'Menichino', 'Alvy', '1972-01-28', '98538 Schurz Trail', 'amenichino4@bizjournals.com', '368-737-6910');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('6', 'Troy', 'Whitehall', 'Linc', '1994-11-04', '77584 Southridge Alley', 'lwhitehall5@miibeian.gov.cn', '213-560-2324');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('7', 'Gallard', 'Oager', 'Cobbie', '1977-05-03', '047 Harper Center', 'coager6@storify.com', '257-583-6302');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('8', 'Craggy', 'Ogelbe', 'Augustin', '1987-12-06', '04 Golf Way', 'aogelbe7@dion.ne.jp', '865-275-0181');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('9', 'Stern', 'Iacomettii', 'Vasily', '1980-02-22', '6093 Swallow Trail', 'viacomettii8@jugem.jp', '281-784-0481');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('10', 'Judi', 'Blow', 'Mose', '1998-09-06', '45 Garrison Avenue', 'mblow9@fda.gov', '440-830-7600');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('11', 'Astra', 'Thomkins', 'Granville', '1974-08-13', '367 Montana Drive', 'gthomkinsa@comsenz.com', '304-427-6498');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('12', 'Constancia', 'Maplethorp', 'Kilian', '1990-05-08', '0 Express Point', 'kmaplethorpb@hostgator.com', '535-645-9032');
INSERT INTO `rm_person` (`con_id`, `name`, `surname`, `patronymic`, `bthday`, `adress`, `email`, `phone`)
VALUES ('13', 'Willetta', 'Hundal', 'Franklyn', '1989-07-04', '644 Sloan Avenue', 'fhundalc@usatoday.com', '808-206-6823');

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

INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('1', '5', '5200000', 'sell', '5');
INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('2', '6', '7800000', 'in_client', '6');
INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('3', '8', '12000000', 'in_bank', '8');
INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('4', '9', '6800000', 'in_bank', '12');
INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('5', '11', '13000000', 'in_bank', '14');
INSERT INTO `rm_zalog_dogov`  (`dog_zal_number`, `con_id`, `summa`, `status`, `dog_number`)
VALUES ('6', '13', '5200000', 'in_bank', '20');

DROP TABLE IF EXISTS rm_graph;
CREATE TABLE rm_graph(
  dog_number bigint unsigned not null,
  con_id bigint unsigned not null,
  date_pay date not null,
  summa_pay float not null,
  status enum ('0','1'),
  foreign key (dog_number)  references rm_cred_dogov (dog_number),
  foreign key (dog_number)  references rmk_cred_dogov (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  index (dog_number),
  index (date_pay),
  index (status)
) COMMENT = 'Графики платежей';

INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2017-12-01', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2017-12-31', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-01-30', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-03-01', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-03-31', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-04-30', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-05-30', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-06-29', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-07-29', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-08-28', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-09-27', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-10-27', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-11-26', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2018-12-26', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-01-25', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-02-24', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-03-26', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-04-25', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-05-25', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-06-24', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-07-24', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-08-23', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-09-22', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-10-22', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-11-21', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2019-12-21', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-01-20', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-02-19', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-03-20', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-04-19', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-05-19', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-06-18', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-07-18', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-08-17', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-09-16', '1316', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-10-16', '1316', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-11-15', '1316', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2020-12-15', '1316', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('1', '1', '2021-01-14', '1316', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2017-10-20', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2017-11-19', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2017-12-19', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-01-18', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-02-17', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-03-19', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-04-18', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-05-18', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-06-17', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-07-17', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-08-16', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-09-15', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-10-15', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-11-14', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2018-12-14', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-01-13', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-02-12', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-03-14', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-04-13', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-05-13', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-06-12', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-07-12', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-08-11', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-09-10', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-10-10', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-11-09', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2019-12-09', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('2', '2', '2020-01-08', '2222', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-06-01', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-07-01', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-07-31', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-08-30', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-09-29', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-10-29', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-11-28', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2016-12-28', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-01-27', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-02-26', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-03-28', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-04-27', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-05-27', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-06-26', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-07-26', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-08-25', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-09-24', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-10-24', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-11-23', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2017-12-23', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-01-22', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-02-21', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-03-23', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-04-22', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-05-22', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-06-21', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-07-21', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-08-20', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-09-19', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-10-19', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-11-18', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2018-12-18', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-01-17', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-02-16', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-03-18', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-04-17', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-05-17', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-06-16', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-07-16', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-08-15', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-09-14', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-10-14', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-11-13', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2019-12-13', '1014', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-01-12', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-02-11', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-03-12', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-04-11', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-05-11', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-06-10', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-07-10', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-08-09', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-09-08', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-10-08', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-11-07', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2020-12-07', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-01-06', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-02-05', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-03-07', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-04-06', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-05-06', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-06-05', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-07-05', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-08-04', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-09-03', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-10-03', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-11-02', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2021-12-02', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-01-01', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-01-31', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-03-02', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-04-01', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-05-01', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-05-31', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('3', '3', '2022-06-30', '1014', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-04-20', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-05-20', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-06-19', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-07-19', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-08-18', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-09-17', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-10-17', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-11-16', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2018-12-16', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-01-15', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-02-14', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-03-16', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-04-15', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-05-15', '930', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-06-14', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-07-14', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-08-13', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-09-12', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-10-12', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-11-11', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2019-12-11', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-01-10', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-02-09', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-03-10', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-04-09', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-05-09', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-06-08', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-07-08', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-08-07', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-09-06', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-10-06', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-11-05', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2020-12-05', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-01-04', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-02-03', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-03-05', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-04-04', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-05-04', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-06-03', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-07-03', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-08-02', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-09-01', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-10-01', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('4', '4', '2021-10-31', '930', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-03-20', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-04-19', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-05-19', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-06-18', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-07-18', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-08-17', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-09-16', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-10-16', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-11-15', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2016-12-15', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-01-14', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-02-13', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-03-15', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-04-14', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-05-14', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-06-13', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-07-13', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-08-12', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-09-11', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-10-11', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-11-10', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2017-12-10', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-01-09', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-02-08', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-03-10', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-04-09', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-05-09', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-06-08', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-07-08', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-08-07', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-09-06', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-10-06', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-11-05', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2018-12-05', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-01-04', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-02-03', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-03-05', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-04-04', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-05-04', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-06-03', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-07-03', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-08-02', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-09-01', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-10-01', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-10-31', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-11-30', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2019-12-30', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-01-29', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-02-28', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-03-29', '74286', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-04-28', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-05-28', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-06-27', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-07-27', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-08-26', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-09-25', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-10-25', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-11-24', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2020-12-24', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-01-23', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-02-22', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-03-24', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-04-23', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-05-23', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-06-22', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-07-22', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-08-21', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-09-20', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-10-20', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-11-19', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('5', '5', '2021-12-19', '74286', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-06-20', '557143', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-07-20', '557143', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-08-19', '557143', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-09-18', '557143', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-10-18', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-11-17', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2020-12-17', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-01-16', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-02-15', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-03-17', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-04-16', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-05-16', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-06-15', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-07-15', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('6', '6', '2021-08-14', '557143', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-02-01', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-03-02', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-04-01', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-05-01', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-05-31', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-06-30', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-07-30', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-08-29', '21379', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-09-28', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-10-28', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-11-27', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2020-12-27', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-01-26', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-02-25', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-03-27', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-04-26', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-05-26', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-06-25', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-07-25', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-08-24', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-09-23', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-10-23', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-11-22', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2021-12-22', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-01-21', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-02-20', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-03-22', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-04-21', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-05-21', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('7', '7', '2022-06-20', '21379', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2018-09-01', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2018-10-01', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2018-10-31', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2018-11-30', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2018-12-30', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-01-29', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-02-28', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-03-30', '400000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-04-29', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-05-29', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-06-28', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-07-28', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-08-27', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-09-26', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-10-26', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-11-25', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2019-12-25', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-01-24', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-02-23', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-03-24', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-04-23', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-05-23', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-06-22', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-07-22', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-08-21', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-09-20', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-10-20', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-11-19', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2020-12-19', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2021-01-18', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('8', '8', '2021-02-17', '400000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2017-08-20', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2017-09-19', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2017-10-19', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2017-11-18', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2017-12-18', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-01-17', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-02-16', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-03-18', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-04-17', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-05-17', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-06-16', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-07-16', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-08-15', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-09-14', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-10-14', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-11-13', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2018-12-13', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-01-12', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-02-11', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-03-13', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-04-12', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-05-12', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-06-11', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-07-11', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-08-10', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-09-09', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-10-09', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-11-08', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2019-12-08', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-01-07', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-02-06', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-03-07', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-04-06', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-05-06', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-06-05', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-07-05', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-08-04', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-09-03', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-10-03', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-11-02', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2020-12-02', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-01-01', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-01-31', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-03-02', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-04-01', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-05-01', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-05-31', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-06-30', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-07-30', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-08-29', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-09-28', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-10-28', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-11-27', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2021-12-27', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-01-26', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-02-25', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-03-27', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-04-26', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-05-26', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-06-25', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-07-25', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-08-24', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-09-23', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('9', '1', '2022-10-23', '952', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-06-01', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-07-01', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-07-31', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-08-30', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-09-29', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-10-29', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-11-28', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2018-12-28', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-01-27', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-02-26', '2051', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-03-28', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-04-27', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-05-27', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-06-26', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-07-26', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-08-25', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-09-24', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-10-24', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-11-23', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2019-12-23', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-01-22', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-02-21', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-03-22', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-04-21', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-05-21', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-06-20', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-07-20', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-08-19', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-09-18', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-10-18', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-11-17', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2020-12-17', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-01-16', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-02-15', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-03-17', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-04-16', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-05-16', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-06-15', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-07-15', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('10', '3', '2021-08-14', '2051', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-01-01', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-01-31', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-03-02', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-04-01', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-05-01', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-05-31', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-06-30', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-07-30', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-08-29', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-09-28', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-10-28', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-11-27', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2017-12-27', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-01-26', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-02-25', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-03-27', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-04-26', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-05-26', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-06-25', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-07-25', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-08-24', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-09-23', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-10-23', '1045', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-11-22', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2018-12-22', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-01-21', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-02-20', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-03-22', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-04-21', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-05-21', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-06-20', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-07-20', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-08-19', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-09-18', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-10-18', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-11-17', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2019-12-17', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-01-16', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-02-15', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-03-16', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-04-15', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-05-15', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-06-14', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-07-14', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-08-13', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-09-12', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-10-12', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-11-11', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2020-12-11', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-01-10', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-02-09', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-03-11', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-04-10', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-05-10', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-06-09', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-07-09', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-08-08', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-09-07', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-10-07', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-11-06', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2021-12-06', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-01-05', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-02-04', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-03-06', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-04-05', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-05-05', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-06-04', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('11', '5', '2022-07-04', '1045', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-04-01', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-05-01', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-05-31', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-06-30', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-07-30', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-08-29', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-09-28', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-10-28', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-11-27', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2018-12-27', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-01-26', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-02-25', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-03-27', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-04-26', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-05-26', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-06-25', '200000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-07-25', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-08-24', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-09-23', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-10-23', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-11-22', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2019-12-22', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-01-21', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-02-20', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-03-21', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-04-20', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-05-20', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-06-19', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-07-19', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-08-18', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-09-17', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-10-17', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-11-16', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2020-12-16', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('12', '9', '2021-01-15', '200000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-05-20', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-06-19', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-07-19', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-08-18', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-09-17', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-10-17', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-11-16', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2020-12-16', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-01-15', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-02-14', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-03-16', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-04-15', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-05-15', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-06-14', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-07-14', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-08-13', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-09-12', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-10-12', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-11-11', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2021-12-11', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-01-10', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-02-09', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-03-11', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-04-10', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-05-10', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-06-09', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-07-09', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-08-08', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-09-07', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-10-07', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-11-06', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('13', '10', '2022-12-06', '17333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-04-01', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-05-01', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-05-31', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-06-30', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-07-30', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-08-29', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-09-28', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-10-28', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-11-27', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2017-12-27', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-01-26', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-02-25', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-03-27', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-04-26', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-05-26', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-06-25', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-07-25', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-08-24', '288889', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-09-23', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-10-23', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-11-22', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2018-12-22', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-01-21', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-02-20', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-03-22', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-04-21', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-05-21', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-06-20', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-07-20', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-08-19', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-09-18', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-10-18', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-11-17', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2019-12-17', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-01-16', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-02-15', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-03-16', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-04-15', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-05-15', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-06-14', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-07-14', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-08-13', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-09-12', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-10-12', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('14', '11', '2020-11-11', '288889', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2018-12-01', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2018-12-31', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-01-30', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-03-01', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-03-31', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-04-30', '1163', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-05-30', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-06-29', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-07-29', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-08-28', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-09-27', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-10-27', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-11-26', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2019-12-26', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-01-25', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-02-24', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-03-25', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-04-24', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-05-24', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-06-23', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-07-23', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-08-22', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-09-21', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-10-21', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-11-20', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2020-12-20', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-01-19', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-02-18', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-03-20', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-04-19', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-05-19', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-06-18', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-07-18', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-08-17', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-09-16', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-10-16', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-11-15', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2021-12-15', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-01-14', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-02-13', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-03-15', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-04-14', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-05-14', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-06-13', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('15', '12', '2022-07-13', '1163', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-06-01', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-07-01', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-07-31', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-08-30', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-09-29', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-10-29', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-11-28', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2019-12-28', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-01-27', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-02-26', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-03-27', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-04-26', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-05-26', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-06-25', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-07-25', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-08-24', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-09-23', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-10-23', '3000', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-11-22', '3000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2020-12-22', '3000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('16', '5', '2021-01-21', '3000', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2017-10-20', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2017-11-19', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2017-12-19', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-01-18', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-02-17', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-03-19', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-04-18', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-05-18', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-06-17', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-07-17', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-08-16', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-09-15', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-10-15', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-11-14', '10345', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2018-12-14', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-01-13', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-02-12', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-03-14', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-04-13', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-05-13', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-06-12', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-07-12', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-08-11', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-09-10', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-10-10', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-11-09', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2019-12-09', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-01-08', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-02-07', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-03-08', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-04-07', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-05-07', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-06-06', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-07-06', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-08-05', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-09-04', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-10-04', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-11-03', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2020-12-03', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-01-02', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-02-01', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-03-03', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-04-02', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-05-02', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-06-01', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-07-01', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-07-31', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-08-30', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-09-29', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-10-29', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-11-28', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2021-12-28', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-01-27', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-02-26', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-03-28', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-04-27', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-05-27', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-06-26', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('17', '6', '2022-07-26', '10345', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-03-20', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-04-19', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-05-19', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-06-18', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-07-18', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-08-17', '3333', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-09-16', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-10-16', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-11-15', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2020-12-15', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-01-14', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-02-13', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-03-15', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-04-14', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-05-14', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-06-13', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-07-13', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-08-12', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-09-11', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-10-11', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-11-10', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('18', '7', '2021-12-10', '3333', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-06-20', '21852', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-07-20', '21852', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-08-19', '21852', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-09-18', '21852', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-10-18', '21852', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-11-17', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2020-12-17', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-01-16', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-02-15', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-03-17', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-04-16', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-05-16', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-06-15', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-07-15', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-08-14', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-09-13', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-10-13', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-11-12', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2021-12-12', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-01-11', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-02-10', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-03-12', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-04-11', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-05-11', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-06-10', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-07-10', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-08-09', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-09-08', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('19', '6', '2022-10-08', '21852', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2018-09-20', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2018-10-20', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2018-11-19', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2018-12-19', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-01-18', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-02-17', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-03-19', '179310', '1');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-04-18', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-05-18', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-06-17', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-07-17', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-08-16', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-09-15', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-10-15', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-11-14', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2019-12-14', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-01-13', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-02-12', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-03-13', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-04-12', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-05-12', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-06-11', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-07-11', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-08-10', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-09-09', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-10-09', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-11-08', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2020-12-08', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2021-01-07', '179310', '0');
INSERT INTO `rm_graph` (`dog_number`, `con_id`, `date_pay`, `summa_pay`, `status`) VALUES ('20', '13', '2021-02-06', '179310', '0');

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

INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2017-12-01', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2017-12-31', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-01-30', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-03-01', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-03-31', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-04-30', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-05-30', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-06-29', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-07-29', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-08-28', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-09-27', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-10-27', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-11-26', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2018-12-26', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-01-25', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-02-24', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-03-26', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-04-25', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-05-25', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-06-24', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-07-24', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-08-23', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-09-22', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-10-22', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-11-21', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2019-12-21', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-01-20', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-02-19', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-03-20', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-04-19', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-05-19', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-06-18', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-07-18', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-08-17', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('1', '1', '2020-09-16', '1316', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2017-10-20', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2017-11-19', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2017-12-19', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-01-18', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-02-17', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-03-19', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-04-18', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-05-18', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-06-17', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-07-17', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-08-16', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-09-15', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-10-15', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-11-14', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2018-12-14', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-01-13', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-02-12', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-03-14', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-04-13', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-05-13', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-06-12', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-07-12', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-08-11', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-09-10', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-10-10', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-11-09', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2019-12-09', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('2', '2', '2020-01-08', '2222', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-06-01', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-07-01', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-07-31', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-08-30', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-09-29', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-10-29', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-11-28', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2016-12-28', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-01-27', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-02-26', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-03-28', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-04-27', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-05-27', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-06-26', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-07-26', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-08-25', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-09-24', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-10-24', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-11-23', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2017-12-23', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-01-22', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-02-21', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-03-23', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-04-22', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-05-22', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-06-21', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-07-21', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-08-20', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-09-19', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-10-19', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-11-18', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2018-12-18', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-01-17', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-02-16', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-03-18', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-04-17', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-05-17', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-06-16', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-07-16', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-08-15', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-09-14', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-10-14', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-11-13', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('3', '3', '2019-12-13', '1014', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-04-20', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-05-20', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-06-19', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-07-19', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-08-18', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-09-17', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-10-17', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-11-16', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2018-12-16', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2019-01-15', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2019-02-14', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2019-03-16', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2019-04-15', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('4', '4', '2019-05-15', '930', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-03-20', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-04-19', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-05-19', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-06-18', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-07-18', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-08-17', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-09-16', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-10-16', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-11-15', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2016-12-15', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-01-14', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-02-13', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-03-15', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-04-14', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-05-14', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-06-13', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-07-13', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-08-12', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-09-11', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-10-11', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-11-10', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2017-12-10', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-01-09', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-02-08', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-03-10', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-04-09', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-05-09', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-06-08', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-07-08', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-08-07', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-09-06', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-10-06', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-11-05', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2018-12-05', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-01-04', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-02-03', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-03-05', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-04-04', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-05-04', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-06-03', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-07-03', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-08-02', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-09-01', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-10-01', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-10-31', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-11-30', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2019-12-30', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2020-01-29', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2020-02-28', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('5', '5', '2020-03-29', '74286', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('6', '6', '2020-06-20', '557143', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('6', '6', '2020-07-20', '557143', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('6', '6', '2020-08-19', '557143', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('6', '6', '2020-09-18', '557143', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-02-01', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-03-02', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-04-01', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-05-01', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-05-31', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-06-30', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-07-30', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('7', '7', '2020-08-29', '21379', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2018-09-01', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2018-10-01', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2018-10-31', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2018-11-30', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2018-12-30', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2019-01-29', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2019-02-28', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('8', '8', '2019-03-30', '400000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2017-08-20', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2017-09-19', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2017-10-19', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2017-11-18', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2017-12-18', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-01-17', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-02-16', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-03-18', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-04-17', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-05-17', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-06-16', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-07-16', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-08-15', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-09-14', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-10-14', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-11-13', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2018-12-13', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-01-12', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-02-11', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-03-13', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-04-12', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-05-12', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-06-11', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-07-11', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-08-10', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-09-09', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-10-09', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-11-08', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2019-12-08', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-01-07', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-02-06', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-03-07', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-04-06', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-05-06', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-06-05', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-07-05', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-08-04', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-09-03', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-10-03', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-11-02', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2020-12-02', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-01-01', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-01-31', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-03-02', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-04-01', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-05-01', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-05-31', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-06-30', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-07-30', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-08-29', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-09-28', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-10-28', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-11-27', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2021-12-27', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-01-26', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-02-25', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-03-27', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-04-26', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-05-26', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-06-25', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-07-25', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-08-24', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-09-23', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('9', '1', '2022-10-23', '952', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-06-01', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-07-01', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-07-31', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-08-30', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-09-29', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-10-29', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-11-28', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2018-12-28', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2019-01-27', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('10', '3', '2019-02-26', '2051', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-01-01', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-01-31', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-03-02', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-04-01', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-05-01', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-05-31', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-06-30', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-07-30', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-08-29', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-09-28', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-10-28', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-11-27', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2017-12-27', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-01-26', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-02-25', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-03-27', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-04-26', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-05-26', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-06-25', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-07-25', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-08-24', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-09-23', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('11', '5', '2018-10-23', '1045', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-04-01', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-05-01', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-05-31', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-06-30', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-07-30', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-08-29', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-09-28', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-10-28', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-11-27', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2018-12-27', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-01-26', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-02-25', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-03-27', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-04-26', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-05-26', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('12', '9', '2019-06-25', '200000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-05-20', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-06-19', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-07-19', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-08-18', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-09-17', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-10-17', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-11-16', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2020-12-16', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-01-15', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-02-14', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-03-16', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-04-15', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-05-15', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-06-14', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-07-14', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-08-13', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-09-12', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-10-12', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-11-11', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2021-12-11', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-01-10', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-02-09', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-03-11', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-04-10', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-05-10', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-06-09', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-07-09', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-08-08', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-09-07', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-10-07', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-11-06', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('13', '10', '2022-12-06', '17333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-04-01', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-05-01', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-05-31', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-06-30', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-07-30', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-08-29', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-09-28', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-10-28', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-11-27', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2017-12-27', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-01-26', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-02-25', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-03-27', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-04-26', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-05-26', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-06-25', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-07-25', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('14', '11', '2018-08-24', '288889', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2018-12-01', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2018-12-31', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2019-01-30', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2019-03-01', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2019-03-31', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('15', '12', '2019-04-30', '1163', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-06-01', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-07-01', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-07-31', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-08-30', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-09-29', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-10-29', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-11-28', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2019-12-28', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-01-27', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-02-26', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-03-27', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-04-26', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-05-26', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-06-25', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-07-25', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-08-24', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-09-23', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('16', '5', '2020-10-23', '3000', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2017-10-20', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2017-11-19', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2017-12-19', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-01-18', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-02-17', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-03-19', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-04-18', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-05-18', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-06-17', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-07-17', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-08-16', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-09-15', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-10-15', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('17', '6', '2018-11-14', '10345', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-03-20', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-04-19', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-05-19', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-06-18', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-07-18', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('18', '7', '2020-08-17', '3333', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('19', '6', '2020-06-20', '21852', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('19', '6', '2020-07-20', '21852', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('19', '6', '2020-08-19', '21852', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('19', '6', '2020-09-18', '21852', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('19', '6', '2020-10-18', '21852', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2018-09-20', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2018-10-20', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2018-11-19', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2018-12-19', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2019-01-18', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2019-02-17', '179310', '1052.8', '197.4', '65.8');
INSERT INTO `rm_pays` (`dog_number`, `con_id`, `date_pay`, `pay_total`, `pay_pr_total`, `pay_procent`, `pay_other`) VALUES ('20', '13', '2019-03-19', '179310', '1052.8', '197.4', '65.8');

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
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  index (row_id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (act_type),
  index (act_subtype),
  index (x_result)
) COMMENT = 'Задачи';

INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('1', '1', '4', '1', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-27', '2020-10-28', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('2', '1', '4', '1', 'Входящий звонок', 'Заявка на реструктуризацию', 'Done', '2020-08-25', '2020-08-25', 'Просит реструктуризацию на пол года');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('3', '1', '4', '1', 'Подготовка документов', 'Проведение реструктуризации', 'Done', '2020-08-26', '2020-08-26', 'Реструктуризация проведена');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('4', '2', '5', '2', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-27', '2020-10-27', 'Обещал закрыть долг');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('5', '3', '6', '3', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-12-20', '2019-12-20', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('6', '3', '6', '3', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-01-09', '2020-01-09', 'Семейные пробелемы, прости отсрочку');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('7', '3', '6', '3', 'Подготовка документов', 'Проведение реструктуризации', 'Done', '2020-01-26', '2020-01-26', 'Реструктуризация проведена');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('8', '4', '4', '4', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-06-07', '2019-06-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('9', '4', '4', '4', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-07-07', '2019-07-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('10', '4', '4', '4', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-08-07', '2019-08-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('11', '4', '4', '4', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-09-07', '2020-09-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('12', '5', '5', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-04-04', '2020-04-04', 'Семейные пробелемы, прости отсрочку');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('13', '5', '5', '5', 'Подготовка документов', 'Проведение реструктуризации', 'Done', '2020-05-10', '2020-05-11', 'Реструктуризация проведена');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('14', '6', '6', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-09-27', '2020-09-27', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('15', '7', '4', '7', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-08-20', '2020-08-20', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('16', '8', '5', '8', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-03-25', '2019-03-25', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('17', '8', '5', '8', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-07-07', '2019-07-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('18', '8', '5', '8', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-08-07', '2019-08-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('19', '8', '5', '8', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-09-07', '2020-09-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('20', '9', '6', '1', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-27', '2020-10-28', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('21', '10', '4', '3', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-02-18', '2019-02-18', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('22', '10', '4', '3', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-03-07', '2019-03-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('23', '10', '4', '3', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-04-07', '2019-04-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('24', '10', '4', '3', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-05-07', '2020-05-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('25', '11', '5', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2018-10-06', '2018-10-06', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('26', '11', '5', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-02-18', '2019-02-18', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('27', '11', '5', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-03-07', '2019-03-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('28', '11', '5', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-04-07', '2019-04-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('29', '11', '5', '5', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-05-07', '2020-05-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('30', '11', '5', '5', 'Подготовка документов', 'Передача в СКА', 'Done', '2020-08-20', '2020-08-20', 'Передан в СКА для взыскания остатков задолженности');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('31', '12', '6', '9', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-06-04', '2019-06-04', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('32', '12', '6', '9', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-07-07', '2019-07-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('33', '12', '6', '9', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-08-07', '2019-08-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('34', '12', '6', '9', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-09-07', '2020-09-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('35', '13', '4', '10', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-27', '2020-10-28', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('36', '14', '5', '11', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2018-08-20', '2018-08-20', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('37', '14', '5', '11', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2018-09-07', '2018-09-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('38', '14', '5', '11', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2018-10-07', '2018-10-07', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('39', '14', '5', '11', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-11-27', '2019-11-27', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('40', '15', '6', '12', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-06-07', '2019-06-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('41', '15', '6', '12', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-07-07', '2019-07-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('42', '15', '6', '12', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-08-07', '2019-08-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('43', '15', '6', '12', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-09-07', '2020-09-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('44', '16', '4', '5', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-27', '2020-10-28', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('45', '16', '4', '5', 'Входящий звонок', 'Заявка на реструктуризацию', 'Done', '2020-08-25', '2020-08-25', 'Просит реструктуризацию на пол года');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('46', '16', '4', '5', 'Подготовка документов', 'Проведение реструктуризации', 'Done', '2020-08-26', '2020-08-26', 'Реструктуризация проведена');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('47', '17', '5', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2018-11-09', '2018-11-09', 'Забыл оплатить,закроет просрочку завтра');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('48', '17', '5', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-02-18', '2019-02-18', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('49', '17', '5', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-03-07', '2019-03-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('50', '17', '5', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-04-07', '2019-04-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('51', '17', '5', '6', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-05-07', '2020-05-20', 'Документы подготовлены и переданы в суд');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('52', '17', '5', '6', 'Подготовка документов', 'Передача в СКА', 'Done', '2020-08-20', '2020-08-20', 'Передан в СКА для взыскания остатков задолженности');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('53', '18', '6', '7', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-08-13', '2020-08-13', 'Обещал закрыть долг');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('54', '19', '4', '6', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2020-10-05', '2020-10-05', 'Обещал закрыть долг');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('55', '20', '5', '13', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-06-07', '2019-06-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('56', '20', '5', '13', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-07-07', '2019-07-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('57', '20', '5', '13', 'Исходящий звонок', 'Информирование о задолженности', 'Done', '2019-08-07', '2019-08-07', 'Отказывается платить');
INSERT INTO `rm_task` (`row_id`, `dog_number`, `owner_id`, `con_id`, `act_type`, `act_subtype`, `x_result`, `start_date`, `end_fact_date`, `comment`) VALUES ('58', '20', '5', '13', 'Подготовка документов', 'Передача Должника в суд', 'Done', '2020-09-07', '2020-09-20', 'Документы подготовлены и переданы в суд');

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
  foreign key (dog_number) references rm_task (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (con_id)  references rm_task (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  foreign key (owner_id)  references rm_task (owner_id),
  index (id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (type_name)
) COMMENT = 'Спецпрограммы/реструктризация';

INSERT INTO `rm_restracting` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`) VALUES ('1', '1', '4', '1', 'Острочка долга', '2020-08-26', '2021-04-26');
INSERT INTO `rm_restracting` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`) VALUES ('2', '3', '6', '3', 'Снижение платежа', '2020-01-26', '2020-09-26');
INSERT INTO `rm_restracting` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`) VALUES ('3', '5', '5', '5', 'Острочка долга', '2020-05-11', '2020-12-11');
INSERT INTO `rm_restracting` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`) VALUES ('4', '16', '4', '5', 'Снижение платежа', '2020-08-26', '2021-04-26');

DROP TABLE IF EXISTS rm_reestr_work;
CREATE TABLE rm_reestr_work (
  id serial primary key,
  dog_number bigint unsigned not null,
  owner_id bigint unsigned not null,
  con_id bigint unsigned not null,
  type_name varchar(100) not null,
  start_date date not null,
  end_date date not null,
  status enum ('0','1'),
  foreign key (dog_number) references rm_cred_dogov (dog_number),
  foreign key (dog_number) references rmk_cred_dogov (dog_number),
  foreign key (dog_number) references rm_pays (dog_number),
  foreign key (dog_number) references rm_graph (dog_number),
  foreign key (dog_number) references rm_task (dog_number),
  foreign key (con_id)  references rm_cred_dogov (con_id),
  foreign key (con_id)  references rmk_cred_dogov (con_id),
  foreign key (con_id)  references rm_person (con_id),
  foreign key (con_id)  references rm_task (con_id),
  foreign key (owner_id)  references rm_cred_dogov (owner_id),
  foreign key (owner_id)  references rmk_cred_dogov (owner_id),
  foreign key (owner_id)  references rm_task (owner_id),
  index (id),
  index (dog_number),
  index (owner_id),
  index (con_id),
  index (type_name)
) COMMENT = 'Агентсва/суды';

INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('1', '4', '4', '4', 'Суд', '2020-09-07', '2020-11-07', '0');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('2', '8', '5', '8', 'Суд', '2020-09-07', '2020-11-07', '0');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('3', '10', '4', '3', 'Суд', '2020-05-07', '2020-08-07', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('4', '11', '5', '5', 'Суд', '2020-05-07', '2020-08-07', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('5', '11', '5', '5', 'СКА', '2020-08-20', '2020-09-20', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('6', '12', '6', '9', 'Суд', '2020-09-07', '2020-11-07', '0');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('7', '14', '5', '11', 'Суд', '2018-10-07', '2019-02-07', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('8', '15', '6', '12', 'Суд', '2020-09-07', '2020-11-07', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('9', '17', '5', '6', 'Суд', '2020-05-07', '2020-08-07', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('10', '17', '5', '6', 'СКА', '2020-08-20', '2020-10-20', '1');
INSERT INTO `rm_reestr_work` (`id`, `dog_number`, `owner_id`, `con_id`, `type_name`, `start_date`, `end_date`, `status`) VALUES ('11', '20', '5', '13', 'Суд', '2020-09-07', '2020-11-07', '1');
