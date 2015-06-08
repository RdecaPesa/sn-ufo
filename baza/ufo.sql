-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2015 at 01:25 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ufo`
--

-- --------------------------------------------------------

--
-- Table structure for table `videnja`
--

CREATE TABLE IF NOT EXISTS `videnja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kdaj` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokacija` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `izgled` text COLLATE utf8_unicode_ci NOT NULL,
  `dogajanje` text COLLATE utf8_unicode_ci NOT NULL,
  `ugrabitev` tinyint(1) NOT NULL,
  `kontakt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `videnja`
--

INSERT INTO `videnja` (`id`, `datum`, `kdaj`, `lokacija`, `izgled`, `dogajanje`, `ugrabitev`, `kontakt`) VALUES
(3, '2015-05-29 16:01:02', 'včeraj', 'v centru lj', 'neznane utripajoče lučke na nebu', 'neznane utripajoče lučke na nebu', 0, '063 863 486'),
(4, '2015-05-29 16:03:36', 'prejšnji mesec', 'na hribu', 'hipnotično strmijo', 'hipnotizirajo', 1, 'polje@gmail.com'),
(5, '2012-03-20 14:00:00', 'tert', 'erte', 'erter', 'ertert', 0, 'ertert'),
(6, '0000-00-00 00:00:00', 'wr', 'werwewerwer', 'werwer', 'werwer', 0, 'werwer'),
(7, '0000-00-00 00:00:00', 'sadsad', 'kjh', 'jkh', 'jk', 0, 'hkj');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
