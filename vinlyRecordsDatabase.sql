-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 07:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `answersurvey`
--

CREATE TABLE `answersurvey` (
  `idAnswer` int(10) NOT NULL,
  `idSurvey` int(10) NOT NULL,
  `answer` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answersurvey`
--

INSERT INTO `answersurvey` (`idAnswer`, `idSurvey`, `answer`) VALUES
(1, 1, 'Kiss'),
(2, 1, 'Coldplay'),
(3, 1, 'Led Zeppelin'),
(4, 1, 'The Weeknd'),
(5, 1, 'Buč Kesidi'),
(6, 2, 'Yes'),
(7, 2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id_artist` int(255) NOT NULL,
  `name_artist` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id_artist`, `name_artist`) VALUES
(1, 'The Weeknd'),
(2, 'Kiss'),
(3, 'Coldplay'),
(4, 'Buč Kesidi'),
(5, 'Led Zeppelin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_cat` int(255) NOT NULL,
  `name_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `name_cat`) VALUES
(1, 'Vintage'),
(2, 'New');

-- --------------------------------------------------------

--
-- Table structure for table `items_shop`
--

CREATE TABLE `items_shop` (
  `id_item` int(255) NOT NULL,
  `id_cart` int(255) NOT NULL,
  `id_product` int(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items_shop`
--

INSERT INTO `items_shop` (`id_item`, `id_cart`, `id_product`, `quantity`) VALUES
(2, 8, 3, 1),
(3, 9, 4, 1),
(4, 9, 3, 1),
(5, 10, 4, 1),
(6, 10, 3, 1),
(7, 11, 4, 1),
(8, 11, 3, 1),
(9, 12, 4, 1),
(10, 12, 3, 1),
(11, 13, 4, 1),
(12, 13, 3, 1),
(13, 14, 4, 1),
(14, 14, 3, 1),
(15, 15, 28, 1),
(16, 16, 4, 1),
(17, 16, 7, 1),
(18, 16, 5, 1),
(19, 17, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(255) NOT NULL,
  `name_menu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `href_menu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `show_menu` int(11) NOT NULL,
  `priority_menu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`, `href_menu`, `show_menu`, `priority_menu`) VALUES
(1, 'Home', 'index.php', 1, 1),
(2, 'Shop', 'shop.php#shop', 1, 2),
(3, 'Contact', 'contact.php#contact', 2, 3),
(4, 'Register', 'register.php#contact', 0, 4),
(5, 'Login', 'login.php#contact', 0, 5),
(6, 'Log out', 'logOut.php', 2, 7),
(7, 'Admin panel', 'adminPanel.php', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `msguser`
--

CREATE TABLE `msguser` (
  `id_msg` int(255) NOT NULL,
  `message_user` text COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(255) NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `msguser`
--

INSERT INTO `msguser` (`id_msg`, `message_user`, `id_user`, `message_time`) VALUES
(110, 'Hii, everything is so...', 11, '2021-04-21 09:57:58'),
(111, 'Hello, im interested..', 15, '2021-04-22 09:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id_price` int(255) NOT NULL,
  `price_now` double NOT NULL,
  `price_old` float DEFAULT NULL,
  `date_price` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_products` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id_price`, `price_now`, `price_old`, `date_price`, `id_products`) VALUES
(1, 40.5, 50, '0000-00-00 00:00:00', 9),
(2, 50, 25, '0000-00-00 00:00:00', 1),
(3, 81, 90, '0000-00-00 00:00:00', 3),
(4, 78, 90, '0000-00-00 00:00:00', 7),
(5, 55.5, NULL, '0000-00-00 00:00:00', 12),
(6, 45, 80, '0000-00-00 00:00:00', 5),
(7, 70, NULL, '0000-00-00 00:00:00', 13),
(8, 25, 40, '0000-00-00 00:00:00', 8),
(9, 67, NULL, '0000-00-00 00:00:00', 6),
(10, 80.8, 85, '0000-00-00 00:00:00', 4),
(11, 49, 60, '0000-00-00 00:00:00', 10),
(12, 90, NULL, '0000-00-00 00:00:00', 11);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_products` int(255) NOT NULL,
  `name_products` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `picture_src` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_cat` int(11) NOT NULL,
  `delivery` int(1) NOT NULL,
  `id_artist` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_products`, `name_products`, `picture_src`, `id_cat`, `delivery`, `id_artist`) VALUES
(1, 'B.Behind the Madness', '2021-03-05.png', 1, 1, 1),
(3, 'Destroyer (Resurrected)', '2021-03-04.png', 2, 0, 2),
(4, 'Parachutes', 'coldplayVinyl.png', 2, 0, 3),
(5, 'Euforija A', 'bucKesidiVinylA.png', 2, 0, 4),
(6, 'Led Zeppelin II', '2021-03-05 (1).png', 1, 1, 5),
(7, 'Dressed to Kill', '2021-03-04.png', 1, 0, 2),
(8, 'Houses Of The Holy', '2021-03-10 (2).png', 2, 0, 5),
(9, 'After Hours', 'weekndVinylAfter.png', 2, 0, 1),
(10, 'Starboy', '2021-03-05 (1).png', 2, 0, 1),
(11, 'X&Y', '2021-03-10 (3).png', 2, 0, 3),
(12, 'Euforija B', 'bucKesidiVinylB.png', 1, 1, 4),
(13, 'House Of Balloons', '2021-03-10 (3).png', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(255) NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_roles`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingdone`
--

CREATE TABLE `shoppingdone` (
  `id_cart` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `time_shopping` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shoppingdone`
--

INSERT INTO `shoppingdone` (`id_cart`, `id_user`, `time_shopping`) VALUES
(1, 8, '2021-04-20 15:54:16'),
(2, 8, '2021-04-20 15:55:34'),
(3, 8, '2021-04-20 15:56:36'),
(4, 8, '2021-04-20 15:57:01'),
(5, 8, '2021-04-20 15:57:18'),
(6, 8, '2021-04-20 15:57:55'),
(7, 8, '2021-04-20 15:58:38'),
(8, 8, '2021-04-20 15:59:35'),
(9, 8, '2021-04-20 16:01:19'),
(10, 8, '2021-04-20 16:01:37'),
(11, 8, '2021-04-20 16:03:55'),
(12, 8, '2021-04-20 16:04:47'),
(13, 8, '2021-04-20 16:07:51'),
(14, 8, '2021-04-20 16:10:07'),
(15, 8, '2021-04-20 16:12:30'),
(16, 8, '2021-04-20 16:19:11'),
(17, 8, '2021-04-20 17:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `idSurvey` int(10) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activ` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`idSurvey`, `question`, `activ`) VALUES
(1, 'Which one is your favorite artist from our collection of vinyls?', 1),
(2, 'Did you purchested from us yet?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `name_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password_user` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `id_roles` int(255) NOT NULL,
  `time_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `lastname_user`, `email_user`, `password_user`, `id_roles`, `time_register`) VALUES
(8, 'Marija', 'Vucicevic', 'marijavucicevic10@gmail.com', '474f5d4cac3a8cef024c0b4bece7a592', 1, '2021-04-17 10:54:21'),
(11, 'Aca', 'Arsic', 'acaarsic@gmail.com', 'ab71fa41ab7c8e34b447e9c4df5ab8ec', 2, '2021-04-17 10:54:21'),
(15, 'Mika', 'Mikic', 'mika@gmail.com', 'e471a891c22fb1b5b722f57bed71de32', 2, '2021-04-17 10:54:21'),
(18, 'Milica', 'Vucicevic', 'milicavucicevic173@gmail.com', '504938a121efec5f4fbdbcc64ca5736e', 2, '2021-04-19 12:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `votesurvey`
--

CREATE TABLE `votesurvey` (
  `id_vote` int(10) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_answer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votesurvey`
--

INSERT INTO `votesurvey` (`id_vote`, `id_user`, `id_answer`) VALUES
(17, 8, 1),
(18, 8, 5),
(29, 12, 6),
(30, 11, 5),
(31, 11, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answersurvey`
--
ALTER TABLE `answersurvey`
  ADD PRIMARY KEY (`idAnswer`),
  ADD KEY `idSurvey` (`idSurvey`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id_artist`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `items_shop`
--
ALTER TABLE `items_shop`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `msguser`
--
ALTER TABLE `msguser`
  ADD PRIMARY KEY (`id_msg`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_price`),
  ADD KEY `id_products` (`id_products`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_artist` (`id_artist`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `shoppingdone`
--
ALTER TABLE `shoppingdone`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`idSurvey`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email_user`),
  ADD KEY `id_roles` (`id_roles`);

--
-- Indexes for table `votesurvey`
--
ALTER TABLE `votesurvey`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `idUser` (`id_user`),
  ADD KEY `idAnswer` (`id_answer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answersurvey`
--
ALTER TABLE `answersurvey`
  MODIFY `idAnswer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id_artist` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `items_shop`
--
ALTER TABLE `items_shop`
  MODIFY `id_item` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `msguser`
--
ALTER TABLE `msguser`
  MODIFY `id_msg` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id_price` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shoppingdone`
--
ALTER TABLE `shoppingdone`
  MODIFY `id_cart` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `idSurvey` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `votesurvey`
--
ALTER TABLE `votesurvey`
  MODIFY `id_vote` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answersurvey`
--
ALTER TABLE `answersurvey`
  ADD CONSTRAINT `answersurvey_ibfk_1` FOREIGN KEY (`idSurvey`) REFERENCES `survey` (`idSurvey`);

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `products` (`id_products`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_artist`) REFERENCES `artist` (`id_artist`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id_roles`);

--
-- Constraints for table `votesurvey`
--
ALTER TABLE `votesurvey`
  ADD CONSTRAINT `votesurvey_ibfk_1` FOREIGN KEY (`id_answer`) REFERENCES `answersurvey` (`idAnswer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
