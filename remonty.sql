-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 12, 2026 at 06:25 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remonty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `miasto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `miasto`) VALUES
(1, 'Tomasz', 'Gdańsk'),
(2, 'Marta', 'Sopot'),
(3, 'Łukasz', 'Gdynia'),
(4, 'Michał', 'Gdańsk'),
(5, 'Monika', 'Łeba'),
(6, 'Mariusz', 'Sopot'),
(7, 'Martyna', 'Łódź'),
(8, 'Barbara', 'Lesko'),
(9, 'Katarzyna', 'Rawicz'),
(10, 'Natalia', 'Wrocław'),
(11, 'Paweł', 'Poznań'),
(12, 'Andrzej', 'Poznań'),
(13, 'Luiza', 'Szczecin'),
(14, 'Aleksander', 'Gdańsk'),
(15, 'Klaudia', 'Wrocław'),
(16, 'Filip', 'Sopot'),
(17, 'Jakub', 'Warszawa'),
(18, 'Kamil', 'Wrocław'),
(19, 'Karol', 'Warszawa'),
(20, 'Adam', 'Poznań'),
(21, 'Piotr', 'Wrocław'),
(22, 'Michał', 'Sopot'),
(23, 'Karol', 'Łomża'),
(24, 'Piotr', 'Malbork'),
(25, 'Martyna', 'Mikołajki'),
(26, 'Marcin', 'Toruń'),
(27, 'Krzysztof', 'Warszawa'),
(28, 'Paulina', 'Poznań'),
(29, 'Marta', 'Wrocław'),
(30, 'Kunegunda', 'Poznań'),
(31, 'Filip', 'Warszawa'),
(32, 'Urszula', 'Darłowo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonanie`
--

