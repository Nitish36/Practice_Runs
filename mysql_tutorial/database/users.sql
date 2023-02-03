-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 04:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `date`) VALUES
(8, 'Jane', 'Mill', 'jane@me.com', '0000-00-00 00:00:00'),
(9, 'Adam', 'Brown', 'adam@me.com', '2016-01-30 09:10:10'),
(10, 'Ana', 'Williams', 'ana@me.com', '2016-01-30 09:10:10'),
(11, 'Avril', 'Moore', 'avril@me.com', '2016-01-30 09:10:10'),
(12, 'Bob', 'White', 'bob@me.com', '2016-01-30 09:10:10'),
(13, 'Martin', 'Harris', 'martin@me.com', '2016-01-30 09:10:10'),
(14, 'Garcia', 'Jones', 'garcia@me.com', '2016-01-30 09:10:10'),
(15, 'Clark', 'Robinson', 'clark@me.com', '2016-01-30 09:10:10'),
(16, 'Taylor', 'Clark', 'taylor@gmail.com', '2016-01-30 09:10:10'),
(17, 'Scott', 'Hill', 'scott@me.com', '2016-01-30 09:10:10'),
(18, 'Allen', 'King', 'allen@me.com', '2016-01-30 09:10:10'),
(19, 'abhay', 'A', 'abhay@gmail.com', '2023-02-03 14:05:19'),
(20, 'aditya', 'S', 'aditya@gmail.com', '2023-02-03 14:08:19'),
(21, 'Niel', 'Jennings', 'harris@me.com', '2023-02-03 14:21:26'),
(22, 'Julie', 'Lam', 'julie@me.com', '2023-02-03 14:21:27'),
(23, 'Justin', 'Lee', 'justin@me.com', '2023-02-03 14:21:27'),
(24, 'Daniel', 'Craig', 'daniel@gmail.com', '2023-02-03 14:24:32'),
(25, 'Pierce', 'Brosonan', 'pierce@gmail.com', '2023-02-03 14:24:54'),
(26, 'Roger', 'Moore', 'roger@gmail.com', '2023-02-03 14:25:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
