-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2019 at 03:27 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cluent`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

DROP TABLE IF EXISTS `category_detail`;
CREATE TABLE IF NOT EXISTS `category_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(1) NOT NULL,
  `detail` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cluster_code`
--

DROP TABLE IF EXISTS `cluster_code`;
CREATE TABLE IF NOT EXISTS `cluster_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(1) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `brand_id` varchar(20) NOT NULL,
  `coupon_val` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_status`
--

DROP TABLE IF EXISTS `coupon_status`;
CREATE TABLE IF NOT EXISTS `coupon_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_brand`
--

DROP TABLE IF EXISTS `customer_brand`;
CREATE TABLE IF NOT EXISTS `customer_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cutomer_id` varchar(20) NOT NULL,
  `brand_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

DROP TABLE IF EXISTS `customer_reg`;
CREATE TABLE IF NOT EXISTS `customer_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ph_no` int(12) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `pincode` int(12) NOT NULL,
  `Industry` varchar(30) NOT NULL,
  `Experience(in years)` varchar(30) NOT NULL,
  `Salary` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_table`
--

DROP TABLE IF EXISTS `purchase_table`;
CREATE TABLE IF NOT EXISTS `purchase_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `items_name` varchar(30) NOT NULL,
  `item_price` int(10) NOT NULL,
  `brand_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_reg`
--

DROP TABLE IF EXISTS `shop_reg`;
CREATE TABLE IF NOT EXISTS `shop_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) NOT NULL,
  `owner_name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` int(12) NOT NULL,
  `brand_id` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_purchase`
--

DROP TABLE IF EXISTS `total_purchase`;
CREATE TABLE IF NOT EXISTS `total_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `total_bill` int(10) NOT NULL,
  `brand_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
