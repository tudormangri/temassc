-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 10, 2020 la 06:29 PM
-- Versiune server: 10.1.36-MariaDB
-- Versiune PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `comenzi`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ajutor_ospatar`
--

CREATE TABLE `ajutor_ospatar` (
  `ID` int(11) NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `Prenume` varchar(255) NOT NULL,
  `Id_ospatar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `ajutor_ospatar`
--

INSERT INTO `ajutor_ospatar` (`ID`, `Nume`, `Prenume`, `Id_ospatar`) VALUES
(1, 'Haru', 'Costel', 1),
(2, 'Luca', 'Klaudiu', 2),
(3, 'Popa', 'Luca', 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `bucatarie`
--

CREATE TABLE `bucatarie` (
  `ID` int(11) NOT NULL,
  `Nume_Bucatar` varchar(255) NOT NULL,
  `Varsta` int(60) NOT NULL,
  `id_comanda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `bucatarie`
--

INSERT INTO `bucatarie` (`ID`, `Nume_Bucatar`, `Varsta`, `id_comanda`) VALUES
(1, 'Alex', 40, 1),
(2, 'Andrei', 20, 2),
(3, 'Adret', 42, 3);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comanda`
--

CREATE TABLE `comanda` (
  `ID` int(11) NOT NULL,
  `Fel_principal` varchar(255) NOT NULL,
  `Fel_secundar` varchar(255) NOT NULL,
  `Id_masa` int(11) NOT NULL,
  `Ora_prelucrare` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `comanda`
--

INSERT INTO `comanda` (`ID`, `Fel_principal`, `Fel_secundar`, `Id_masa`, `Ora_prelucrare`) VALUES
(1, 'Ciorba', 'Piure', 1, NULL),
(2, 'Ciorba Pui', 'Piept de pui', 1, '00:00:20'),
(3, 'Ciorba Pui', 'Piure', 3, '10:30:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fel1` varchar(255) NOT NULL,
  `fel2` varchar(255) NOT NULL,
  `masa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `info`
--

INSERT INTO `info` (`id`, `name`, `fel1`, `fel2`, `masa`) VALUES
(14, 'Tedi', 'Supa de galuste', 'Piure', 2),
(15, 'Angelica', 'Ciorba de pui', '', 2),
(16, 'Alex', '', 'Cartofi prajiti', 1),
(17, 'Andreea', 'Ciorba de Vacuta', 'Piept de Curcan', 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `masa`
--

CREATE TABLE `masa` (
  `ID_masa` int(11) NOT NULL,
  `Nr_masa` int(11) NOT NULL,
  `Nr_clienti` int(11) NOT NULL,
  `Id_ospatar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `masa`
--

INSERT INTO `masa` (`ID_masa`, `Nr_masa`, `Nr_clienti`, `Id_ospatar`) VALUES
(1, 1, 2, 1),
(2, 2, 5, 1),
(3, 3, 3, 2),
(4, 4, 3, 3),
(5, 5, 7, 4),
(6, 6, 2, 5),
(7, 7, 2, 6);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `meniu`
--

CREATE TABLE `meniu` (
  `ID` int(11) NOT NULL,
  `Nume_Produs` varchar(255) NOT NULL,
  `Pret` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `meniu`
--

INSERT INTO `meniu` (`ID`, `Nume_Produs`, `Pret`) VALUES
(1, 'Ciorba', 10),
(2, 'Piure', 5),
(3, 'Ciorba Pui', 10),
(4, 'Piept de pui', 21);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ospatari`
--

CREATE TABLE `ospatari` (
  `ID` int(11) NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `Prenume` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `ospatari`
--

INSERT INTO `ospatari` (`ID`, `Nume`, `Prenume`, `Email`) VALUES
(1, 'Andrei', 'Alex', ''),
(4, 'Alexandrescu', 'Andrei', 'aa@gmail.com'),
(6, 'Alexa', 'Aku', 'aku@gmail.com'),
(3, 'Tedi', 'Alex', 'alex@gmail.com'),
(5, 'Angelica', 'Alina', 'alna@gmail.com'),
(2, 'Andrei', 'Sebi', 'sebi@gmail.com\r\n');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ospatarie`
--

CREATE TABLE `ospatarie` (
  `id` int(11) NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `ospatarie`
--

INSERT INTO `ospatarie` (`id`, `Nume`, `email`) VALUES
(1, 'Tedi', ''),
(2, 'Angelica', ''),
(3, 'Alex', ''),
(4, 'Andreea', ''),
(8, 'Tedi', ''),
(9, 'Angelica', ''),
(10, 'Alex', ''),
(11, 'Andreea', ''),
(15, 'Tedi', ''),
(16, 'Angelica', ''),
(17, 'Alex', ''),
(18, 'Andreea', ''),
(22, 'Tedi', ''),
(23, 'Angelica', ''),
(24, 'Alex', ''),
(25, 'Andreeaa', ''),
(29, 'Tedi', ''),
(30, 'Angelica', ''),
(31, 'Alex', ''),
(32, 'Andreea', ''),
(36, 'Tedi', ''),
(37, 'Angelica', ''),
(38, 'Alex', ''),
(39, 'Andreea', ''),
(43, 'Tedi', ''),
(44, 'Angelica', ''),
(45, 'Alex', ''),
(46, 'Andreeaa', ''),
(50, 'Tedi', ''),
(51, 'Angelica', ''),
(52, 'Alex', ''),
(53, 'Andreea', ''),
(57, 'Tedi', ''),
(58, 'Angelica', ''),
(59, 'Alex', ''),
(60, 'Andreea', ''),
(64, 'Tedi', ''),
(65, 'Angelica', ''),
(66, 'Alex', ''),
(67, 'Andreea', ''),
(68, 'Petre', ''),
(71, 'Tedi', ''),
(72, 'Angelica', ''),
(73, 'Alex', ''),
(74, 'Andreea', ''),
(75, 'Sabina', ''),
(78, 'Tedi', ''),
(79, 'Angelica', ''),
(80, 'Alex', ''),
(81, 'Andreea', ''),
(82, 'Tedi', ''),
(83, 'Angelica', ''),
(84, 'Alex', ''),
(85, 'Andreea', ''),
(86, 'a', '');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(5, 'tudor10', 'de901c9e56e2b140594f54044b2720b6'),
(6, 'abc', '900150983cd24fb0d6963f7d28e17f72');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `ajutor_ospatar`
--
ALTER TABLE `ajutor_ospatar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `1 ajutor - ospatar` (`Id_ospatar`);

--
-- Indexuri pentru tabele `bucatarie`
--
ALTER TABLE `bucatarie`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Bucatar_unique` (`Nume_Bucatar`),
  ADD KEY `bucatar-comanda` (`id_comanda`);

--
-- Indexuri pentru tabele `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `comanda 1 - masa 1` (`Id_masa`),
  ADD KEY `comanda_felprincipal` (`Fel_principal`),
  ADD KEY `comanda_felsecundar` (`Fel_secundar`);

--
-- Indexuri pentru tabele `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `masa`
--
ALTER TABLE `masa`
  ADD PRIMARY KEY (`ID_masa`),
  ADD UNIQUE KEY `Masa_unique` (`Nr_masa`),
  ADD KEY `1 masa - 1 ospatar` (`Id_ospatar`);

--
-- Indexuri pentru tabele `meniu`
--
ALTER TABLE `meniu`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Produs_unique` (`Nume_Produs`);

--
-- Indexuri pentru tabele `ospatari`
--
ALTER TABLE `ospatari`
  ADD UNIQUE KEY `Email_unique` (`Email`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexuri pentru tabele `ospatarie`
--
ALTER TABLE `ospatarie`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `ajutor_ospatar`
--
ALTER TABLE `ajutor_ospatar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `comanda`
--
ALTER TABLE `comanda`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `masa`
--
ALTER TABLE `masa`
  MODIFY `ID_masa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pentru tabele `meniu`
--
ALTER TABLE `meniu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `ospatari`
--
ALTER TABLE `ospatari`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `ospatarie`
--
ALTER TABLE `ospatarie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `ajutor_ospatar`
--
ALTER TABLE `ajutor_ospatar`
  ADD CONSTRAINT `1 ajutor - ospatar` FOREIGN KEY (`Id_ospatar`) REFERENCES `ospatari` (`ID`) ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `bucatarie`
--
ALTER TABLE `bucatarie`
  ADD CONSTRAINT `bucatar-comanda` FOREIGN KEY (`id_comanda`) REFERENCES `comanda` (`ID`) ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda 1 - masa 1` FOREIGN KEY (`Id_masa`) REFERENCES `masa` (`ID_masa`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `comanda_felprincipal` FOREIGN KEY (`Fel_principal`) REFERENCES `meniu` (`Nume_Produs`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `comanda_felsecundar` FOREIGN KEY (`Fel_secundar`) REFERENCES `meniu` (`Nume_Produs`) ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `ospatari`
--
ALTER TABLE `ospatari`
  ADD CONSTRAINT `ospatari_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `masa` (`Id_ospatar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
