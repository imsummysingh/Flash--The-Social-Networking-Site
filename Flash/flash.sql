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
-- Database: `flash`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends_control`
--

CREATE TABLE `friends_control` (
  `id` int(11) NOT NULL,
  `req_sen_id` int(11) NOT NULL,
  `req_rec_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends_control`
--

INSERT INTO `friends_control` (`id`, `req_sen_id`, `req_rec_id`, `status`) VALUES
(2, 1, 2, 1),
(3, 3, 1, 1),
(4, 9, 3, NULL),
(5, 1, 9, 1),
(6, 1, 10, 1),
(7, 13, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes_control`
--

CREATE TABLE `likes_control` (
  `like_owner_id` int(11) NOT NULL,
  `like_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes_control`
--

INSERT INTO `likes_control` (`like_owner_id`, `like_post_id`) VALUES
(2, 2),
(9, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `owner_id`, `content`, `created_at`) VALUES
(1, 2, 'hii', '2017-05-25 23:48:07'),
(2, 1, 'I am feelling fine', '2017-05-25 23:50:44'),
(3, 9, 'feeling fine', '2017-06-12 00:17:25'),
(4, 10, 'welcome', '2017-06-13 11:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `post_reply_id` int(11) NOT NULL,
  `reply_content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `owner_id`, `post_reply_id`, `reply_content`, `created_at`) VALUES
(1, 1, 1, 'hiii\r\n', '2017-05-25 18:19:52'),
(2, 2, 2, 'nice', '2017-05-25 18:21:04'),
(3, 1, 3, 'nice have a good day.........', '2017-06-11 18:50:54'),
(4, 1, 4, 'thanks\r\n\r\n', '2017-06-13 06:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `location`, `created`, `username`) VALUES
(1, 'Nikhil', 'Nare', '$2y$10$6AsZRh9LFWNl8V6nts4.N.2chd8Ee2sO24n6NzFIEogTI/v3YbJ6C', 'nikhilnare1997@gmail.com', 'Vadodara', '2017-05-25 18:14:27', 'Nikhil'),
(2, 'Nikita', 'Nare', '$2y$10$dtqlG6HPUJnI5/s/amnHYeq96EfWncOx42ajf.OIa0hZpDWS8qbcy', 'niki@gmail.com', 'Vadodara', '2017-05-25 18:16:19', 'Nikita'),
(3, 'Sandeep', 'Singh', '$2y$10$uj3ECkoOKl9tTOoMFYU8r.1kAOBNHADNl/5j9//qHo6ZUV3rldK/y', 'sandeep@gmail.com', 'Gorwa', '2017-05-25 18:22:58', 'Sandeep'),
(11, NULL, NULL, '$2y$10$LG3ei50GGbjW8bCid9u.UOMLaPUBmuiOPpXho2XSYqX2TEELCKQ66', 'jar@gmail.com', NULL, '2017-06-12 17:36:17', 'jar'),
(10, 'Jarvis', 'tony', '$2y$10$/apwKotAj4xSze2RwejquuCkKDDOegwIrutaJ/Ohh4VAgRNsgK.Iq', 'jarvis@gmail.com', 'CA', '2017-06-12 17:22:33', 'jarvis'),
(9, 'summy', 'singh', '$2y$10$uSSO0zITEiS16E9YVykIv.ygHAOXDglZQvav6.1OpR8ty.vOC1Oq6', 'summysingh86@gmail.com', 'daman', '2017-06-11 18:45:59', 'summys'),
(12, NULL, NULL, '$2y$10$Gs4g7BAzmBL/K5uvwHjYWeNAj9tO2N8njMGV.2NYI0BhGDbdxMHse', 'aaaa@gmail.com', NULL, '2017-06-12 18:09:50', 'aaaa'),
(13, 'abc', 'dcs', '$2y$10$bNzc/UTTGKpML4tZVFNw2OLULx38k6JmnQhtmuWiTzaU6sY1EdIaq', 'abc@gmail.com', 'df', '2017-06-13 06:13:46', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends_control`
--
ALTER TABLE `friends_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
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
-- AUTO_INCREMENT for table `friends_control`
--
ALTER TABLE `friends_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
