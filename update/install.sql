
DROP TABLE IF EXISTS `p_czynnosc`;
CREATE TABLE IF NOT EXISTS `p_czynnosc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CZYNNOSC` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `MASZYNA` int(11) NOT NULL,
  `STEP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_czynnosc`
--

INSERT INTO `p_czynnosc` (`ID`, `CZYNNOSC`, `MASZYNA`, `STEP`) VALUES
(1, 'naswietlanie', 1, 1),
(2, 'druk', 2, 2),
(3, 'druk', 3, 3),
(4, 'laminowanie', 4, 4),
(10, 'Liczenie', 5, 4),
(11, 'Liczenie', 5, 5),
(12, 'Liczenie', 6, 6);

-- ------------------- --- ----------------------------------

--
-- Struktura tabeli dla tabeli `p_elementy`
--

DROP TABLE IF EXISTS `p_elementy`;
CREATE TABLE IF NOT EXISTS `p_elementy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nr_zam` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Typ` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `Objetosc` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `Papier` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `Kolor` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `Uszlachetnienie0` text COLLATE utf8_polish_ci NOT NULL,
  `Uszlachetnienie1` text COLLATE utf8_polish_ci,
  `Uszlachetnienie2` text COLLATE utf8_polish_ci,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_elementy`
--

