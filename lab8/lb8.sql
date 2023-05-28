SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `links` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `files` (`id`, `links`) VALUES
(1,	'https://github.com/SyrenTen/Maslova_V_SQL'),
(2,	'https://github.com/SyrenTen/Maslova_V_SQL/tree/main/lab6'),
(3,	'https://docs.google.com/document'),
(4,	'https://github.com/SyrenTen');

DROP TABLE IF EXISTS `fprojects`;
CREATE TABLE `fprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files_id` int(10) unsigned NOT NULL,
  `projects_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_id` (`files_id`),
  KEY `projects_id` (`projects_id`),
  CONSTRAINT `fprojects_ibfk_1` FOREIGN KEY (`files_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fprojects_ibfk_2` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fprojects_ibfk_3` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `fprojects` (`id`, `files_id`, `projects_id`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	4,	4);

DROP TABLE IF EXISTS `ftasks`;
CREATE TABLE `ftasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files_id` int(10) unsigned NOT NULL,
  `tasks_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_id` (`files_id`),
  KEY `tasks_id` (`tasks_id`),
  CONSTRAINT `ftasks_ibfk_1` FOREIGN KEY (`files_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ftasks_ibfk_2` FOREIGN KEY (`tasks_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ftasks` (`id`, `files_id`, `tasks_id`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	4,	4);

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `users_project` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `projects` (`id`, `name`, `users_project`) VALUES
(1,	'Project#1',	1),
(2,	'MYNEWPROJECTT',	2),
(3,	'Proect_3',	3),
(4,	'Maybe_good_maybe_not_prj',	4);

DROP TABLE IF EXISTS `project_user`;
CREATE TABLE `project_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `project_user_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `project_user` (`id`, `project_id`, `user_id`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3);

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  `description` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tasks` (`id`, `name`, `author_id`, `project_id`, `description`) VALUES
(1,	'Somename',	1,	1,	'some_name_maybe'),
(2,	'Taaskname',	2,	2,	'itslittlehard'),
(3,	'Whatisname',	3,	3,	'description'),
(4,	'Fantasyoff',	4,	4,	'reallynomorefantasy');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1,	'Maslova Vitaliia',	'vitaliay04@gmail.com'),
(2,	'Mukuta Lukiyanov', 'mikita@ukr.net'),
(3,	'Iliia Lukiyanov', 'iluha@gmail.com'),
(4,	'Ivanchik', 'ivanlv99@gmail.com');

DROP TABLE IF EXISTS `users_tasks`;
CREATE TABLE `users_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_tasks` (`id`, `task_id`, `user_id`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	4,	4);
