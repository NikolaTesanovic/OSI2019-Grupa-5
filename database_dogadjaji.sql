-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 04:48 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_dogadjaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `dogadjaji`
--

CREATE TABLE `dogadjaji` (
  `dogadja_id` int(11) NOT NULL,
  `naziv` varchar(300) COLLATE utf8_bin NOT NULL,
  `detalji` text COLLATE utf8_bin NOT NULL,
  `datum` datetime NOT NULL,
  `grad_id` int(11) NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dogadjaji`
--

INSERT INTO `dogadjaji` (`dogadja_id`, `naziv`, `detalji`, `datum`, `grad_id`, `kategorija_id`, `korisnik_id`) VALUES
(1, 'Kosarkaska utakmica Borac - Crvena Zvezda', 'Mec ce se odigrati u Sportskoj dvorani Borik. Ulaznice mozete kupiti vec sada po cijeni od NEVJEROVATNIH 5 KM. \r\nAli ni to nije sve, ako pozovete odmah i kupiti 50 karata, jednu dobijate gratis...\r\nPa gdje to ima, SAMO KOD NAS!!!.', '2019-11-20 20:00:00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gradovi`
--

CREATE TABLE `gradovi` (
  `grad_id` int(11) NOT NULL,
  `grad_naziv` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gradovi`
--

INSERT INTO `gradovi` (`grad_id`, `grad_naziv`) VALUES
(1, 'Banja Luka');

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

CREATE TABLE `kategorije` (
  `kategorija_id` int(11) NOT NULL,
  `kategorija_naziv` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`kategorija_id`, `kategorija_naziv`) VALUES
(1, 'umjetnost'),
(2, 'sport');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `komentar_id` int(11) NOT NULL,
  `komentar_tekst` varchar(3000) COLLATE utf8_bin NOT NULL,
  `dogadjaj_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`komentar_id`, `komentar_tekst`, `dogadjaj_id`) VALUES
(1, 'Wau kakva ponuda', 1),
(2, 'Ma dolazim bre iz Beograda da se obracunam sa Lesinarima ale le lee', 1),
(3, 'Cekamo vas Beogradjani aaa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `korisnik_id` int(11) NOT NULL,
  `korisnik_ime` varchar(50) COLLATE utf8_bin NOT NULL,
  `korisnik_sifra` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`korisnik_id`, `korisnik_ime`, `korisnik_sifra`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `kviz`
--

CREATE TABLE `kviz` (
  `pitanje_id` int(11) NOT NULL,
  `pitanje_tekst` varchar(2500) COLLATE utf8_bin NOT NULL,
  `tacan_odg` varchar(100) COLLATE utf8_bin NOT NULL,
  `pogresan_odg_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `pogresan_odg_2` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kviz`
--

INSERT INTO `kviz` (`pitanje_id`, `pitanje_tekst`, `tacan_odg`, `pogresan_odg_1`, `pogresan_odg_2`) VALUES
(1, 'Kako se zove Jelena?', 'Jelena', 'Nikola', 'Sanja'),
(2, 'Delije su navijaci koejg kluba?', 'Crvena Zvezda', 'Partizan', 'Borac Banja Luka'),
(3, 'Pitanje 3', 'Tacan odg', 'Netacan', 'Netacan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dogadjaji`
--
ALTER TABLE `dogadjaji`
  ADD PRIMARY KEY (`dogadja_id`),
  ADD KEY `grad_id` (`grad_id`),
  ADD KEY `kategorija_id` (`kategorija_id`),
  ADD KEY `korisnik_id` (`korisnik_id`);

--
-- Indexes for table `gradovi`
--
ALTER TABLE `gradovi`
  ADD PRIMARY KEY (`grad_id`);

--
-- Indexes for table `kategorije`
--
ALTER TABLE `kategorije`
  ADD PRIMARY KEY (`kategorija_id`);

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `dogadjaj_id` (`dogadjaj_id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- Indexes for table `kviz`
--
ALTER TABLE `kviz`
  ADD PRIMARY KEY (`pitanje_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dogadjaji`
--
ALTER TABLE `dogadjaji`
  MODIFY `dogadja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gradovi`
--
ALTER TABLE `gradovi`
  MODIFY `grad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategorije`
--
ALTER TABLE `kategorije`
  MODIFY `kategorija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kviz`
--
ALTER TABLE `kviz`
  MODIFY `pitanje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dogadjaji`
--
ALTER TABLE `dogadjaji`
  ADD CONSTRAINT `dogadjaji_ibfk_1` FOREIGN KEY (`grad_id`) REFERENCES `gradovi` (`grad_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dogadjaji_ibfk_3` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorije` (`kategorija_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dogadjaji_ibfk_4` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnici` (`korisnik_id`) ON UPDATE CASCADE;

--
-- Constraints for table `komentari`
--
ALTER TABLE `komentari`
  ADD CONSTRAINT `komentari_ibfk_1` FOREIGN KEY (`dogadjaj_id`) REFERENCES `dogadjaji` (`dogadja_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
