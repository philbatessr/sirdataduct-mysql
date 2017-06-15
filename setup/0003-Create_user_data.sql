USE `source`;

INSERT INTO users (`name`, `date_created`, `setting_1`)
    VALUES
      ('John Smith', '2017-01-01 10:00:00', TRUE),
      ('Robert Todd', '2017-01-02 09:00:00', FALSE),
      ('Tony Robinson', '2017-01-01 19:00:00', TRUE),
      ('Barry Scott', '2016-12-25 15:00:00', FALSE);

UPDATE source.users SET last_interaction = '2017-01-01 01:00:00' WHERE `name` = 'Barry Scott';
