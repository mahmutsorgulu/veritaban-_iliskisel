-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 11 Eki 2019, 19:19:11
-- Sunucu sürümü: 5.7.26
-- PHP Sürümü: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fakulte`
--

DROP TABLE IF EXISTS `fakulte`;
CREATE TABLE IF NOT EXISTS `fakulte` (
  `fakulte_id` int(11) NOT NULL AUTO_INCREMENT,
  `fakulte_isim` varchar(20) NOT NULL,
  `ogrenci_isim` varchar(20) NOT NULL,
  PRIMARY KEY (`fakulte_id`),
  KEY `ogrenci_isim` (`ogrenci_isim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogrenci_isim` varchar(20) NOT NULL,
  PRIMARY KEY (`ogrenci_id`),
  KEY `ogrenci_isim` (`ogrenci_isim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `fakulte`
--
ALTER TABLE `fakulte`
  ADD CONSTRAINT `fakulte_ibfk_1` FOREIGN KEY (`ogrenci_isim`) REFERENCES `ogrenci` (`ogrenci_isim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
