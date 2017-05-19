-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Maj 2017, 14:23
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `elections`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `municipalities`
--

CREATE TABLE `municipalities` (
  `ID` int(11) NOT NULL,
  `Region` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `municipalities`
--

INSERT INTO `municipalities` (`ID`, `Region`) VALUES
(1, 'Kobenhavn'),
(2, 'AArhus'),
(3, 'Gentofte'),
(4, 'test1'),
(5, 'test2'),
(6, 'test3'),
(7, 'test4'),
(8, 'test5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `names`
--

CREATE TABLE `names` (
  `IDnames` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `RegionNames` int(11) NOT NULL,
  `Description` tinytext NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `names`
--

INSERT INTO `names` (`IDnames`, `Name`, `RegionNames`, `Description`, `url`) VALUES
(7, 'Aku', 1, 'he likes sending weird links on facebook', 'img/team/team2.jpg'),
(8, 'Marloes', 1, 'she makes weird sounds, just so you know', 'img/team/team3.jpg'),
(9, 'Jens', 2, 'Dane. That explains everything', 'img/team/team1.jpg'),
(10, 'Michal', 2, 'KURWA MAc', ''),
(11, 'Zuza', 3, 'Another Polish Kurwa MAc', ''),
(12, 'Name', 1, 'test', ''),
(13, 'Name2', 1, 'test', ''),
(14, 'Name3', 1, 'test', ''),
(15, 'Name4', 1, 'test', ''),
(16, 'Name5', 1, 'test', ''),
(17, 'Name6', 1, 'test', ''),
(18, 'Name7', 1, 'test', ''),
(19, 'Name8', 1, 'test', ''),
(20, 'Name9', 1, 'test', ''),
(21, 'Name10', 1, 'test', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`IDnames`),
  ADD KEY `regionLove` (`RegionNames`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `names`
--
ALTER TABLE `names`
  MODIFY `IDnames` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `names`
--
ALTER TABLE `names`
  ADD CONSTRAINT `regionLove` FOREIGN KEY (`RegionNames`) REFERENCES `municipalities` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
