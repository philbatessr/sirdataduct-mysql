USE `source`;

CREATE TABLE users
(
	reference int auto_increment primary key,
	name varchar(100) null,
	date_created datetime null,
	last_interaction datetime null,
	setting_1 tinyint(1) default '0' null,
	setting_2 int default '0' null
);