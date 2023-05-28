SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `news` (`id`, `title`, `content`, `category_id`, `publication_date`) VALUES
(1,	'News_about_world',	'New ivent in world!',	1, '28-05-2023'),
(2,	'Fashion_news',	'Beautiful fashion now in NY!',	3, '09-09-2022'),
(3,	'Economics_news',	'Smth about bitcoin!',	2, '11-06-2023'),
(4,	'Tech_news',	'New laplop from DELL - buy right now',	4, '29-06-2023'),
(5,	'Space_news',	'Asteroid want to destroy our planet',	5, '12-12-2021');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`id`, `name`) VALUES
(1,	'News'),
(2,	'Economics'),
(3,	'Fashion'),
(4,	'Technology'),
(5,	'Space');

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` int(1) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(15) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ratings` (`id`, `mark`, `comment`, `ip`, `news_id`) VALUES
(1,	3,	'Boring',	'192.106.266.108',	1),
(2,	2,	'Its not beautiful!',	'117.193.130.98',	2),
(3,	5,	'FINALLY!',	'255.192.237.39',	3),
(3,	5,	'Im going to buy this and new mouse',	'116.247.222.36',	4),
(4,	3,	'Sure.',	'113.215.17.224',	5);
