CREATE DATABASE IF NOT EXISTS `source`;

create table source.users
(
	reference int auto_increment primary key,
	name varchar(100) null,
	date_created datetime null,
	last_interaction datetime null,
	setting_1 tinyint(1) default '0' null,
	setting_2 int default '0' null
);

INSERT INTO source.users (`name`, `date_created`, `setting_1`)
    VALUES
      ('John Smith', '2017-01-01 10:00:00', TRUE),
      ('Robert Todd', '2017-01-02 09:00:00', FALSE),
      ('Tony Robinson', '2017-01-01 19:00:00', TRUE),
      ('Barry Scott', '2016-12-25 15:00:00', FALSE);

UPDATE source.users SET last_interaction = '2017-01-01 01:00:00';