CREATE TABLE `wykonanie` (
  `id_wykonawcy` int(11) NOT NULL,
  `id_zlecenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wykonanie`
--

INSERT INTO `wykonanie` (`id_wykonawcy`, `id_zlecenia`) VALUES
(1, 1),
(2, 2),
(2, 16),
(2, 17),
(3, 10),
(3, 35),
(3, 44),
(3, 45),
(4, 2),
(4, 17),
(4, 18),
(4, 37),
(5, 5),
(5, 7),
(5, 35),
(6, 15),
(6, 32),
(6, 45),
(7, 34),
(7, 41),
(7, 46),
(8, 2),
(8, 31),
(9, 19),
(10, 15),
(10, 17),
(10, 19),
(11, 6),
(11, 42),
(11, 46),
(12, 12),
(12, 13),
(12, 14),
(13, 25),
(13, 32),
(13, 43),
(13, 45),
(14, 2),
(14, 14),
(14, 23),
(14, 34),
(15, 4),
(15, 11),
(15, 43),
(16, 7),
(16, 16),
(16, 28),
(16, 39),
(16, 42),
(17, 4),
(18, 18),
(18, 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonawcy`
--

CREATE TABLE `wykonawcy` (
  `id_wykonawcy` int(11) NOT NULL,
  `nazwa_firmy` varchar(50) NOT NULL,
  `liczba_pracownikow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wykonawcy`
--

INSERT INTO `wykonawcy` (`id_wykonawcy`, `nazwa_firmy`, `liczba_pracownikow`) VALUES
(1, 'ABud', 25),
(2, 'BBud', 42),
(3, 'CBud', 15),
(4, 'DBud', 37),
(5, 'EBud', 22),
(6, 'FBud', 17),
(7, 'GBud', 55),
(8, 'HBud', 31),
(9, 'IBud', 12),
(10, 'JBud', 29),
(11, 'KBud', 45),
(12, 'LBud', 17),
(13, 'MBud', 15),
(14, 'NBud', 12),
(15, 'OBud', 15),
(16, 'PBud', 11),
(17, 'RBud', 45),
(18, 'SBud', 47);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zlecenia`
--

CREATE TABLE `zlecenia` (
  `id_zlecenia` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `rodzaj` varchar(10) NOT NULL DEFAULT 'malowanie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `zlecenia`
--

INSERT INTO `zlecenia` (`id_zlecenia`, `id_klienta`, `cena`, `rodzaj`) VALUES
(1, 11, 2500.00, 'malowanie'),
(2, 4, 1200.00, 'gipsowanie'),
(3, 15, 600.00, 'malowanie'),
(4, 18, 1750.00, 'malowanie'),
(5, 1, 12000.00, 'malowanie'),
(6, 1, 300.00, 'malowanie'),
(7, 1, 500.00, 'malowanie'),
(8, 1, 1250.00, 'malowanie'),
(9, 4, 2500.00, 'malowanie'),
(10, 4, 250.00, 'malowanie'),
(11, 4, 50.00, 'malowanie'),
(12, 14, 1500.00, 'malowanie'),
(13, 1, 250.00, 'malowanie'),
(14, 14, 1268.00, 'malowanie'),
(15, 1, 2500.00, 'gipsowanie'),
(16, 2, 1200.00, 'gipsowanie'),
(17, 3, 2500.00, 'gipsowanie'),
(18, 4, 1250.00, 'malowanie'),
(19, 5, 7500.00, 'malowanie'),
(20, 6, 12000.00, 'gipsowanie'),
(21, 7, 120.00, 'malowanie'),
(22, 8, 560.00, 'gipsowanie'),
(23, 10, 742.00, 'malowanie'),
(24, 9, 8542.00, 'gipsowanie'),
(25, 11, 6500.00, 'malowanie'),
(26, 13, 1203.00, 'gipsowanie'),
(27, 15, 742.00, 'malowanie'),
(28, 17, 9420.00, 'gipsowanie'),
(29, 19, 234.00, 'malowanie'),
(30, 21, 654.00, 'malowanie'),
(31, 23, 4520.00, 'gipsowanie'),
(32, 25, 623.00, 'malowanie'),
(33, 27, 6500.00, 'gipsowanie'),
(34, 29, 740.00, 'gipsowanie'),
(35, 31, 845.00, 'malowanie'),
(36, 10, 4211.00, 'malowanie'),
(37, 12, 6528.00, 'gipsowanie'),
(38, 14, 247.00, 'gipsowanie'),
(39, 16, 6500.00, 'malowanie'),
(40, 18, 742.00, 'malowanie'),
(41, 20, 777.00, 'malowanie'),
(42, 22, 8880.00, 'malowanie'),
(43, 24, 540.00, 'malowanie'),
(44, 26, 320.00, 'malowanie'),
(45, 28, 1200.00, 'malowanie'),
(46, 30, 200.00, 'gipsowanie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `wykonanie`
--
ALTER TABLE `wykonanie`
  ADD PRIMARY KEY (`id_wykonawcy`,`id_zlecenia`),
  ADD KEY `id_zlecenia` (`id_zlecenia`);

--
-- Indeksy dla tabeli `wykonawcy`
--
ALTER TABLE `wykonawcy`
  ADD PRIMARY KEY (`id_wykonawcy`);

--
-- Indeksy dla tabeli `zlecenia`
--
ALTER TABLE `zlecenia`
  ADD PRIMARY KEY (`id_zlecenia`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wykonawcy`
--
ALTER TABLE `wykonawcy`
  MODIFY `id_wykonawcy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `zlecenia`
--
ALTER TABLE `zlecenia`
  MODIFY `id_zlecenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wykonanie`
--
ALTER TABLE `wykonanie`
  ADD CONSTRAINT `wykonanie_ibfk_1` FOREIGN KEY (`id_wykonawcy`) REFERENCES `wykonawcy` (`id_wykonawcy`),
  ADD CONSTRAINT `wykonanie_ibfk_2` FOREIGN KEY (`id_zlecenia`) REFERENCES `zlecenia` (`id_zlecenia`);

--
-- Constraints for table `zlecenia`
--
ALTER TABLE `zlecenia`
  ADD CONSTRAINT `zlecenia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
