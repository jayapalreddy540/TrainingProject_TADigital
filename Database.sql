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

-- Dumping structure for table training_project.customer_info
CREATE TABLE IF NOT EXISTS `customer_info` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_fname` varchar(50) DEFAULT NULL,
  `cust_lname` varchar(50) DEFAULT NULL,
  `cust_dob` date DEFAULT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_pwd` varchar(50) DEFAULT NULL,
  `cust_gender` varchar(50) DEFAULT NULL,
  `cust_address` varchar(50) DEFAULT NULL,
  `cust_city` varchar(50) DEFAULT NULL,
  `cust_zip` int(11) DEFAULT NULL,
  `cust_state` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_mobile` bigint(20) DEFAULT NULL,
  `cust_sesid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_email` (`cust_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table training_project.customer_info: ~7 rows (approximately)
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` (`cust_id`, `cust_fname`, `cust_lname`, `cust_dob`, `cust_email`, `cust_pwd`, `cust_gender`, `cust_address`, `cust_city`, `cust_zip`, `cust_state`, `cust_country`, `cust_mobile`, `cust_sesid`) VALUES
	(1, 'arvind', 'kumar', '2019-12-19', 'arvind@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'akshat', 'kumar', '2019-12-19', 'akshat@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'zoheb', 'shaik', '2019-12-19', 'zoheb@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'varun', 'kumar', '2019-12-19', 'varun@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'sanjay', 'prakash', '2019-12-19', 'sanjay@gmaiil.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Jayapal', 'Myaka', '2019-12-28', 'jaypal@gmail.com', 'jaypal1', 'male', 'null', 'Warangal', 506371, 'Telangana', 'India', 7036299791, 'B27A41980F92CC237107BDE9E3D6B858'),
	(7, 'monkey', 'king', '2019-12-28', 'monkey@gmail.com', 'monkey1', 'male', 'null', 'delhi', 100010, 'delhi', 'India', 9876543210, NULL);
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;

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
