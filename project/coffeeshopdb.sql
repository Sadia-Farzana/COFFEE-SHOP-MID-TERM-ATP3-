-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 06:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeeshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `image` blob DEFAULT NULL,
  `membership` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `username`, `password`, `phone`, `email`, `address`, `gender`, `image`, `membership`) VALUES
(1, 'Sadia', 'C001', '123456', '01912234563', 'sadia@gmail.com', '12/2A, Shavar', 'Female', '', NULL),
(2, 'Test', 'Name', '1234', '0123455', 'sf.bidushi@gmail.com', 'test', 'undefined', 0x756e646566696e6564, 'undefined'),
(3, 'sadia', 'p01', '123456', '0123455', 's1@gmail.com', 'test', 'undefined', 0x756e646566696e6564, 'undefined'),
(4, 'sadia', 'p01', '12345', '0123455', 's1@gmail.com', 'test', 'undefined', 0x756e646566696e6564, 'undefined'),
(5, 'x', 'abc', '1234', '0123455', 's1@gmail.com', 'test', 'undefined', 0x756e646566696e6564, 'undefined'),
(6, 'sadia', 'name', '123456', '0123455', 's1@gmail.com', 'test', 'undefined', 0x756e646566696e6564, 'undefined'),
(7, 'sadia', 'name', '123456', '0123455', 's1@gmail.com', 'test', 'female', 0x756e646566696e6564, 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(10) NOT NULL,
  `promoCode` varchar(30) NOT NULL,
  `deductAmount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `promoCode`, `deductAmount`) VALUES
(1, 'CORONA', 30),
(2, 'STAY SAFE', 20);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `discount_amount` int(3) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `suggested` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `discount_amount`, `status`, `ingredients`, `image`, `suggested`) VALUES
(1, 'Cappachino', 80, NULL, 'available', 'Hot water,cocoa bin', NULL, 'yes'),
(2, 'Aericcano', 100, NULL, 'available', 'Coacoa bin,hot water', NULL, 'yes'),
(3, 'Cold Coffee', 90, NULL, 'available', 'Ice,cocoa bin,water', NULL, 'yes'),
(4, 'Hot coffee', 80, NULL, 'available', 'hot water with cocoa', NULL, 'no'),
(5, 'Black coffee', 120, NULL, 'available', 'Ice,cocoa bin,water', NULL, 'yes'),
(6, 'Mocha', 150, 0, 'available', 'Ice,cocoa bin,water', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(4) NOT NULL,
  `amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `quantity`, `amount`) VALUES
(1, 'Cappachino', 2, 160),
(2, 'Aericcano', 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `party` int(40) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `contactinfo` varchar(40) NOT NULL,
  `message` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `date`, `time`, `party`, `type`, `contactinfo`, `message`) VALUES
(1, 'sadia', '2020-08-14', '21:35:00.000000', 13, 'birthday', '018755566', 'test'),
(2, 'm', '2020-08-01', '01:35:00.000000', 2, 'dinner', '547559899', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `takeaway`
--

CREATE TABLE `takeaway` (
  `id` int(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `orderid` int(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `Time` datetime(6) NOT NULL,
  `status` int(40) NOT NULL,
  `dusername` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `takeaway`
--

INSERT INTO `takeaway` (`id`, `username`, `orderid`, `address`, `Time`, `status`, `dusername`) VALUES
(1, 'C002', 2, '12/A.X street', '2020-08-11 21:42:50.000000', 1, ''),
(5, 'C001', 3, '12/A.X street', '2020-08-18 15:49:39.000000', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `salary` int(20) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `userType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `phone`, `address`, `gender`, `email`, `salary`, `image`, `userType`) VALUES
(1, 'Fardin Ahsan ', 'fardin', '123456', 1757959078, 'Basundhara R/A,Dhaka', 'male', 'fardinahsan84@gmail.com', 100000, NULL, 'manager'),
(2, 'Tawsif Salaudiin', 'tawsifsala', '123457', 1757959077, 'Puran Dhaka', 'male', 'tawsif322@gmail.com', NULL, NULL, 'customer'),
(4, 'DeliveryBoy2', 'D002', '1234', 1278468, '24/A , Test Street', 'Male', 'd2@gmail.com', 7000, NULL, 'deliveryma'),
(5, 'Deliveryman3', 'D003', '12345', 1278419, 'test', 'Male', 'd@gmail.com', 7000, NULL, 'deliveryma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `takeaway`
--
ALTER TABLE `takeaway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `takeaway`
--
ALTER TABLE `takeaway`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
