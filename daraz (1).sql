-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2022 at 08:37 PM
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
-- Database: `daraz`
--

-- --------------------------------------------------------

--
-- Table structure for table `attandance`
--

CREATE TABLE `attandance` (
  `Id` int(11) NOT NULL,
  `Date` varchar(200) DEFAULT NULL,
  `S_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attandance`
--

INSERT INTO `attandance` (`Id`, `Date`, `S_Id`) VALUES
(8, '23-1-2021', 1),
(9, '25-1-2021', 2),
(10, '24-1-2021', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`Id`, `Name`, `p_id`) VALUES
(1, 'Resolution', 3),
(2, 'lenght 7 meter', 4),
(3, '5 ml', 1),
(4, 'black', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `price`) VALUES
(1, 'Camera', 2000),
(2, 'Clothing', 7000),
(3, 'Drinking Water', 2000),
(4, 'Nike Shoes', 2000),
(6, NULL, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `category_attribute`
--

CREATE TABLE `category_attribute` (
  `Id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL,
  `A_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_attribute`
--

INSERT INTO `category_attribute` (`Id`, `C_id`, `A_id`) VALUES
(1, 2, 2),
(2, 1, 1),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `title` varchar(200) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `year`) VALUES
('DON', NULL),
('Khuda or Muhabbat', '2007');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `price`) VALUES
(1, 'Aquafina Water', 50),
(2, 'Nike SHoes', 2000),
(3, 'DSLR', 45000),
(4, 'Sana Safeenaz full dress', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `Id` int(11) NOT NULL,
  `CA_id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`Id`, `CA_id`, `value`) VALUES
(1, 2, '76654 px ');

-- --------------------------------------------------------

--
-- Table structure for table `stdudentss`
--

CREATE TABLE `stdudentss` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Mobile` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stdudentss`
--

INSERT INTO `stdudentss` (`Id`, `Name`, `Mobile`, `Age`) VALUES
(1, 'Huzaifa', '0985934', 21),
(2, 'Musfiraha', '033985934', 23),
(3, 'Ayesha', '03985934', 22),
(4, 'Beenish', '030985934', 25);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `Id` int(11) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Education` varchar(200) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`Id`, `Name`, `Education`, `salary`) VALUES
(1, 'ayesha', 'MSC', 30000),
(NULL, NULL, NULL, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Usertype_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Email`, `Password`, `Usertype_id`, `photo`) VALUES
(8, 'kinza Mushtaq', 'kinzaaptech@gmail.com', '123', 1, ''),
(9, 'Fatima', 'khazeena1234@gmail.com', '456', 1, 'Screenshot (2).png'),
(10, 'ki', 'sana@gmail.com', '123', 2, 'Screenshot (1).png'),
(11, '', 'kinza@gmail.com', '123', 2, ''),
(12, 'm', 'kinz@gmail.com', '123', 1, ''),
(13, 'ki', 'kinza123@gmail.com', '123', 2, ''),
(14, '', '', '', 2, ''),
(15, 'saman', 'saman@gmail.com', '123', 1, ''),
(16, 'Laraib', 'laraib@gmail.com', 'laraib', 2, 'son.jpg'),
(17, 'asim', 'asim12@gmail.com', '123', 2, 'IMG20180723153048-385x258.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`Id`, `Name`) VALUES
(1, 'Admin'),
(2, 'Buyer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attandance`
--
ALTER TABLE `attandance`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `S_Id` (`S_Id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `pqr` (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category_attribute`
--
ALTER TABLE `category_attribute`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD KEY `xyz` (`A_id`),
  ADD KEY `abc` (`C_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `mno` (`CA_id`);

--
-- Indexes for table `stdudentss`
--
ALTER TABLE `stdudentss`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `kin` (`Usertype_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attandance`
--
ALTER TABLE `attandance`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_attribute`
--
ALTER TABLE `category_attribute`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stdudentss`
--
ALTER TABLE `stdudentss`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attandance`
--
ALTER TABLE `attandance`
  ADD CONSTRAINT `attandance_ibfk_1` FOREIGN KEY (`S_Id`) REFERENCES `stdudentss` (`Id`),
  ADD CONSTRAINT `attandance_ibfk_2` FOREIGN KEY (`S_Id`) REFERENCES `stdudentss` (`Id`);

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `pqr` FOREIGN KEY (`p_id`) REFERENCES `products` (`Id`);

--
-- Constraints for table `category_attribute`
--
ALTER TABLE `category_attribute`
  ADD CONSTRAINT `abc` FOREIGN KEY (`C_id`) REFERENCES `categories` (`Id`),
  ADD CONSTRAINT `xyz` FOREIGN KEY (`A_id`) REFERENCES `attributes` (`Id`);

--
-- Constraints for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD CONSTRAINT `mno` FOREIGN KEY (`CA_id`) REFERENCES `category_attribute` (`Id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `kin` FOREIGN KEY (`Usertype_id`) REFERENCES `usertype` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
