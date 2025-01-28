-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 06:45 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eat_easy`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `food_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `description` varchar(254) NOT NULL,
  `price` varchar(50) NOT NULL,
  `shop` varchar(50) NOT NULL,
  `image` varchar(254) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`food_id`, `f_name`, `f_type`, `description`, `price`, `shop`, `image`, `location`) VALUES
(1, 'food1', 'breakfast', 'tasty and good', '150', 'ABC Hotel', '360_F_308404381_LqyMIXDPOR6Ut1TqE2cJRQdxomGsQegc.jpg', 'batticaloa'),
(3, 'food2', 'lunch', 'tasty and good', '800', 'EFG Hotel', '2c9eec190e63247cf74a458860dda196--cross-section-televisions.jpg', 'kandy'),
(4, 'food3', 'dinner', 'tasty and good', '280', 'GHI Hotel', 'cake-logo-vector_25327-1.png', 'colombo'),
(5, 'food4', 'fastfood', 'tasty and good', '400', 'ABC Hotel', '47642cfa-553a-4e4a-a321-77fde134b5dd.jpg', 'kandy'),
(6, 'food5', 'beverage', 'tasty and good', '600', 'XYZ Hotel', '47642cfa-553a-4e4a-a321-77fde134b5dd.jpg', 'valaichenai'),
(7, 'food6', 'cafe', 'tasty and good', '800', 'DEF Hotel', '47642cfa-553a-4e4a-a321-77fde134b5dd.jpg', 'kandy'),
(8, 'food7', 'breakfast', 'tasty and good', '750', 'GHI Hotel', '47642cfa-553a-4e4a-a321-77fde134b5dd.jpg', 'batticaloa'),
(11, 'food10', 'breakfast', 'good', '500', 'ABC Hotel', '360_F_308404381_LqyMIXDPOR6Ut1TqE2cJRQdxomGsQegc.jpg', 'kandy');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `phone_number` int(11) NOT NULL,
  `start_place` varchar(254) NOT NULL,
  `end_place` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`phone_number`, `start_place`, `end_place`) VALUES
(752068675, 'batticaloa', 'colombo'),
(752068675, 'kandy', 'colombo');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `p_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `p_type` varchar(100) NOT NULL,
  `o_type` varchar(100) NOT NULL,
  `p_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`p_id`, `c_name`, `email`, `payment`, `p_type`, `o_type`, `p_date`) VALUES
(23, 'sasmithan', 'k.sasmithan@gmail.com', '1400', 'Card', 'Takeaway', '04/21/2022 02:30:45 am'),
(24, 'sasmithan', 'k.sasmithan@gmail.com', '1400', 'Card', 'Takeaway', '04/21/2022 02:31:51 am'),
(25, 'sasmithan', 'k.sasmithan@gmail.com', '1400', 'Cash', 'Takeaway', '04/21/2022 02:34:04 am'),
(26, 'sasmithan', 'k.sasmithan@gmail.com', '1400', 'Card', 'Takeaway', '04/21/2022 02:38:52 am');

-- --------------------------------------------------------

--
-- Table structure for table `search_results`
--

CREATE TABLE `search_results` (
  `id` int(11) NOT NULL,
  `distance_in_kilo` int(11) DEFAULT NULL,
  `distance_in_mile` int(11) DEFAULT NULL,
  `duration_in_text` varchar(255) DEFAULT NULL,
  `TravelMode` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `phone_number` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(254) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`phone_number`, `email`, `username`, `password`, `address1`, `address2`, `city`) VALUES
(752068675, 'k.sasmithan@gmail.com', 'sasmithan', '$2y$10$h5cNoPYYCF9NYs/TlN2ALOZu.30SonctC659ua7kJHla.Yoa0FN0e', 'kalkudha road', 'valaichenai', 'batticaloa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `search_results`
--
ALTER TABLE `search_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `search_results`
--
ALTER TABLE `search_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
