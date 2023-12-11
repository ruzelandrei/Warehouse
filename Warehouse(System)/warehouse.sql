-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 06:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse`
--
CREATE DATABASE IF NOT EXISTS `warehouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `warehouse`;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--
-- Creation: Dec 08, 2023 at 03:49 AM
-- Last update: Dec 08, 2023 at 04:59 AM
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(60) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `clients`:
--

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`orderid`, `name`, `address`, `total`, `date`) VALUES
(14, 'jaf', 'tite', 3850.00, '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--
-- Creation: Dec 08, 2023 at 03:43 AM
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `ordernumber` char(4) NOT NULL,
  `materials` varchar(60) NOT NULL,
  `stocks` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `inventory`:
--

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ordernumber`, `materials`, `stocks`) VALUES
('1', 'Utility Sand', '999'),
('2', 'Concrete Sand', '999'),
('3', 'Fill Sand', '999'),
('4', 'Industrial Sand', '999'),
('5', 'Masonry Sand', '999'),
('6', 'Oak Wood', '999'),
('7', 'Mahogany Wood', '999'),
('8', 'Walnut Wood', '999'),
('9', 'Maple Wood', '999'),
('10', 'Pine Wood', '999'),
('11', 'Raw Steel', '999'),
('12', 'Carbon Steel', '999'),
('13', 'Alloy Steel', '999'),
('14', 'Stainless Steel', '999'),
('15', 'Titanium Steel', '999');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--
-- Creation: Dec 07, 2023 at 10:37 AM
--

DROP TABLE IF EXISTS `pricelist`;
CREATE TABLE IF NOT EXISTS `pricelist` (
  `ordernumber` char(4) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `pricelist`:
--

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`ordernumber`, `price`) VALUES
('1', 1500.00),
('2', 1500.00),
('3', 1500.00),
('4', 1500.00),
('5', 1500.00),
('6', 350.00),
('7', 250.00),
('8', 280.00),
('9', 370.00),
('10', 400.00),
('11', 2400.00),
('12', 2700.00),
('13', 3200.00),
('14', 3000.00),
('15', 3500.00);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table clients
--

--
-- Metadata for table inventory
--

--
-- Metadata for table pricelist
--

--
-- Metadata for database warehouse
--
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
