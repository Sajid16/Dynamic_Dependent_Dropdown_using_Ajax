-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 11:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_dropdown_with_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_state_list`
--

CREATE TABLE `country_state_list` (
  `id` int(11) NOT NULL,
  `country` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_list`
--

INSERT INTO `country_state_list` (`id`, `country`, `state`, `city`) VALUES
(1, 'USA', 'New York', 'New York city'),
(2, 'USA', 'New york', 'albany'),
(3, 'USA', 'alabama', 'Huntsville'),
(4, 'USA', 'california', 'los Angleles'),
(5, 'USA', 'California', 'San Francisco'),
(6, 'USA', 'California', 'San Diego'),
(7, 'Canada', 'Ontario', 'Toronto'),
(8, 'Canada', 'Ontario', 'Ottawa'),
(9, 'Australia', 'New south wales', 'sydney'),
(10, 'Australia', 'Queensland ', 'Brisbane'),
(11, 'Australia', 'Queensland', 'Gold Coast');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_02_07_073708_create_product_cats_table', 1),
(2, '2019_02_07_075019_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `prod_cat_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `quantity`, `price`, `prod_cat_id`, `created_at`, `updated_at`) VALUES
(1, 'shirt', 12, 500, 2, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(2, 'pant', 50, 1500, 2, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(3, 'burger', 14, 250, 1, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(4, 'pasta', 15, 325, 1, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(5, 'hard disk', 41, 5000, 3, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(6, 'headphone', 12, 500, 3, '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(7, 'monitor', 28, 10000, 3, '2019-02-06 18:00:00', '2019-02-06 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_cats`
--

CREATE TABLE `product_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_cats`
--

INSERT INTO `product_cats` (`id`, `product_cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Food', '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(2, 'Cloth', '2019-02-06 18:00:00', '2019-02-06 18:00:00'),
(3, 'Accessories', '2019-02-06 18:00:00', '2019-02-06 18:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_state_list`
--
ALTER TABLE `country_state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_prod_cat_id_foreign` (`prod_cat_id`);

--
-- Indexes for table `product_cats`
--
ALTER TABLE `product_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_cats`
--
ALTER TABLE `product_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_prod_cat_id_foreign` FOREIGN KEY (`prod_cat_id`) REFERENCES `product_cats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
