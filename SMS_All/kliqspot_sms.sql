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
-- Table structure for table `sms_blocklists`
--

CREATE TABLE `sms_blocklists` (
  `id` int(11) NOT NULL,
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
-- Table structure for table `sms_details`
--

CREATE TABLE `sms_details` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `gw_ip` varchar(100) DEFAULT NULL,
  `nas_ip` varchar(100) DEFAULT NULL,
  `sms_code` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
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
-- Table structure for table `sms_repeated_users`
--

CREATE TABLE `sms_repeated_users` (
  `id` int(11) NOT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
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
-- Table structure for table `sms_rules`
--

CREATE TABLE `sms_rules` (
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
-- Table structure for table `sms_whitelists`
--

CREATE TABLE `sms_whitelists` (
  `id` int(11) NOT NULL,
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
-- Indexes for table `sms_blocklists`
--
ALTER TABLE `sms_blocklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_details`
--
ALTER TABLE `sms_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_repeated_users`
--
ALTER TABLE `sms_repeated_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_rules`
--
ALTER TABLE `sms_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_whitelists`
--
ALTER TABLE `sms_whitelists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sms_blocklists`
--
ALTER TABLE `sms_blocklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_details`
--
ALTER TABLE `sms_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_repeated_users`
--
ALTER TABLE `sms_repeated_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_rules`
--
ALTER TABLE `sms_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_whitelists`
--
ALTER TABLE `sms_whitelists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
