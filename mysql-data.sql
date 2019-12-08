-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for table_pivot
CREATE DATABASE IF NOT EXISTS `table_pivot` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `table_pivot`;

-- Dumping structure for table table_pivot.pivot_table
CREATE TABLE IF NOT EXISTS `pivot_table` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL DEFAULT '0',
  `Lastname` varchar(50) NOT NULL DEFAULT '0',
  `Email` varchar(50) NOT NULL DEFAULT '0',
  `Item` varchar(50) NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `Total_price` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table table_pivot.pivot_table: ~10 rows (approximately)
/*!40000 ALTER TABLE `pivot_table` DISABLE KEYS */;
INSERT INTO `pivot_table` (`Id`, `Firstname`, `Lastname`, `Email`, `Item`, `Quantity`, `Total_price`) VALUES
	(1, 'Tommy', 'Bejo', 'tommy@mail.com', 'Barang1', 2, 100000),
	(2, 'Joko', 'Widodo', 'joko@mail.com', 'Barang2', 1, 50000),
	(3, 'Jusuf', 'Kalla', 'jusuf@mail.com', 'Barang3', 3, 150000),
	(4, 'Tommy', 'Bejo', 'tommy@mail.com', 'Barang2', 2, 100000),
	(5, 'Joko', 'Widodo', 'joko@mail.com', 'Barang3', 1, 150000),
	(6, 'Jusuf', 'Kalla', 'jusuf@mail.com', 'Barang1', 2, 150000),
	(7, 'Robert', 'Garcia', 'robert@mail.com', 'Barang4', 3, 150000),
	(8, 'Robert', 'Garcia', 'robert@mail.com', 'Barang2', 2, 100000),
	(9, 'Andy', 'Ferdian', 'andy@gmail.com', 'Barang5', 3, 150000),
	(10, 'Andy', 'Ferdian', 'andy@gmail.com', 'Barang5', 4, 100000);
/*!40000 ALTER TABLE `pivot_table` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
