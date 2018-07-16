-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 08:16 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadhar_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_card`
--

CREATE TABLE `aadhar_card` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `aadhar_no` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aadhar_card`
--

INSERT INTO `aadhar_card` (`id`, `first_name`, `aadhar_no`, `image`) VALUES
(78, 'Sandeep_prusty', '4444-5555-6666-8888', '19910.jpg'),
(77, 'Sandeep_Singh', '7777-8888-9999-5555', '6049.jpg'),
(79, 'Nikhil', '4444-5555-6666-7777', '11772.jpg'),
(76, 'Summy', '4444-5555-6666-7777', '7775.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar_card`
--
ALTER TABLE `aadhar_card`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aadhar_card`
--
ALTER TABLE `aadhar_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
