-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 12:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kliqspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_blocklists`
--

CREATE TABLE `whatsapp_blocklists` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `other_1` varchar(100) DEFAULT NULL,
  `other_2` varchar(100) DEFAULT NULL,
  `other_3` varchar(100) DEFAULT NULL,
  `other_4` varchar(100) DEFAULT NULL,
  `other_5` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT '1',
  `updated_by` varchar(100) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_details`
--

CREATE TABLE `whatsapp_details` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `gw_ip` varchar(100) DEFAULT NULL,
  `nas_ip` varchar(100) DEFAULT NULL,
  `access_code` varchar(100) DEFAULT NULL,
  `access_status` varchar(100) DEFAULT NULL,
  `error` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `other_1` varchar(100) DEFAULT NULL,
  `other_2` varchar(100) DEFAULT NULL,
  `other_3` varchar(100) DEFAULT NULL,
  `other_4` varchar(100) DEFAULT NULL,
  `other_5` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT '1',
  `updated_by` varchar(100) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_repeated_users`
--

CREATE TABLE `whatsapp_repeated_users` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL,
  `other_1` varchar(100) DEFAULT NULL,
  `other_2` varchar(100) DEFAULT NULL,
  `other_3` varchar(100) DEFAULT NULL,
  `other_4` varchar(100) DEFAULT NULL,
  `other_5` varchar(100) DEFAULT NULL,
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_rules`
--

CREATE TABLE `whatsapp_rules` (
  `id` int(11) NOT NULL,
  `rule_data` varchar(100) DEFAULT NULL,
  `other_1` varchar(100) DEFAULT NULL,
  `other_2` varchar(100) DEFAULT NULL,
  `other_3` varchar(100) DEFAULT NULL,
  `other_4` varchar(100) DEFAULT NULL,
  `other_5` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '1',
  `updated_by` varchar(100) DEFAULT '1',
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_whitelists`
--

CREATE TABLE `whatsapp_whitelists` (
  `id` int(11) NOT NULL,
  `phone` bigint(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `other_1` varchar(100) DEFAULT NULL,
  `other_2` varchar(100) DEFAULT NULL,
  `other_3` varchar(100) DEFAULT NULL,
  `other_4` varchar(100) DEFAULT NULL,
  `other_5` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT '1',
  `updated_by` varchar(100) NOT NULL DEFAULT '1',
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `whatsapp_blocklists`
--
ALTER TABLE `whatsapp_blocklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatsapp_details`
--
ALTER TABLE `whatsapp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatsapp_repeated_users`
--
ALTER TABLE `whatsapp_repeated_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatsapp_rules`
--
ALTER TABLE `whatsapp_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatsapp_whitelists`
--
ALTER TABLE `whatsapp_whitelists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `whatsapp_blocklists`
--
ALTER TABLE `whatsapp_blocklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whatsapp_details`
--
ALTER TABLE `whatsapp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `whatsapp_repeated_users`
--
ALTER TABLE `whatsapp_repeated_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whatsapp_rules`
--
ALTER TABLE `whatsapp_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whatsapp_whitelists`
--
ALTER TABLE `whatsapp_whitelists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
