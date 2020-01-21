-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.62 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for training_project
CREATE DATABASE IF NOT EXISTS `training_project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `training_project`;

-- Dumping structure for table training_project.customer_address_information
CREATE TABLE IF NOT EXISTS `customer_address_information` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT NULL,
  `add_address` varchar(1000) DEFAULT NULL,
  `add_city` varchar(50) DEFAULT NULL,
  `add_pincode` varchar(50) DEFAULT NULL,
  `add_state` varchar(50) DEFAULT NULL,
  `add_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table training_project.customer_address_information: ~1 rows (approximately)
/*!40000 ALTER TABLE `customer_address_information` DISABLE KEYS */;
INSERT INTO `customer_address_information` (`add_id`, `cust_id`, `add_address`, `add_city`, `add_pincode`, `add_state`, `add_country`) VALUES
	(1, 1, '1-185', 'Seethampet', '506371', 'Telangana', 'India');
/*!40000 ALTER TABLE `customer_address_information` ENABLE KEYS */;

-- Dumping structure for table training_project.customer_personal_information
CREATE TABLE IF NOT EXISTS `customer_personal_information` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_fname` varchar(50) DEFAULT NULL,
  `cust_lname` varchar(50) DEFAULT NULL,
  `cust_gender` varchar(50) NOT NULL DEFAULT '0',
  `cust_contact_no` varchar(50) NOT NULL DEFAULT '0',
  `cust_email` varchar(50) DEFAULT NULL,
  `cust_pwd` varchar(50) DEFAULT NULL,
  `cust_sesid` varchar(500) NOT NULL DEFAULT '0',
  `cust_stay_signed_in` varchar(50) NOT NULL DEFAULT '0',
  `cust_profile_picture` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table training_project.customer_personal_information: ~1 rows (approximately)
/*!40000 ALTER TABLE `customer_personal_information` DISABLE KEYS */;
INSERT INTO `customer_personal_information` (`cust_id`, `cust_fname`, `cust_lname`, `cust_gender`, `cust_contact_no`, `cust_email`, `cust_pwd`, `cust_sesid`, `cust_stay_signed_in`, `cust_profile_picture`) VALUES
	(1, 'Jayapal', 'Myaka', 'male', '7036299791', 'jayapalreddymjpal@gmail.com', '12345', 'E94EA7BA5FE94C5BAA8145B8EE5CBCF5', '0', '0');
/*!40000 ALTER TABLE `customer_personal_information` ENABLE KEYS */;

-- Dumping structure for table training_project.product_info
CREATE TABLE IF NOT EXISTS `product_info` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(50) DEFAULT NULL,
  `prod_price` double DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table training_project.product_info: ~4 rows (approximately)
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` (`prod_id`, `prod_name`, `prod_price`) VALUES
	(1, 'maggi', 25),
	(2, 'real orange', 75),
	(3, 'noodles', 30),
	(4, 'apple juice', 95);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
