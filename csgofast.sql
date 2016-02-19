-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 19. Feb 2016 um 18:08
-- Server Version: 5.5.47-0ubuntu0.14.04.1
-- PHP-Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `csgofast`
--
CREATE DATABASE IF NOT EXISTS `csgofast` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `csgofast`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `gameNum` int(32) NOT NULL,
  `roundHash` varchar(32) NOT NULL,
  `randNum` double NOT NULL,
  `winningTicket` int(10) NOT NULL,
  `winningPlayer` varchar(64) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`gameNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `game`
--

INSERT INTO `game` (`gameNum`, `roundHash`, `randNum`, `winningTicket`, `winningPlayer`, `date`, `user`) VALUES
(22, '1b87a1f56a94e5e093f9722087cd3520', 0.2216365368803964, 996, 'Slaugh†eR', '0000-00-00 00:00:00', 'no login'),
(33, 'asdfn32n34n34n34n43n324n32', 0.2412412412414134, 234234, 'sdfsf23', '0000-00-00 00:00:00', NULL),
(44, 'sdg45g4535vg356563', 0.2216365368803964, 444, 'dffd', '0000-00-00 00:00:00', NULL),
(55, '1b87a1f56a94e5e093f9722087cd3520', 0.2216365368803964, 996, 'Slaugh†eR', '0000-00-00 00:00:00', 'no login'),
(66, 'asdfn32n34n34n34n43n324n32', 0.2412412412414134, 234234, 'sdfsf23', '0000-00-00 00:00:00', NULL),
(77, '1b87a1f56a94e5e093f9722087cd3520', 0.2216365368803964, 996, 'Slaugh†eR', '0000-00-00 00:00:00', 'no login'),
(88, 'asdfn32n34n34n34n43n324n32', 0.2412412412414134, 234234, 'sdfsf23', '0000-00-00 00:00:00', NULL),
(99, 'sdg45g4535vg356563', 0.2216365368803964, 444, 'dffd', '0000-00-00 00:00:00', NULL),
(111, '1b87a1f56a94e5e093f9722087cd3520', 0.2216365368803964, 996, 'Slaugh†eR', '0000-00-00 00:00:00', 'no login'),
(112, 'asdfn32n34n34n34n43n324n32', 0.2412412412414134, 234234, 'sdfsf23', '0000-00-00 00:00:00', NULL),
(113, 'sdg45g4535vg356563', 0.2216365368803964, 444, 'dffd', '0000-00-00 00:00:00', NULL),
(1114, 'sdg45g4535vg356563', 0.2216365368803964, 444, 'dffd', '0000-00-00 00:00:00', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
