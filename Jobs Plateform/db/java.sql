-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 10:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `book` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `book`, `author`, `quantity`, `details`) VALUES
(2, 'book python', 'python', 20, 'here are some details'),
(7, 'ss', 'ss', 100, 'here are some details');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `id` int(11) NOT NULL,
  `num_inscri` int(20) NOT NULL,
  `book` varchar(20) NOT NULL,
  `date_deb` date NOT NULL DEFAULT current_timestamp(),
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebooks`
--

INSERT INTO `issuebooks` (`id`, `num_inscri`, `book`, `date_deb`, `date_fin`) VALUES
(8, 7895, 'dd', '2022-10-25', '2022-11-01'),
(9, 77, 'aaaa', '2022-10-27', '2022-11-01'),
(10, 123456, 'asma', '2022-10-27', '2022-11-03'),
(11, 77, 'book python', '2022-10-30', '2022-11-01'),
(12, 85585, 'aaaa', '2022-10-30', '2022-10-30'),
(13, 77744414, 'asma', '2022-10-30', '2022-10-30'),
(14, 123456, 'book', '2022-10-30', '2022-11-03'),
(15, 77, 'asma', '2022-10-30', '2022-11-01'),
(16, 123, 'book python', '2022-11-01', '2022-11-03'),
(17, 123, 'book python', '2022-11-03', '2022-11-03'),
(18, 15, 'book python', '2022-11-03', '2022-11-03'),
(19, 1236, 'book python', '2022-11-03', '2022-11-03'),
(20, 563, 'book python', '2022-11-03', '2022-11-03'),
(21, 8, 'ss', '2022-11-03', NULL),
(22, 236589, 'book python', '2022-11-03', '2022-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `num_inscri` int(20) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `cin` int(20) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `adress` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `num_inscri`, `password`, `phone`, `cin`, `ville`, `adress`) VALUES
(3, 'user1', 1223456, '123', 12346789, 1234678, 'nabeul', 'hamamat'),
(10, 'user2', NULL, '123', 12345678, 12345678, 'nabeul', '12345678'),
(11, 'asma', NULL, 'asma', 123, 123, 'asma', 'asma'),
(12, 'sss', NULL, 'sss', 77777777, 12345678, 'sss', 'ss'),
(13, 'ss', NULL, 'ss', 1234567, 123456, 'ss', 'ss'),
(14, 'ss', NULL, 'ss', 1234567, 123456, '', 'ss'),
(15, 'ww', NULL, 'ww', 1234567, 123456, 'ww', 'ww'),
(16, 'aa', NULL, 'aaa', 77, 777, 'aa', 'aa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
