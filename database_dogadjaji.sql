-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Jan 09, 2020 at 08:54 PM
=======
-- Generation Time: Jan 09, 2020 at 05:57 PM
>>>>>>> 3f268bb9961365f4142c9de9b44b631ad2c7c2ee
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
(12, 'test', 'test', '2020-01-16 00:00:00', 1, 1, 1);

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
(1, 'umjetnost');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `komentar_id` int(11) NOT NULL,
  `komentar_tekst` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dogadjaj_id` int(11) NOT NULL,
  `komentator` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Anonymous'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`komentar_id`, `komentar_tekst`, `dogadjaj_id`, `komentator`) VALUES
(66, 'tseatćččšđžž', 12, 'Brane');

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

-- --------------------------------------------------------

--
-- Table structure for table `kviz2`
--

CREATE TABLE `kviz2` (
  `id` int(11) NOT NULL,
  `pitanje` text COLLATE utf8_unicode_ci NOT NULL,
  `odgovor_1` text COLLATE utf8_unicode_ci NOT NULL,
  `odgovor_2` text COLLATE utf8_unicode_ci NOT NULL,
  `odgovor_3` text COLLATE utf8_unicode_ci NOT NULL,
  `tacan_odgovor` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kviz2`
--

INSERT INTO `kviz2` (`id`, `pitanje`, `odgovor_1`, `odgovor_2`, `odgovor_3`, `tacan_odgovor`) VALUES
<<<<<<< HEAD
(18, 'Kako se zove rijeka koja protiče kroz Banju Luku?', 'Sana', 'Vrbas', 'Una', 'Vrbas'),
(19, 'Koje godine je Banju Luku potresao zemljotres?', '1965.', '1962.', '1969.', '1969.'),
(20, 'Kako se zove čuvena tvrđava u Banjoj Luci?', 'Tvrđava Kastel', 'Kalemegdanska tvrđava', 'Petrovaradinska tvrđava', 'Tvrđava Kastel'),
(21, 'Koji čuveni srpski pjesnik, pisac i političar je rođen u okolini Banje Luke?', 'Petar Kočić', 'Jovan Dučić', 'Branko Ćopić', 'Petar Kočić'),
(22, 'Banjaluka je nadaleko poznata po jednom specijalitetu. Šta to morate obavezno pojesti u Banjoj Luci:', 'Kebab', 'Šnicle', 'Ćevape', 'Ćevape'),
(23, 'Kada treba da se sastanete sa nekim u Banjoj Luci, bilo da ste turista ili stanovnik ovog grada, lokacija je uvijek ista. Koje to mjesto simboliše susrete u Banjaluci?', 'Krivi sat', 'Krivi toranj', 'Krivo zvono', 'Krivi sat'),
(24, 'Banjaluku prati jedna legenda, kažu da je slična onoj u Veroni. Kako se to zovu banjalučki Romeo i Julija?', 'Adam i Eva', 'Omer i Safikada', 'Laza i Lenka', 'Omer i Safikada'),
(25, 'U Banjoj Luci ste sigurno čuli i jedan zanimljiv podatak , a to je:', 'U Banjoj Luci živi sedam puta vise žena nego muškaraca.', 'Najveći pravoslavni hram se nalazi u Banjoj Luci.', 'Najprodavanije povrće u Banjoj Luci je kupus.', 'U Banjoj Luci živi sedam puta vise žena nego muškaraca.'),
(26, 'Sport u Banjoj Luci je imao, ima i imaće posebno mjesto, kao važan segment u razvoju i napretku grada na Vrbasu. Kako se zove poznati sportski klub u ovom gradu?', 'Borac', 'Partizan', 'Dinamo', 'Borac'),
(27, 'Priroda u okolini Banje Luke je još jedan razlog da ostanete dan vise u obom gradu. Koje je to poznato izletište u blizini grada?', 'Kozara', 'Banj brdo', 'Fruška gora', 'Banj brdo');
=======
(17, 'test123 ćććććčđšđć', 'test123 ćććććčđšđć', 'test123 ćććććčđšđć', 'test123 ćććććčđšđć', 'test123 ćććććčđšđć');
>>>>>>> 3f268bb9961365f4142c9de9b44b631ad2c7c2ee

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
-- Indexes for table `kviz2`
--
ALTER TABLE `kviz2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dogadjaji`
--
ALTER TABLE `dogadjaji`
  MODIFY `dogadja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gradovi`
--
ALTER TABLE `gradovi`
  MODIFY `grad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategorije`
--
ALTER TABLE `kategorije`
  MODIFY `kategorija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
-- AUTO_INCREMENT for table `kviz2`
--
ALTER TABLE `kviz2`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
>>>>>>> 3f268bb9961365f4142c9de9b44b631ad2c7c2ee

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dogadjaji`
--
ALTER TABLE `dogadjaji`
  ADD CONSTRAINT `dogadjaji_ibfk_1` FOREIGN KEY (`grad_id`) REFERENCES `gradovi` (`grad_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dogadjaji_ibfk_3` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorije` (`kategorija_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dogadjaji_ibfk_4` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnici` (`korisnik_id`) ON UPDATE CASCADE;

--
-- Constraints for table `komentari`
--
ALTER TABLE `komentari`
  ADD CONSTRAINT `komentari_ibfk_1` FOREIGN KEY (`dogadjaj_id`) REFERENCES `dogadjaji` (`dogadja_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
