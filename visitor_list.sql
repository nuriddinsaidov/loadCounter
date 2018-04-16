-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2018 at 04:32 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `visitor_list`
--

CREATE TABLE `visitor_list` (
  `id` int(25) NOT NULL,
  `ip_address` varchar(225) NOT NULL,
  `user_agent` varchar(225) NOT NULL,
  `page_url` varchar(225) NOT NULL,
  `views_count` varchar(225) DEFAULT '0',
  `view_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_list`
--

INSERT INTO `visitor_list` (`id`, `ip_address`, `user_agent`, `page_url`, `views_count`, `view_date`) VALUES
(41, '77.244.144.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/views/layouts/banner.php|/views/layouts/banner.php', '10', '2018-04-16 15:48:17'),
(47, '77.244.144.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/views/layouts/banner.php?url=|/views/layouts/banner.php', '1', '2018-04-16 15:30:00'),
(48, '77.244.144.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/views/layouts/banner.php?url=sendUrl()|/views/layouts/banner.php', '1', '2018-04-16 15:30:19'),
(52, '77.244.144.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/views/layouts/banner.php?url=http://127.0.0.1:3333/views/index1.html|/views/layouts/banner.php', '2', '2018-04-16 15:48:17'),
(55, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '14', '2018-04-16 16:32:44'),
(62, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://127.0.0.1:3333/views/index1.html', '2', '2018-04-16 15:55:52'),
(67, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6', '', '3', '2018-04-16 16:31:47'),
(69, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6', 'http://127.0.0.1:3333/views/index1.html', '2', '2018-04-16 15:56:41'),
(74, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://127.0.0.1:3333/views/index2.html', '3', '2018-04-16 16:32:44'),
(77, '10.0.2.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6', 'http://127.0.0.1:3333/views/index2.html', '1', '2018-04-16 16:31:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitor_list`
--
ALTER TABLE `visitor_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_address_2` (`ip_address`,`user_agent`,`page_url`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitor_list`
--
ALTER TABLE `visitor_list`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
