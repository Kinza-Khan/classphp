-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2022 at 08:40 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `company_tittle` varchar(500) DEFAULT NULL,
  `company_logo` varchar(500) DEFAULT NULL,
  `role_type_id` int(11) DEFAULT NULL,
  `create_date` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `email`, `contact`, `user`, `PASSWORD`, `address`, `company_tittle`, `company_logo`, `role_type_id`, `create_date`, `status`) VALUES
(1, 'kinza', 'kinza@gmail.com', '0123456789', 'kinza', '123', 'karachi', 'aptech', 'aptech.png', 1, '2021-12-12', 1),
(2, 'fareeha', 'fari@gmail.com', '031245', 'fariha', '12345', NULL, 'null', 'null', 2, '2021-12-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `entry_date`, `entry_by`, `modified_date`, `modified_by`) VALUES
(1, 'mobiles', 'all types of accessories', 1, '2021-02-02', 1, '2021-02-02', 1),
(2, 'computer', 'all types of accessories', 1, '2021-02-04', 3, '2021-02-04', 3),
(3, 'book', 'all types of accessories', 1, '2021-02-02', 1, '2021-02-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cnic` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `salary` varchar(500) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `cnic`, `designation`, `salary`, `date`, `status`) VALUES
(1, 'Misbah', 'misbah@gmail.com', '42401-3245677-2', 'account manager', '50,000', '2020-09-12', 0),
(2, 'Hafsa', 'hafsa@gmail.com', '43401-3245667-3', 'database administrator', '150,000', '2020-02-22', 1),
(3, 'Mariyum', 'mariyum@gmail.com', '44401-3244344-4', 'charter cordinator', '75,000', '2018-06-25', 2),
(4, 'Fariha', 'fari@gmail.com', '42401-2080407-6', 'developer of front-end', '67,000', '2019-07-14', 0),
(5, 'Kinza', 'kinza@gmail.com', '42301-3257457-7', 'manager', '200,000', '2020-01-31', 1),
(6, 'Muazzan', 'muazzan@gmail.com', '42302-3245465-2', 'admin of management', '58,000', '2017-03-1', 2),
(7, 'Irfan', 'irfan@gmail.com', '43401-3245655-6', 'back-end php developer', '62,000', '2019-09-15', 0),
(8, 'Bilal', 'bilal@gmail.com', '43403-3655677-2', 'faculty head', '78,000', '2019-04-23', 0),
(9, 'Saeed Ghani', 'gani@gmail.com', '42401-4564786-8', 'employee of database', '25,560', '2020-05-20', 1),
(10, 'Zain', 'zain@gmail.com', '43402-7586754-7', 'faculty member', '57,890', '2020-12-27', 2),
(11, 'Faiz Ahmed', 'faiz@gmail.com', '41404-7667554-2', 'office boy', '20,000', '2019-11-13', 0),
(12, 'Laiba', 'laiba@gmail.com', '42408-5765657-1', 'reciption girl', '22,000', '2021-10-16', 1),
(13, 'Shiza', 'shiza@gmail.com', '42401-567547-9', 'co-ordinate', '20,000', '2019-08-27', 2),
(14, 'Ali Raza', 'raza@gmail.com', '43401-564654-3', 'database manager', '50,000', '2020-09-12,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `descroption` varchar(500) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `stauts` int(11) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `c_id`, `name`, `brand`, `code`, `price`, `quantity`, `descroption`, `entry_date`, `entry_by`, `modified_date`, `modified_by`, `stauts`, `photo`) VALUES
(1, 1, 'infinix hot 10', 'infinix', 'infinix-1001', 34000, 3, 'null', '2021-02-03', 1, '2021-02-03', 1, 1, 'infinix1001.png'),
(2, 1, 'sony experiaz', 'sony', 's-121', 18000, 3, 'null', '2021-02-04', 1, '2021-02-06', 3, 1, 's121.png'),
(3, 1, 'vivo y12', 'vivo', 'v-201', 20000, 5, 'null', '2021-02-04', 1, '2021-02-04', 1, 1, 'v201.png'),
(4, 1, 'realme', 'oppo', 'oppo-771', 25000, 6, 'null', '2021-02-04', 1, '2021-02-04', 1, 1, 'rm771.png'),
(5, 1, 'moto e5', 'motorola', 'm-1231', 18000, 8, 'null', '2021-02-02', 1, '2021-02-02', 1, 1, 'moto1231.png'),
(6, 2, 'dell', 'dell', 'dell-233', 45000, 3, 'null', '2021-02-06', 3, '2021-02-06', 3, 1, 'd233.png'),
(7, 2, 'intel', 'hp', 'hp-444', 59000, 3, 'null', '2021-02-06', 3, '2021-02-06', 3, 1, 'hp444.png'),
(8, 3, 'janat ky pattay', 'nimra ahmed', 'jtp-001', 1500, 5, 'null', '2021-02-08', 1, '2021-02-08', 1, 1, 'jtp001.png'),
(9, 3, 'peer e kameel', 'umaira ahmed', 'pk-232', 1200, 2, 'null', '2021-02-08', 1, '2021-02-08', 1, 1, 'pk232.png'),
(10, 3, 'aab e hayat', 'nimra ahmed', 'aah-5454', 1300, 2, 'null', '2021-02-08', 1, '2021-02-08', 1, 1, 'aah5454.png');

-- --------------------------------------------------------

--
-- Table structure for table `role_type`
--

CREATE TABLE `role_type` (
  `id` int(11) NOT NULL,
  `rtype` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_type`
--

INSERT INTO `role_type` (`id`, `rtype`, `description`, `status`) VALUES
(1, 'admin', 'all right reserve', 1),
(2, 'costumer', 'order, view ,cancel, recieve', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type`
--
ALTER TABLE `role_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rtype` (`rtype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_type`
--
ALTER TABLE `role_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
