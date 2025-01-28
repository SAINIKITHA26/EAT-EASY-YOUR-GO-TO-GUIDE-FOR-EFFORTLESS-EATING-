SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eateasy`
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
(1, 'Idli', 'Break Fast', 'Smooth', 40, 'RKR Hotel', 'Idli.jpg', 'Karimnagar'),
(2, 'Upma', 'Break Fast', 'Smooth', 45, 'Laxmi Hotel', 'upma.jpg', 'Karimnagar'),
(4, 'Dosa', 'Break Fast', 'Spicy', 40, 'KMR Hotel', 'Kal-Dosai.jpg', 'Karimnagar'),
(5, 'Veg Meals', 'Lunch', 'Tasty', 90, 'RR Restaurant', 'veg meals.jpg', 'Karimnagar'),
(6, 'Non-Veg Meals', 'Lunch', 'Tasty', 100, 'RB Restaurant', 'non veg meals.jpg', 'Karimnagar'),
(7, 'Chicken Biryani', 'Dinner', 'Tasty & Spicy', 250, 'RB Restaurant', 'chicken biryani.jpg', 'Karimnagar'),
(8, 'Khadai Panneer', 'Dinner', 'Tasty & Spicy', 190, 'Bawarchi Restaurant', 'khadai panneer.jpg', 'Karimnagar'),
(9, 'Palak Panneer', 'Dinner', 'Tasty & Spicy', 160, 'Bawarchi Restaurant', 'palak panneer.jpg', 'Karimnagar'),
(10, 'Khichidi', 'Dinner', 'Tasty', 130, 'Swathi Restaurant', 'khichidi.jpg', 'Karimnagar'),
(11, 'Egg Noodles', 'Fastfood', 'Tasty & Spicy', 80, 'Swathi Restaurant', 'egg noodles.jpg', 'Karimnagar'),
(12, 'Egg Fried Rice', 'Fastfood', 'Tasty & Spicy', 120, 'RB Restaurant', 'egg friedrice.jpg', 'Karimnagar'),
(13, 'Vada Pav', 'Fastfood', 'Tasty & Spicy', 60, 'Chanti Hotel', 'vada pav.jpg', 'Karimnagar'),
(14, 'Gobi Manchurian', 'Fastfood', 'Tasty & Spicy', 100, 'Chanti Hotel', 'gobi manchurian.jpg', 'Karimnagar'),
(15, 'Orange Juice', 'Beverage', 'Tasty & Healthy', 50, 'Cool Zone', 'orange juice.jpg', 'Karimnagar'),
(16, 'Mango Juice', 'Beverage', 'Tasty & Healthy', 50, 'Cool Zone', 'Mango juice.jpg', 'Karimnagar'),
(17, 'Oreo Milk Shake', 'Beverage', 'Tasty & Creamy', 90, 'Frozen Bottle', 'oreo milkshake.jpg', 'Karimnagar'),
(18, 'Watermelon Mojito', 'Beverage', 'Tasty & Healthy', 70, 'Frozen Bottle', 'watermelon mojito.jpg', 'Karimnagar'),
(19, 'Hot Nutella', 'Cafe', 'Tasty & Hot', 130, 'Neeths Cafe', 'hot nutella.jpg', 'Karimnagar'),
(20, 'Vietnamese Iced Coffee', 'cafe', 'Tasty & Thick', 170, 'Neeths Cafe', 'vietnamese Iced coffee.jpg', 'Karimnagar');

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
(752068675, 'Karimnagar', 'SaiNagar');


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
(23, 'navaneeth', 'navaneeth@gmail.com', '1400', 'Card', 'Takeaway', '06/16/2023 02:30:45 am'),
(24, 'navaneeth', 'navaneeth@gmail.com', '1400', 'Card', 'Takeaway', '06/16/2023 02:31:51 am'),
(25, 'navaneeth', 'navaneeth@gmail.com', '1400', 'Cash', 'Takeaway', '06/16/2023 02:34:04 am'),
(26, 'navaneeth', 'navaneeth@gmail.com', '1400', 'Card', 'Takeaway', '06/16/2023 02:38:52 am');

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
  `phone_number` varchar(20) NOT NULL,
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
