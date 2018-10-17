-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 okt 2018 om 16:39
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `docenten`
--

CREATE TABLE `docenten` (
  `id` int(11) NOT NULL,
  `persoons_id` int(11) DEFAULT NULL,
  `lesgroep` varchar(11) DEFAULT NULL,
  `werkzaam_sinds` varchar(255) DEFAULT NULL,
  `salaris` int(11) DEFAULT NULL,
  `ziektedagen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `docenten`
--

INSERT INTO `docenten` (`id`, `persoons_id`, `lesgroep`, `werkzaam_sinds`, `salaris`, `ziektedagen`) VALUES
(1, 3, '7', 'september 2006', 3455, 5),
(2, 4, '6', 'mei 1997', 5328, 2),
(3, 6, '8', 'september 2001', 4377, 6),
(4, 7, '5', '1996', 4555, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klassenoverzicht`
--

CREATE TABLE `klassenoverzicht` (
  `id` int(11) NOT NULL,
  `klas` varchar(11) DEFAULT NULL,
  `docent` varchar(255) DEFAULT NULL,
  `aantal_leerlingen` int(11) DEFAULT NULL,
  `lokaal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klassenoverzicht`
--

INSERT INTO `klassenoverzicht` (`id`, `klas`, `docent`, `aantal_leerlingen`, `lokaal`) VALUES
(1, '6', 'Angela Davis', 2, 6),
(2, '7', 'Huey p Newton', 1, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerling`
--

CREATE TABLE `leerling` (
  `id` int(11) NOT NULL,
  `persoons_id` int(11) DEFAULT NULL,
  `groep` varchar(11) DEFAULT NULL,
  `voogd1` varchar(255) DEFAULT NULL,
  `voogd2` varchar(255) DEFAULT NULL,
  `medisch` varchar(255) DEFAULT NULL,
  `in_nood` varchar(255) DEFAULT NULL,
  `ziektedagen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `leerling`
--

INSERT INTO `leerling` (`id`, `persoons_id`, `groep`, `voogd1`, `voogd2`, `medisch`, `in_nood`, `ziektedagen`) VALUES
(1, 1, '6', 'maria inglesias', NULL, NULL, 'maria inglesias', NULL),
(2, 2, '8', 'herman groenboer', 'Jeanne Milosevic', 'allergisch voor bijen', 'Herman groenboer 068393756', NULL),
(3, 5, '7', 'Guillermo del Toro', NULL, 'lactose intolerant', 'Guillermo del Toro 06-2980033', 2),
(4, 9, '8', 'Mom', 'Dad', NULL, 'Mom en Dad 06-3829933', 42),
(5, 8, '6', 'Willy Nelson', NULL, 'diabetes ', 'Willy Nelson 039-384920 of oma Nelson 050-938999', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personen`
--

CREATE TABLE `personen` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `titel` varchar(255) DEFAULT NULL,
  `geb_datum` date DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `telnr` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `personen`
--

INSERT INTO `personen` (`id`, `voornaam`, `achternaam`, `titel`, `geb_datum`, `woonplaats`, `postcode`, `straat`, `telnr`, `email`) VALUES
(1, 'pietje', 'bell', 'leerling', '2009-09-09', 'groningen', '9765dd', 'stationssttraat 5', '06899939393', 'pietjepietje@hotmail.com'),
(2, 'jara', 'milosevic', 'leerling', '2008-10-21', 'groningen', '9844ls', 'seringehof 155', '0633298745', 'mevrouwmilosevic@gmail.com'),
(3, 'eva', 'salters', 'docent', '1986-02-11', 'groningen', '9654jj', 'petrus hendrikzstraat 666', '067235666', 'evasalters@gmail.com'),
(4, 'angela', 'davis', 'docent', '1947-04-11', 'groningen', '9822uh', 'grote markt 1', '065399922', 'angeladavis@rug.nl'),
(5, 'jim', 'henson', 'leerling', '2009-11-12', 'ten boer', '5643ff', 'dorpsstraat 44j', '0379-8793929', 'jimhenson@darkcrystal.com'),
(6, 'Huey P', 'Newton', 'docent', '1955-03-13', 'Delfzijl', '5734hg', 'Groningerweg 155', '06-3949703', 'blackpanthers@live.nl'),
(7, 'Tupac', 'Shakur', 'docent', '1971-10-25', 'Groningen', '9833bb', 'verlengde hereweg 144', '06-8327400', 'goat@ever.ever'),
(8, 'johnny', 'cash', 'leerling', '2011-01-01', 'kielwindeweer', '7333hh', 'hoofdweg 1', '0492-789399', 'johnny@cash.com'),
(9, 'Ferris', 'Bueller', 'leerling', '2009-01-22', 'haren', '5667hh', 'harenseweg 33', '06-3779993', 'lifemovespretty@fast.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `toetsen`
--

CREATE TABLE `toetsen` (
  `id` int(11) NOT NULL,
  `leerling_id` int(11) DEFAULT NULL,
  `vak` varchar(255) DEFAULT NULL,
  `toetsnr` varchar(255) DEFAULT NULL,
  `cijfer` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `toetsen`
--

INSERT INTO `toetsen` (`id`, `leerling_id`, `vak`, `toetsnr`, `cijfer`, `datum`) VALUES
(1, 1, 'geschiedenis', '1', 8, '2018-09-22'),
(2, 5, 'geschiedenis', '1', 6, '2018-09-22'),
(3, 2, 'rekenen', '1', 5, '2018-10-06'),
(4, 4, 'rekenen', '1', 7, '2018-10-06');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `docenten`
--
ALTER TABLE `docenten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `klassenoverzicht`
--
ALTER TABLE `klassenoverzicht`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `leerling`
--
ALTER TABLE `leerling`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `personen`
--
ALTER TABLE `personen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `toetsen`
--
ALTER TABLE `toetsen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `docenten`
--
ALTER TABLE `docenten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `klassenoverzicht`
--
ALTER TABLE `klassenoverzicht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `leerling`
--
ALTER TABLE `leerling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `personen`
--
ALTER TABLE `personen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `toetsen`
--
ALTER TABLE `toetsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
