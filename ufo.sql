-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2015 at 10:08 AM
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
  `ugrabitev` tinyint(1) DEFAULT NULL,
  `kontakt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ugrabitev_enum` enum('da','ne') COLLATE utf8_unicode_ci DEFAULT 'ne',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `videnja`
--

INSERT INTO `videnja` (`id`, `datum`, `kdaj`, `lokacija`, `izgled`, `dogajanje`, `ugrabitev`, `kontakt`, `ugrabitev_enum`) VALUES
(3, '2015-06-08 16:01:02', 'zjutraj ob šestih', 'na vrtu', 'tko velki k jst približn, sam mau večji, pa skor prozorni sam tko mau k beli. ma tko k oblaki, neki tazga.', 'medtem, ko sm plela korenje sm najprej slišala en čudn zvok. pa sem se komi pobrala s kolen, da sm vstala. potem sm pogledala proti sosedom k ponavadi vse čudn prhaja od njih. sam tm ni blo nobenga, pa sem pogledala okrog in sm vidla za sabo 3 nečesa. najprej sm misnla da se mi blede od pletja sam pol sm pa mal bol pogledala pa sm vidla da se mi ne. no, pol sm rekla kaj čjo, pa so rekl če mi pokažejo kako se to naredi hitrej, pa sm rekla da ja. no, pol pa so sam neki nardil in plevela ni blo več.', 0, 'ja ne vem, niso povedal, k so kr zginl pol', 'ne'),
(4, '2015-05-29 16:03:36', 'prejšnji mesec', 'na hribu', 'drevesa k se premikajo in hipnotizirajo', 'sej sploh ne vem točno kaj je blo, ampak je blo zihr neki, k vem. vsak dan grem v hrib in pol sm tm vidu neki čudnga v gozdu, tm pr uni skali, k pol vedno zavijm levo, drugač se zgubim. tm je med drevesi, sej drugač je to gozd, pač tak gozd čez ceu hrib. no, tm sm vidu veje da se neki premikajo pa ponavad so ptiči al pa kače, no al pa ježi, včas tut vevrce al pa kšna lisica al pa zajc, no kakor kdaj. pa sm vseen pogledu in sm vidu sam eno tako pojavo k mau čudn drevo sam ni bil drevo sam zgledal je k drevo, k se je premikal zato vem da ni bil drevo. in potem sm še enkrat pogledal pa ni blo več tega drevesa pa tut premikal se ni nč več. vem da so bli vesolci k sm šou u hrib ob štirih, pa mam do tja k sm jih sreču ene 10min, pol pa k sm pogledu na uro pa je bla ura že šest. kako naj ne bi vedu da sm tm tolk časa stal, zato vem da so bli oni, k druzga ne more bit.', 1, 'polje@gmail.com', 'ne'),
(17, '0000-00-00 00:00:00', 'snvbfjb', 'nn x  xfvnm', 'nmnmfsgmnsfm', 'xv vx  ', 0, 'fhmfhmhmf', 'ne');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
