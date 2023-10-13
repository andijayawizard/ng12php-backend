-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table angular_db.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `price` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_cars_cars_brand` (`brand_id`),
  CONSTRAINT `FK_cars_cars_brand` FOREIGN KEY (`brand_id`) REFERENCES `cars_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table angular_db.cars: ~5 rows (approximately)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
REPLACE INTO `cars` (`id`, `brand_id`, `model`, `price`) VALUES
	(7, 7, 'HRV', 100),
	(8, 7, 'BRV', 100),
	(9, 7, 'CX5', 100),
	(10, 7, 'CX3', 100),
	(11, 7, 'CX7', 100),
	(12, 7, 'avanza', 100),
	(13, 7, 'xenia', 100);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Dumping structure for table angular_db.cars_brand
CREATE TABLE IF NOT EXISTS `cars_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table angular_db.cars_brand: ~0 rows (approximately)
/*!40000 ALTER TABLE `cars_brand` DISABLE KEYS */;
REPLACE INTO `cars_brand` (`id`, `name`) VALUES
	(5, 'mitsubishi'),
	(6, 'honda'),
	(7, 'bmw'),
	(8, 'toyota'),
	(9, NULL),
	(10, NULL);
/*!40000 ALTER TABLE `cars_brand` ENABLE KEYS */;

-- Dumping structure for table angular_db.policies
CREATE TABLE IF NOT EXISTS `policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table angular_db.policies: ~0 rows (approximately)
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
