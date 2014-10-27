-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Okt 2014 um 13:14
-- Server Version: 5.6.20
-- PHP-Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `rauminfo`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `arbeitsgruppe`
--

CREATE TABLE IF NOT EXISTS `arbeitsgruppe` (
` arbeitsgruppen_id` int(11) NOT NULL,
  `bezeichnung` text COLLATE utf8_bin NOT NULL,
  `beschreibung` mediumtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benachrichtigungen`
--

CREATE TABLE IF NOT EXISTS `benachrichtigungen` (
`benachrichtigungs_id` int(11) NOT NULL,
  `absender` varchar(50) COLLATE utf8_bin NOT NULL,
  `mitarbeiter_id` int(11) NOT NULL,
  `text` mediumtext COLLATE utf8_bin,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter`
--

CREATE TABLE IF NOT EXISTS `mitarbeiter` (
`mitarbeiter_id` int(11) NOT NULL,
  `vorname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nachname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `telefon` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `email` text COLLATE utf8_bin,
  `bild` text COLLATE utf8_bin,
  `raum_id` int(11) DEFAULT NULL,
  `arbeitsgruppe_id` int(11) DEFAULT NULL,
  `schwerpunkte` mediumtext COLLATE utf8_bin
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=40 ;

--
-- Daten für Tabelle `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`mitarbeiter_id`, `vorname`, `nachname`, `telefon`, `fax`, `email`, `bild`, `raum_id`, `arbeitsgruppe_id`, `schwerpunkte`) VALUES
(1, 'Rüdiger', 'Rolf', '(0541) 969 6511', '(0541) 969 16511', 'rrolf@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/610aa75e957a791152072466ef3a83f3_normal.png', 14, NULL, NULL),
(2, 'Marcel', 'Kipp', '(0541) 969 6511', NULL, 'mkipp@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 14, NULL, NULL),
(3, 'Andreas', 'Knaden', '49 541 969 6500', '49 541 969 16500', 'aknaden@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/f886e96aed0a87086589d8d517ed9359_normal.png', 8, NULL, NULL),
(4, 'Tobias', 'Thelen', '49 541 969 6502', '49 541 969 16502', 'tobias.thelen@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/590636f5dc97e1958d86156c4bfd9d99_normal.png', 11, NULL, NULL),
(5, 'Kai-Christoph', 'Hamborg', '49 541 969 4703', '49 541 969 14703', 'khamborg@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/c007be8108c62a3c62638ffe6158adb8_normal.png', 20, NULL, NULL),
(6, 'Frank', 'Ollermann', '49 541 969 6503', '49 541 969 16503', 'follerma@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/50e72c7107ee0fbb6a09e774a95b69a7_normal.png', 19, NULL, NULL),
(7, 'Oliver', 'Vornberger', '49 541 969 2481', '49 541 969 2799', 'oliver@uos.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/acae273a5a5c88b46b36d65a25f5f435_normal.png', NULL, NULL, NULL),
(8, 'Martin ', 'Gieseking', '49 541 969-6509', '49 541 969-16509', 'martin.gieseking@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/5b8e36d0d9b089296ae7274faadeb43b_normal.png', 12, NULL, NULL),
(9, 'Günter', 'Rückforth', '49 541 969 4429', '', 'grueckfo@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/19fa0283ed4a5254bb9a8cbd92f41ff7_normal.png', 16, NULL, NULL),
(10, 'Stefanie', 'Reuer', '0541/969-6501', '0541/969-6069', 'stefanie.reuer@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 9, NULL, NULL),
(11, 'Sönke', 'Brummerloh', '49 541 969 6532', '49 541 969 6069', 'soenke.brummerloh@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/e0b6c52ab5602e1f4227e1490be596e0_normal.png', 13, NULL, NULL),
(12, 'Melanie', 'Brummerloh', '49 541 969-6526', NULL, 'melanie.brummerloh@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/c18a0aab18de2ff4eac118c748198085_normal.png', NULL, NULL, NULL),
(13, 'Kerstin', 'Farthmann', '49 541 969-6514', NULL, 'kerstin.farthmann@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 9, NULL, NULL),
(14, 'Heike', 'Dalinghaus', '49 (0)541 969-6522', '49 (0)541 969-6069', 'heike.dalinghaus@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/799d6973234dbc71c0af942d4ac0503f_normal.png', 6, NULL, NULL),
(15, 'Christian', 'Flothmann', '49 541 969-6528', NULL, 'cflothma@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 13, NULL, NULL),
(16, 'Anne', 'Fuhrmann-Siekmeyer', '49 541 969 6513', NULL, NULL, 'https://studip-static.uni-osnabrueck.de/pictures/user/308af56b2baada660cb1012640d0792d_normal.png', 13, NULL, NULL),
(17, ' Till', 'Glöggler', '49 541 969 6512', NULL, 'till.gloeggler@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/def3f57d7e5e13c6be78f45f945c33c8_normal.png', 10, NULL, NULL),
(18, 'Christian', 'Greweling', '49 541 969-6520', NULL, 'christian.greweling@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/df102de4c8039ae301325824a9a3a175_normal.png', 18, NULL, NULL),
(19, 'Rainer', 'Jacob', '49 541 969-6516', NULL, 'rainer.jacob@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 1, NULL, NULL),
(20, 'Maria', 'Kandyba-Chimani', '49 541 9696506', NULL, 'maria.kandybachimani@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/d50e90a2f43638b2067b3db14117fdac_normal.png', 5, NULL, NULL),
(21, 'Lars', 'Kiesow', '49 541 969 6533', NULL, 'lkiesow@uos.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 21, NULL, NULL),
(22, 'André', 'Klaßen', '49 541 969-6531', NULL, 'aklassen@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/546c8a8e4c8d85001155f32f59a96552_normal.png', 10, NULL, NULL),
(23, 'Elma', 'Ludwig', '49 541 969-6517', '49 541 969-6069', 'elmar.ludwig@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/18de2aba0b5d3de4d19e70d9ab800296_normal.png', 2, NULL, NULL),
(24, 'Marcus', 'Lunzenauer', '49 541 969-6525', '49 541 969-1-6525', 'mlunzena@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/ce957e1a1938a0efd34fd0a3a14823cd_normal.png', 10, NULL, NULL),
(25, 'Stiliana Alex', 'Lüttecke', '49 (0)541 969-6521', '49 (0)541 969-6069', 'stiliana.luettecke@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/343c00a62f1b190c219f79783412699e_normal.png', 6, NULL, NULL),
(26, ' Denis', 'Meyer', '49 541 969-6530', NULL, 'denmeyer@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/58ceb0b34b03192bbebc1c91a5b54d34_normal.png', 18, NULL, NULL),
(27, 'Rohangis', 'Mohseni', '49 541 969-6524', NULL, 'rmohseni@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/d686a315c5b7e38840a2b97f06e09ffc_normal.png', 1, NULL, NULL),
(28, 'Tim ', 'Roewekamp', '49 541 969-6534', NULL, 'troeweka@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/c1eb0d5627b49d0fd6cafc7348ac7689_normal.png', 5, NULL, NULL),
(29, ' Olga ', 'Sacharow', '49 541 969-6505', NULL, 'osacharo@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 5, NULL, NULL),
(30, ' Ina', 'Schäfer', '49 541 969-6501', NULL, 'ina.schaefer@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 9, NULL, NULL),
(31, 'Björn', 'Schmethüsen', '49 541 969 6523', NULL, 'bjoern.schmethuesen@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/edbd0a0c289370a561293b8e4a95452f_normal.png', 5, NULL, NULL),
(32, 'Dörthe', 'Schwaß', '49 541 969-6507', '49 541 969-1 6507', 'doerthe.schwass@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/fbe4d82a09dba4ca98178a5791bec35b_normal.png', 6, NULL, NULL),
(33, 'Waldemar', 'Smirnow', NULL, NULL, 'wsmirnow@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 2, NULL, NULL),
(34, 'Annelene', 'Sudau', '49 541 969-6504', NULL, 'asudau@uos.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/23f8d0a297dcc23f292fe7bb358ad280_normal.png', 1, NULL, NULL),
(35, ' Nadine', 'Werner', '49 541 969-6518', NULL, 'nadine.werner@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 18, NULL, NULL),
(36, 'Benjamin', 'Wulff', '49 541 969-6530', NULL, 'bwulff@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 17, NULL, NULL),
(37, 'Lucas', 'Köhler', '49 541 969-6511', NULL, 'lkoehler@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 0, NULL, NULL),
(38, 'Verena', 'Wekenborg', NULL, NULL, 'verena.wekenborg@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/5132210df00d6e9067e275d84073b161_normal.png', 5, NULL, NULL),
(39, 'Matthias', 'Leimann', '49 541 969-6508', NULL, 'matthias.leimann@uni-osnabrueck.de', 'https://studip-static.uni-osnabrueck.de/pictures/user/nobody_normal.png', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter_arbeitsgruppe`
--

CREATE TABLE IF NOT EXISTS `mitarbeiter_arbeitsgruppe` (
  `mitarbeiter_id` int(11) NOT NULL,
  `arbeitsgruppen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `raeume`
--

CREATE TABLE IF NOT EXISTS `raeume` (
`raum_id` int(11) NOT NULL,
  `raumname` varchar(20) COLLATE utf8_bin NOT NULL,
  `etage` int(11) DEFAULT NULL,
  `gebaeude` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `beschreibung` mediumtext COLLATE utf8_bin,
  `bezeichnung` text COLLATE utf8_bin,
  `belegung` int(11) DEFAULT NULL,
  `svg_element` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `raeume`
--

INSERT INTO `raeume` (`raum_id`, `raumname`, `etage`, `gebaeude`, `beschreibung`, `bezeichnung`, `belegung`, `svg_element`) VALUES
(1, '42/E02', 0, '42', NULL, NULL, 3, 'raume02'),
(2, '42/E03', 0, '42', NULL, NULL, 2, 'raume03'),
(3, '42/E04', 0, '42', NULL, NULL, 1, 'raume04'),
(4, '42/E05', 0, '42', NULL, NULL, NULL, 'raume05'),
(5, '42/E06', 0, '42', NULL, NULL, 4, 'raume06'),
(6, '42/E07', 0, '42', NULL, NULL, 4, 'raume07'),
(7, '42/101', 1, '42', NULL, NULL, NULL, 'raum101'),
(8, '42/104a', 1, '42', NULL, NULL, 1, 'raum104a'),
(9, '42/104', 1, '42', NULL, NULL, 2, 'raum104'),
(10, '42/106', 1, '42', NULL, NULL, 2, 'raum106'),
(11, '42/107', 1, '42', NULL, NULL, 2, 'raum107'),
(12, '427108', 1, '42', NULL, NULL, 1, 'raum108'),
(13, '42/109', 1, '42', NULL, NULL, 3, 'raum109'),
(14, '42/201', 2, '42', NULL, NULL, 2, 'raum201'),
(15, '42/203', 2, '42', NULL, NULL, 2, 'raum203'),
(16, '42/204', 2, '42', NULL, NULL, 2, 'raum204'),
(17, '42/205', 2, '42', NULL, NULL, 2, 'raum205'),
(18, '42/206', 2, '42', NULL, NULL, 2, 'raum206'),
(19, '42/207', 2, '42', NULL, NULL, 1, 'raum207'),
(20, '42/208', 2, '42', NULL, NULL, 2, 'raum208'),
(21, '42/209', 2, '42', NULL, NULL, 3, 'raum209');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arbeitsgruppe`
--
ALTER TABLE `arbeitsgruppe`
 ADD PRIMARY KEY (` arbeitsgruppen_id`);

--
-- Indexes for table `benachrichtigungen`
--
ALTER TABLE `benachrichtigungen`
 ADD PRIMARY KEY (`benachrichtigungs_id`);

--
-- Indexes for table `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
 ADD PRIMARY KEY (`mitarbeiter_id`);

--
-- Indexes for table `raeume`
--
ALTER TABLE `raeume`
 ADD PRIMARY KEY (`raum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arbeitsgruppe`
--
ALTER TABLE `arbeitsgruppe`
MODIFY ` arbeitsgruppen_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `benachrichtigungen`
--
ALTER TABLE `benachrichtigungen`
MODIFY `benachrichtigungs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
MODIFY `mitarbeiter_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `raeume`
--
ALTER TABLE `raeume`
MODIFY `raum_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