INSERT INTO `p_elementy` (`ID`, `Nr_zam`, `Typ`, `Objetosc`, `Papier`, `Kolor`, `Uszlachetnienie0`, `Uszlachetnienie1`, `Uszlachetnienie2`) VALUES
(41, '4-MM', 'srodek', '30', 'kreda blysk 80g', '1 1', '1', '', ''),
(42, '4-MM', 'wszywka', '321', 'kreda blysk 130g', '1 1', '', '', ''),
(38, '4-MM', 'calosc', '50', 'kreda blysk 90g', '1 1', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_maszyna`
--

DROP TABLE IF EXISTS `p_maszyna`;
CREATE TABLE IF NOT EXISTS `p_maszyna` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAZWA` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `M_STEP` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_maszyna`
--

INSERT INTO `p_maszyna` (`ID`, `NAZWA`, `M_STEP`) VALUES
(1, 'CTP', 1),
(2, 'Ryobi', 2),
(3, 'Heidenberg', 3),
(4, 'Laminator', 4),
(5, 'Liczenie', 5),
(6, 'Stanowisko 1', 6),
(7, 'Krajarka', 7),
(8, 'Laminator', 8),
(9, 'Stanowisko 2', 9),
(10, 'Falcerka', 10),
(11, 'Stanowisko 3', 11),
(12, 'Bigowanie', 12),
(13, 'Stanowisko 4', 13),
(14, 'Linia zszywająca 1', 14),
(15, 'Linia zszywająca 2', 15),
(16, 'Listwowanie', 16),
(17, 'Dziurkowanie', 17),
(18, 'Spiralowanie', 18),
(19, 'Oklejarka', 19),
(20, 'Wiertarka', 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_oprawy`
--

DROP TABLE IF EXISTS `p_oprawy`;
CREATE TABLE IF NOT EXISTS `p_oprawy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAZWA` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `OPIS` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_oprawy`
--

INSERT INTO `p_oprawy` (`ID`, `NAZWA`, `OPIS`) VALUES
(1, 'brak', 'brak'),
(2, 'pur', 'pur'),
(3, 'szycie na 2 zszywki', 'szycie na 2 zszywki'),
(4, 'szycie na 1 zszywke', 'szycie na 1 zszywkę'),
(5, 'szycie na 2 eurozszywki', 'szycie na 2 eurozszywki'),
(6, 'szycie na 1 eurozszywke', 'szycie na 1 eurozszywkę'),
(7, 'oprawa twarda', 'oprawa twarda'),
(8, 'oprawa twarda, szyto-klejona', 'oprawa twarda, szyto-klejona'),
(9, 'miekka szyto-klejona', 'miekka szyto-klejona'),
(10, 'klejenie - dlugi bok', 'klejenie - długi bok'),
(11, 'klejenie - krotki bok', 'klejenie - krótki bok'),
(12, 'spiralowanie - dlugi bok', 'spiralowanie - długi bok'),
(13, 'spiralowanie - krotki bok', 'spiralowanie - krótki bok'),
(14, 'klejenie - gorny bok', 'klejenie - górny bok'),
(15, 'klejenie - dolny bok', 'klejenie - dolny bok'),
(16, 'bigowanie', 'bigowanie'),
(17, 'bigowanie i falcowanie', 'bigowanie i falcowanie'),
(18, 'bigowanie i szycie', 'bigowanie i szycie'),
(19, 'falcowanie na pol', 'falcowanie na pół'),
(20, 'falcowanie w C', 'falcowanie w C'),
(21, 'falcowanie w Z', 'falcowanie w Z'),
(22, 'falcowanie w harmonijke', 'falcowanie w harmonijkę'),
(23, 'falcowanie w oltarzyk', 'falcowanie w ołtarzyk'),
(24, 'falcowanie na pol i na pol', 'falcowanie na pół i na pół'),
(25, 'falcowanie bardzo duzo razy', 'falcowanie bardzo dużo razy'),
(26, 'listwowanie - dlugi bok', 'listwowanie - długi bok'),
(27, 'listwowanie - krotki bok', 'listwowanie - krótki bok'),
(28, 'plano', 'plano'),
(29, 'sztancowanie', 'sztancowanie'),
(30, 'zbieranie w komplety', 'zbieranie w komplety');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_produkt`
--

DROP TABLE IF EXISTS `p_produkt`;
CREATE TABLE IF NOT EXISTS `p_produkt` (
  `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT,
  `NAZWA_Prod` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL,
  `S1` int(11) DEFAULT NULL,
  `S2` int(11) DEFAULT NULL,
  `S3` int(11) DEFAULT NULL,
  `S4` int(11) DEFAULT NULL,
  `S5` int(11) DEFAULT NULL,
  `S6` int(11) DEFAULT NULL,
  `S7` int(11) DEFAULT NULL,
  `S8` int(11) DEFAULT NULL,
  `S9` int(11) DEFAULT NULL,
  `S10` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Produkt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_status`
--

DROP TABLE IF EXISTS `p_status`;
CREATE TABLE IF NOT EXISTS `p_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAZWA` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `NEXT` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_status`
--

INSERT INTO `p_status` (`ID`, `NAZWA`, `NEXT`) VALUES
(1, 'Nowe', 2),
(2, 'Oczekuje', 3),
(3, 'W realizacji', 4),
(4, 'Zakończono', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_warunek`
--

DROP TABLE IF EXISTS `p_warunek`;
CREATE TABLE IF NOT EXISTS `p_warunek` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WARUNEK` text COLLATE utf8_polish_ci NOT NULL,
  `P_CZYNNOSC` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_warunek`
--

INSERT INTO `p_warunek` (`ID`, `WARUNEK`, `P_CZYNNOSC`) VALUES
(1, 'folia mat 1+0', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_zamowienia`
--

DROP TABLE IF EXISTS `p_zamowienia`;
CREATE TABLE IF NOT EXISTS `p_zamowienia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nr` int(11) NOT NULL,
  `skrot` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `Nr_zam` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `Klient_id` int(11) NOT NULL,
  `potwierdzenie` tinyint(1) NOT NULL,
  `Handlowiec_id` int(6) NOT NULL,
  `Nazwa_pracy` text COLLATE utf8_polish_ci NOT NULL,
  `Rodzaj_oprawy` int(6) NOT NULL,
  `Format_netto` text COLLATE utf8_polish_ci NOT NULL,
  `Naklad` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `il_wzorow` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `Element1` int(11) NOT NULL,
  `Element2` int(11) DEFAULT NULL,
  `Element3` int(11) DEFAULT NULL,
  `Element4` int(11) DEFAULT NULL,
  `Wrzutka_wklejka` text COLLATE utf8_polish_ci,
  `Prace_dodatkowe` text COLLATE utf8_polish_ci,
  `Pakowanie` text COLLATE utf8_polish_ci,
  `Miejsce_dostawy` text COLLATE utf8_polish_ci NOT NULL,
  `Cena` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `Cena_dodatkowa` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `VAT` tinyint(4) NOT NULL,
  `ISBN_ISSN` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `platnosc` text COLLATE utf8_polish_ci NOT NULL,
  `Grafik_id` int(6) DEFAULT NULL,
  `Data_utworzenia` date NOT NULL,
  `Data_przydzialu` date DEFAULT NULL,
  `Data_wysylki` date DEFAULT NULL,
  `Termin_realizacji` date NOT NULL,
  `Etap` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Maszyna_ID` int(11) DEFAULT NULL,
  `Czynnosc_ID` int(11) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL,
  `pliki` int(1) NOT NULL,
  `podglad_plikow` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL,
  `kontakt` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `email_fv` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `uwagi_graficy` text COLLATE utf8_polish_ci,
  `uwagi_drukarze` text COLLATE utf8_polish_ci,
  `uwagi_intro` text COLLATE utf8_polish_ci,
  `proof` tinyint(1) NOT NULL,
  `ost_zmiana` text COLLATE utf8_polish_ci,
  `ost_zmiana_data` date DEFAULT NULL,
  `kurier` int(11) DEFAULT NULL,
  `nr_listu` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_prodman` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `p_zamowienia`
--

INSERT INTO `p_zamowienia` (`ID`, `Nr`, `skrot`, `Nr_zam`, `Klient_id`, `potwierdzenie`, `Handlowiec_id`, `Nazwa_pracy`, `Rodzaj_oprawy`, `Format_netto`, `Naklad`, `il_wzorow`, `Element1`, `Element2`, `Element3`, `Element4`, `Wrzutka_wklejka`, `Prace_dodatkowe`, `Pakowanie`, `Miejsce_dostawy`, `Cena`, `Cena_dodatkowa`, `VAT`, `ISBN_ISSN`, `platnosc`, `Grafik_id`, `Data_utworzenia`, `Data_przydzialu`, `Data_wysylki`, `Termin_realizacji`, `Etap`, `Maszyna_ID`, `Czynnosc_ID`, `Status`, `pliki`, `podglad_plikow`, `kontakt`, `email_fv`, `uwagi_graficy`, `uwagi_drukarze`, `uwagi_intro`, `proof`, `ost_zmiana`, `ost_zmiana_data`, `kurier`, `nr_listu`, `nr_prodman`) VALUES
(1, 4, '-MM', '4-MM', 145, 0, 16, 'broszura testowa', 2, '100x200', '1000', '2 po 500', 41, 42, 38, 3, 'brak', '', '', 'TESTOWY ul. Piekna 1 18-400 ZADUPIE', '1000zł', '2000zł', 23, '', '14dni', NULL, '2017-06-27', NULL, NULL, '2017-06-16', 'Rejestracja w systemie', NULL, NULL, 1, 0, NULL, 'bok@topdruk24.pl', 'bok@topdruk24.pl', '', '', '', 0, NULL, NULL, NULL, NULL, NULL);
