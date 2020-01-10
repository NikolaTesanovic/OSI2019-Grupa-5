-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2020 at 05:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

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
  `datum` date NOT NULL,
  `grad_id` int(11) NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dogadjaji`
--

INSERT INTO `dogadjaji` (`dogadja_id`, `naziv`, `detalji`, `datum`, `grad_id`, `kategorija_id`, `korisnik_id`) VALUES
(13, 'Zatvorena 43. sezona Banjalučkog studentskog pozorišta', 'U “Podrum sceni” u Gospodskoj ulici 22. decembra 2019. godine Banjalučko studentsko pozorište svečano je zatvorilo 43. sezonu koja je nosila naziv “Reanimacija”.\r\nPozorište je ove godine imalo 2 premijere (“Dejton” i „Žilište“), preko 70 repriza gostujućih i predstava sa redovnog repertoara, te ukupno organizovalo 116 različitih događaja, od kojih je najznačajniji međunarodni festival “Kestenburg”, te gostovanja predstave “Noć bogova” kao najgledanije predstave u Republici Srpskoj tokom 2019. godine. \r\nSvečanosti su prisustovale, kao i uvijek kada je Studentskog pozorište u pitanju sve generacije, od najmlađih, preko studenata do penzionera, a podršku su dali i najstariji članovi Studentskog pozorišta gospodin Dragoslav Medojević i gospođa Radenka Ševa koji su bili u publici, te profesor Akademije umjetnosti gospodin Željko Mitović.', '2019-12-22', 1, 12, 1),
(14, 'Promocija knjige “Migranti  i mi”', 'Na Filozofskom fakultetu u Banjaluci danas je predstavljena knjiga “Migranti i mi – Sociopsihološka analiza uzajamne percepcije”, koja je rezultat višemjesečnog obimnog istraživanja trojice autora: profesora dr Srđana Dušanića, te Jamena Hrekesa i mr Miloša Pralice.\r\nRezultati istraživanja, ali i potresna svjedočenja migranata navedena u knjizi, potvrdili su da većina stanovnika BiH o migratima ne zna skoro ništa, ali da ih ipak odbacuje, vjerujući da su opasni, agresivni, prljavi, nekulturni… Ni migranti o BiH ne znaju skoro ništa, osim da je to zemlja koju treba što prije – napustiti.\r\nNa promociji je, ipak, najviše pažnje izazvala prezentacija jednog od istraživača i koautora knjige, mladog Sirijca Jamena Hrekesa, koji je student završne godine studija psihologije na banjalučkom Filozofskom fakultetu. Ovaj mladić ima dugogodišnje iskustvo u radu s migrantima, a odlično znanje srpskog, engleskog i, naravno, arapskog, koji mu je maternji jezik, bilo je dragocjeno tokom istraživanja.', '2019-12-20', 1, 14, 1),
(15, 'Plesni maskembal', 'U subotu, 25.januara u GP „Jazavac“ sa početkom u 18:15 časova održaće se javni čas „Plesni maskenbal“, u organizaciji ”Prve baletske škole”.\r\nUčenice osnovne baletske škole će demonstrirati gradivo naučeno tokom prvog polugodišta i izvesti baletske koreografije kao i maskenbal.', '2020-01-25', 1, 12, 1),
(16, 'Labudovo jezero u Banjoj Luci', 'Najpoznatija baletska predstava na svijetu “Labudovo jezero” Petra Iljiča Čajkovskog održaće se u Banjaluci u izvedbi ansambla Ruskog državnog baleta na ledu iz Sankt Peterburga 3.aprila u Sportskoj dvorani “Borik”.\r\nUz  Beograd, Banjaluka će biti jedini grad u regionu koji će i ove godine imati privilegiju da uživa u ovom baletskom spektaklu na ledu.', '2020-04-03', 1, 12, 1),
(17, '“Priče iz komšiluka” u NUBRS', 'Promocija zbirke “Priče iz komšiluka” biće održana u ponedjeljak u Narodnoj i univerzitetskoj biblioteci Republike Srpske.\r\nPromocija će početi u 18 časova, a dan nakon toga, u utorak, u crvenom salonu Banskog dvora Kulturnog centra biće održana književna radionica sa književnikom Miljenkom Jergovićem.\r\nOve godine na konkurs je pristiglo oko 150 radova, a žiri je izabrao 38 radova koji će biti objavljeni u ovogodišnjoj zbirci u izdanju banjalučke izdavačke kuće “Imprimatur”.\r\nPrvu nagradu konkursa osvojila je Nada Kaurin iz Zagreba svojom pričom “Jel fino? Jel da je?”, dok je druga nagrada otišla u ruke Vanje Šušnjar-Čanković za “Priču o dva konja”.', '2020-01-10', 1, 14, 1),
(18, 'Kraljevi romske rapsodije: Gipsy Kings nastupaju u Banjaluci!', 'Krajem sedamdesetih braća André i Nicolas Reyes, sinovi priznatog flamenco umjetnika Josea Reyesa, osnovali su grupu Gipsy Kings te ubrzo postali vrlo cijenjeni muzičari i tražena muzička atrakcija u cijelom svijetu. “Gipsy Kings” njihov istoimeni najpoznatiji album, objavljen 1989. godine proveo je 40 sedmica na top ljestvicama te im je to donijelo veliku popularnost širom Evrope, Amerike i Bliskog Istoka. Na krilima svjetske slave Gipsy Kings su se 2014. godine razdvojili u dvije zasebne frakcije – grupu Nicolasa Reyesa i Andréa Reyesa. André Reyes s desetočlanim bendom nastavlja karijeru izvodeći najveće hitove iz Gipsy Kings muzičkog kataloga koje će izvesti i 21. februara u Banjaluci u dvorani Borik. U prodaju će biti pušteno samo 1800 sjedećih karata.', '2020-02-21', 1, 13, 1),
(19, 'Straight Jackin nastupa u Banjaluci', 'Predstojeći vikend u banjalučkom KSB-u biće obilježen još jednim odličnim nastupom. U subotu 14. decembra očekuje nas popularni  rep-kor sastav Straight Jackin.\r\nPoznat po jasnim tekstovima i energičnoj svirci, ali i mješanju žanrova, ovaj sastav na sceni je od sredine devedesetih, a prvi album bio je “Ulaz se otvara češće”. Za vrijeme studija režije u Sankt Peterburgu, lider grupe Jugoslav Petrović se upoznao sa tamošnjom undergraund muzičkom scenom i vrlo brzo postao njen aktivni učesnik. Pod snažnim uticajem hip-hopa, Petrović zajedno sa nekolicinom članova ska i rege benda Markscheider Kunst, 1994. godine osniva Straight jackin.\r\nPosljednji koncert u Banjaluci održali su prije više od 4 godine.\r\nUlaznice za ovaj nastup po cijeni od 10 KM mogu se kupiti u KSB-u i Peckham Pubu. Cijena ulaznice na dan koncerta biće 14 KM. Početak nastupa zakazan je za 22:00.', '2019-12-14', 1, 13, 1),
(20, 'Otvorena izložba idejnih rješenja buduće pješačke zone u Banjaluci', 'Gradonačelnik Banjaluke Igor Radojičić i gradski arhitekta Ivan Rašković otvorili su večeras u Banjaluci izložbu idejnih rješenja budućeg izgleda centralne gradske pješačke zone koju čine svi prostigli radovi o toj temi.\r\nRadojičić je podsjetio da je završen međunarodni konkurs za izbor najboljeg idejnog rješenja za izgled tog prostora – na potezu od stare autobuske stanice do Ulice Vase Pelagića.\r\n“Stiglo je 12 prijedloga iz različitih krajeva svijeta. Dodijelili smo tri ravnopravne druge nagrade jer po propozicijama nije moguće dodjeliti više od jedne prve nagrade. Nismo se mogli odlučiti za jednu prvu nagradu i kombinacija ova tri rada, čiji su autori iz Srbije, predstavlja budući izgled centralne gradske zone”, rekao je Radojičić.\r\nPrema njegovim riječima, za prostor ispred sadašnjeg Muzeja savremene umjetnosti predviđen je za muzejski trg sa spomen-obilježjem posvećenom Prvom svjetskom ratu, ali i sa trgovskom površinom koja treba biti prostor za okupljanja, koncerte i slično.\r\n“Pored sadašnjeg spomenika banu Svetislavu Milosavljević prema Ulici Vase Pelagića predviđeno je parkovsko-spomeničko područje sa velikom pješačkom zonom, oivičeno stambeno-poslovnim zgradama”, dodao je Radojičić.\r\nOn je izrazio nadu da će se u narednoj godini moći vidjeti bar obrisi novog rješenja centra grada, ističući da će za njegovu kompletnu realizaciju trebati mnogo vremena.', '2019-12-23', 1, 15, 1);

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
(12, 'Kultura'),
(13, 'Koncerti'),
(14, 'Promocije'),
(15, 'Izložbe');

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
(20, 'Koje godine je zemljotres potresao Banju Luku?', '1956', '1962', '1969', '1969'),
(21, 'Kako se zove čuvena tvrđava u Banjoj Luci?', 'Tvrđava Kastel', 'Kalemegdanska tvrđava', 'Petrovaradinska tvrđava', 'Tvrđava Kastel'),
(22, 'Kako se zove rijeka koja protiče kroz Banju Luku?', 'Sana', 'Vrbas', 'Una', 'Vrbas'),
(23, 'Koji čuveni srpski pjesnik, pisac i političar je rođen u okolini Banje Luke?', 'Petar Kočić', 'Jovan Dučić', 'Branko Ćopić', 'Petar Kočić'),
(24, 'Banjaluka je nadaleko poznata po jednom specijalitetu. Šta to morate obavezno pojesti u Banjoj Luci:', 'Kebab', 'Šnicle', 'Ćevape', 'Ćevape'),
(25, 'Kada treba da se sastanete sa nekim u Banjoj Luci, bilo da ste turista ili stanovnik ovog grada, lokacija je uvijek ista. Koje to mjesto simboliše susrete u Banjoj Luci?', 'Krivi sat', 'Krivi toranj', 'Krivo zvono', 'Krivi sat'),
(26, 'Banjaluku prati jedna legenda, kažu da je slična onoj u Veroni. Kako se to zovu banjalučki Romeo i Julija?', 'Adam i Eva', 'Omer i Safikada', 'Laza i Lenka', 'Omer i Safikada'),
(27, 'U Banjoj Luci ste sigurno čuli i jedan zanimljiv podatak , a to je:', 'U Banjoj Luci živi sedam puta vise žena nego muškaraca', 'Najprodavanije povrće u Banjoj Luci je kupus', 'Najveći pravoslavni hram se nalazi u Banjoj Luci', 'U Banjoj Luci živi sedam puta vise žena nego muškaraca'),
(28, 'Sport u Banjoj Luci je imao, ima i imaće posebno mjesto, kao važan segment u razvoju i napretku grada na Vrbasu. Kako se zove poznati sportski klub u ovom gradu?', 'Borac', 'Partizan', 'Dinamo', 'Borac'),
(29, 'Priroda u okolini Banje Luke je još jedan razlog da ostanete dan vise u obom gradu. Koje je to poznato izletište u blizini grada?', 'Kozara', 'Banj brdo', 'Fruška gora', 'Banj brdo');

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
  MODIFY `dogadja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gradovi`
--
ALTER TABLE `gradovi`
  MODIFY `grad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategorije`
--
ALTER TABLE `kategorije`
  MODIFY `kategorija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
