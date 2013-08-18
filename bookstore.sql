-- Adminer 3.7.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = '+03:00';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `author` (`id`, `name`, `dob`) VALUES
(1,	'Dan Brown',	'1964-06-22'),
(2,	'J. K. Rowling',	'1965-07-31'),
(9,	'Cecelia Ahern',	'1980-09-30'),
(10,	'Tony Hsieh',	'1973-12-12'),
(11,	'Jim Collins',	'1958-01-01'),
(12,	'Sun Tzu',	'1900-01-01'),
(13,	'Walter Isaacson',	'1952-05-20'),
(14,	'Nguyễn Nhật Ánh',	'1965-01-01'),
(15,	'Thái Mỹ Phương',	'1990-06-30');

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `author` (`author`),
  KEY `category` (`category`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author`) REFERENCES `author` (`id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `book` (`id`, `title`, `author`, `category`, `description`, `price`, `image`, `last_modified`) VALUES
(1,	'Harry Potter and the Sorcerer\'s Stone',	2,	1,	'',	13.6,	'',	'0000-00-00'),
(2,	'Good to Great: Why Some Companies Make the Leap...',	11,	2,	'',	17.8,	'',	'0000-00-00'),
(3,	'Delivering Happiness',	11,	2,	'',	13.6,	'',	'0000-00-00'),
(4,	'Steve Jobs',	13,	4,	'',	19.19,	'',	'0000-00-00'),
(5,	'P/S I Love You',	9,	1,	'',	15.99,	'',	'0000-00-00'),
(6,	'Cho tôi xin một vé đi tuổi thơ',	14,	1,	'',	19,	'201301220952',	'0000-00-00'),
(7,	'Một Ngày Của Bố ',	15,	1,	'',	12,	'',	'2013-08-18');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1,	'fiction'),
(2,	'non-fiction'),
(3,	'sci-fi'),
(4,	'science'),
(5,	'history'),
(6,	'children'),
(7,	'comic');

-- 2013-08-18 12:01:31
