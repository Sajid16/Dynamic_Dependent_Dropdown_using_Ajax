-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 01:15 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_state_list`
--
ALTER TABLE `country_state_list`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
