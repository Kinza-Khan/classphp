-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 11:33 AM
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
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `purppose` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `images` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `email`, `password`, `contact`, `address`, `images`, `status`) VALUES
(1, 'fariha', 'fari@gmail.com', '123', '', 'orangi town', 'download.jpg', 0),
(2, 'mariyam', 'mari@gmail.com', '12345', '098787876', 'Pechs', 'bag2.jpg', 0),
(3, 'mariyam', 'mari@gmail.com', '12345', '098787876', 'Pechs', 'bag2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `locationS` varchar(30) NOT NULL,
  `city` varchar(40) NOT NULL,
  `yards` varchar(30) NOT NULL,
  `bedroom` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `property_status` int(11) NOT NULL DEFAULT 1,
  `property_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `property_dec` varchar(100) NOT NULL,
  `property_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `client_id`, `property_type_id`, `price`, `locationS`, `city`, `yards`, `bedroom`, `img`, `bathroom`, `property_status`, `property_date_time`, `property_dec`, `property_name`) VALUES
(1, 2, 2, 17000000, 'DHA', 'karachi', '250', 6, '[\"IMG20180723153048-385x258.jpg\"]', 3, 1, '2021-03-14 16:21:23', 'BVCB  BCBNBV BB B', 'Brand new  house'),
(2, 1, 2, 12000000, 'North Karachi', 'karachi', '350', 7, '[\"\"]', 3, 0, '2021-03-14 20:22:34', 'This brand new house makes true your dreams  there is large area to park your vehicles or any other ', 'North karachi Sector 5A'),
(3, 1, 2, 12000000, 'North Karachi', 'karachi', '350', 7, '[\"IMG20180723153048-385x258.jpg\"]', 3, 1, '2021-03-14 20:26:08', 'This brand new house makes your dream true there is large area to park your vehicles and any other p', 'North karachi Sector 5A'),
(4, 1, 2, 13000000, 'Defence phase 4', 'karachi', '400', 7, '[\"pro5.jpg\"]', 4, 1, '2021-03-14 20:41:26', 'Luxury Home only for you makes your dream true...', 'Dfence '),
(5, 2, 2, 2300000, 'nazimabd', 'karachi', '400', 9, '[\"50402220-800x600.jpeg\"]', 4, 1, '2021-03-16 13:41:01', 'asdjgafhwg bjfbfjwer', 'Naya Nazimabad'),
(6, 2, 2, 14000000, 'korangi', 'karachi', '350', 6, '[\"pro5.jpg\"]', 2, 1, '2021-03-16 13:44:26', 'sgjfjge ', 'korangi 5');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL,
  `property_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `property_type`) VALUES
(1, 'Rental houses'),
(2, 'Buy houses'),
(3, 'Estates'),
(4, 'Estates in Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `property_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `images` varchar(500) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`, `email`, `password`, `status`, `images`, `address`, `contact`, `date_time`) VALUES
(1, 'kinza', 'kinza@gmail.com', '123', 1, '', '', '', '2021-03-11 14:46:34'),
(2, 'hamza', 'hamza@gmail.com', '123', 2, '4140778669_ed904b7f-159a-4ffd-be96-a2833830c030.png', 'staff colony sindh governor house karachi', '60696796796', '2021-03-11 14:57:43'),
(3, 'hamza', 'hamza@gmail.com', '123', 1, 'IMG20180723153048-385x258.jpg', 'jdj dbchsdgchs', '565464', '2021-03-19 08:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
