create database test COLLATE utf8_general_ci;
create table test.user (
  `id` INT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `age` INT NOT NULL,
  `isAdmin` BIT NOT NULL,
  `createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
COLLATE utf8_general_ci;

INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (1,'Георгий Иванович',65,'1','2016-05-11 17:46:45');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (2,'Евгений Колесов',44,'1','2016-05-11 19:00:20');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (3,'Глеб Колесов',7,'0','2016-05-11 19:00:31');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (4,'Милана',5,'0','2016-05-11 19:00:40');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (5,'Агата',3,'0','2016-05-11 19:00:49');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (6,'Афродита',27,'0','2016-05-11 19:01:04');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (7,'Егор',15,'0','2016-05-11 19:01:19');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (8,'Брюс Хлебников',32,'0','2016-05-11 19:01:39');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (9,'Брендан Ли',67,'0','2016-05-11 19:01:52');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (10,'Марк Дакаскас',52,'0','2016-05-11 19:02:09');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (11,'Джон Траволта',58,'0','2016-05-11 19:02:24');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (12,'Max',25,'1','2016-05-11 19:20:00');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (13,'Николя',27,'1','2016-05-12 08:47:15');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (14,'Сергей Анатольевич',38,'0','2016-05-12 10:13:57');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (15,'Мишель Макаровна',13,'0','2016-05-12 10:14:22');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (16,'Карабас',88,'0','2016-05-12 10:14:36');
INSERT INTO `User` (`id`,`name`,`age`,`isAdmin`,`createdDate`) VALUES (17,'Барабас',9,'1','2016-05-12 10:14:45');