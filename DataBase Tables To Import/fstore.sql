-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 05:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(2) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `is_available` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `is_available`) VALUES
(1, 'Samsung', 1),
(2, 'Apple', 1),
(3, 'Huawei', 1),
(4, 'Techno', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `cat_title` int(10) NOT NULL,
  `cat_title_name` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_available` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_title`, `cat_title_name`, `product_name`, `price`, `img`, `description`, `is_available`) VALUES
(1, 1, 'Samsung', 'Samsung S21', '$819', 'img/S21.png', 'The most intelligent display on a smartphone, smoothest scrolling screen keeps up with all your feeds, protected by the toughest Gorilla Glass yet.', 1),
(2, 1, 'Samsung', 'Samsung S21 Plus', '$999', 'img/S21plus.png', 'The most intelligent display on a smartphone, smoothest scrolling screen keeps up with all your feeds, protected by the toughest Gorilla Glass yet.', 1),
(3, 1, 'Samsung', 'Samsung S21 Ultra', '$1199', 'img/S21ultra.png', 'The most intelligent display on a smartphone, smoothest scrolling screen keeps up with all your feeds, protected by the toughest Gorilla Glass yet.', 1),
(4, 2, 'Apple', 'iPhone 13', '$799', 'img/iphone13blue.png', 'Most advanced dual-camera system ever. Durability. Fast chip that leave the competition behind. Huge leap in battery life you\'ll notice every day.', 1),
(5, 2, 'Apple', 'iPhone 13 Pro', '$999', 'img/iphone13problue.png', 'A dramatically more powerful camera system. A display so responsive, every interaction feels new again. The world’s fastest smartphone chip. Exceptional durability. And a huge leap in battery life.', 1),
(6, 2, 'Apple', 'iPhone 13 Pro Max', '$1099', 'img/iphone13promaxsilver.png', 'A dramatically more powerful camera system. A display so responsive, every interaction feels new again. The world’s fastest smartphone chip. Exceptional durability. And a huge leap in battery life.', 1),
(7, 3, 'Huawei', 'Huawei P40', '$499', 'img/Huaweip40.png', 'The cutting-edge Kirin 990 5G chipset changes your experience of speed. The Ultra Vision Leica Triple Camera with upgraded AI capability revolutionizes the way of photography and videography. Embrace the power of images and videos and let them speak for you.', 1),
(8, 3, 'Huawei', 'Huawei P40 Pro', '$599', 'img/Huaweip40pro.png', 'Speak for yourself with the Ultra Vision Leica Quad Camera by capturing photos and videos anytime and anywhere you want. Revolutionize your experience of speed and power with the cutting-edge Kirin 990 5G Chipset. The innovative design upgrades your visual entertainment and ergonomic comfort. Explore now and future with HUAWEI P40 Pro.', 1),
(9, 3, 'Huawei', 'Huawei P40 Pro Plus', '$699', 'img/Huaweip40proplus.png', 'Speak for yourself with the Ultra Vision Leica Quad Camera by capturing photos and videos anytime and anywhere you want. Revolutionize your experience of speed and power with the cutting-edge Kirin 990 5G Chipset. The innovative design upgrades your visual entertainment and ergonomic comfort. Explore now and future with HUAWEI P40 Pro+.', 1),
(10, 1, 'Samsung', 'Samsung Fouad', '$99999', 'img/note20ultra.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies dignissim velit, eget rutrum tortor bibendum quis. Mauris sapien dui, eleifend at venenatis viverra, placerat sed risus. Quisque scelerisque a diam eget maximus. Fusce mattis egestas tincidunt. Maecenas dignissim fermentum eleifend. Maecenas ligula sem, fringilla sed nunc nec, condimentum ultrices lorem. Donec feugiat risus diam, sit amet suscipit mauris condimentum a. Vestibulum eu justo efficitur est condimentum elementum id a mi. ', 0),
(11, 1, 'Samsung', 'Samsung S21 Plus 22', '$999', 'img/S21plus.png', 'The most intelligent display on a smartphone, smoothest scrolling screen keeps up with all your feeds, protected by the toughest Gorilla Glass yet.', 0),
(12, 1, 'Samsung', 'Samsung S21 Ultra 22', '$1199', 'img/S21ultra.png', 'The most intelligent display on a smartphone, smoothest scrolling screen keeps up with all your feeds, protected by the toughest Gorilla Glass yet.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `img_id` int(100) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`img_id`, `img`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `FullName` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `usersPwd` varchar(250) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FullName`, `email`, `username`, `usersPwd`, `gender`, `birthday`, `country`) VALUES
(18, 'Fouad Moussa', 'fouad.milan.moussa@gmail.com', 'H0ud1nii', '$2y$10$VcPEPVwJgL7mK.09cJrYMOzalZfaIA6DX2zwM0j7vtL61QbcOGvqa', 'Male', '1999-10-18', 'LB'),
(20, 'Ghady Kozma', 'ghady.kozma@gmail.com', 'C0R3x', '$2y$10$Hu7NqcjZ.TDoVGguodYAH.YGNxwqaCimD6DKEUHtCy0AZoTil7a5e', 'Male', '2022-01-01', 'LB'),
(21, 'Majd Moussa', 'majd.milan.moussa@gmail.com', 'majd', '$2y$10$4EMCSg5Pm7EGXMqDHIuR8uUfFYYAcJgObjV6BQHlZ4FTpCGcphWni', 'Male', '2007-03-08', 'LB'),
(22, 'Simon Moussa', 'simon.moussa@gmail.com', 'siiiiim', '$2y$10$zd98./F2GVdhhEWjaFFREefoDPKrmgB/adl94OtDx/e496RnxS216', 'Male', '2022-01-01', 'LB'),
(23, 'Melissa Tannous', 'mell@gmail.com', 'mell', '$2y$10$Rz6gljR0pto0MaNl7h8RNOYoeKcSlW2aPHfdGb7wcV8TQQ9aadCXe', 'Female', '2022-01-01', 'LB'),
(24, ' pat', 'patrik@gmail.com', 'pat', '$2y$10$yCV7xCAe/wWgqPYmfsG.Ue/hcW59BzOqNJIu1Y.iyS2LTbfMxyQbS', 'Male', '1998-11-11', 'LB'),
(25, 'Mona Moussa', 'Mona@gmail.com', 'mona', '$2y$10$sZqUF2O.5cwJa2uTiiKVb.uwO3irML3f9vI7q6dkAFH5m4g2G8aEC', 'Female', '2022-01-01', 'LB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `img_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
