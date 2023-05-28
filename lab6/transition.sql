SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `transition`;
CREATE TABLE `transition` (
  `station_from_id` int(10) unsigned NOT NULL,
  `station_to_id` int(10) unsigned NOT NULL,
  KEY `station_from_id` (`station_from_id`),
  KEY `station_to_id` (`station_to_id`),
  CONSTRAINT `transition_ibfk_1` FOREIGN KEY (`station_from_id`) REFERENCES `stations` (`id`),
  CONSTRAINT `transition_ibfk_2` FOREIGN KEY (`station_to_id`) REFERENCES `stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transition` (`station_from_id`, `station_to_id`) VALUES
(6,	24),
(9,	15),
(13,	23),
(15,	9),
(23,	13),
(24,	6);
