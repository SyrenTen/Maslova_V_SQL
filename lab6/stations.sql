SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `next_id` int(10) unsigned DEFAULT NULL,
  `prev_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stations` (`id`, `name`, `next_id`, `prev_id`, `branch_id`) VALUES
(1,	'Перемога',	2,	NULL,	1),
(2,	'Олексіївська',	3,	1,	1),
(3,	'23 Серепня',	4,	2,	1),
(4,	'Ботанічний сад',	5,	4,	1),
(5,	'Наукова',	6,	4,	1),
(6,	'Держпром',	7,	5,	1),
(7,	'Архітектора Бекетова',	8,	6,	1),
(8,	'Захисників України',	9,	8,	1),
(9,	'Метробудівників',	10,	8,	1),
(10,	'Холодна гора',	11,	9,	2),
(11,	'Південий вокзал',	12,	10,	2),
(12,	'Центральний ринок',	13,	11,	2),
(13,	'Майдан Конституції',	14,	12,	2),
(14,	'Проспект Гагаріна',	15,	13,	2),
(15,	'Спортивна',	16,	14,	2),
(16,	'Завод ім. Малишева',	17,	15,	2),
(17,	'Турбоатом',	18,	16,	2),
(18,	'Палац спорту',	19,	17,	2),
(19,	'Армійська',	20,	18,	2),
(20,	'Ім. О. С. Масельського',	21,	19,	2),
(21,	'Тракторний завод',	22,	20,	2),
(22,	'Індустріальна',	23,	21,	2),
(23,	'Історичний музей',	24,	22,	3),
(24,	'Університет',	25,	23,	3),
(25,	'Пушкінська',	26,	24,	3),
(26,	'Київська',	27,	25,	3),
(27,	'Академіка Барабашова',	28,	26,	3),
(28,	'Академіка Павлова',	29,	27,	3),
(29,	'Студентська',	30,	28,	3),
(30,	'Героїв Праці',	NULL,	29,	3);
