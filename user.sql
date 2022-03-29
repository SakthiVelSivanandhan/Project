-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2022 at 06:25 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `cid` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `compny_id` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `driver_auth` varchar(255) DEFAULT NULL,
  `driver_mob` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `dropoff` varchar(255) DEFAULT NULL,
  `pickup` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `vacant_space` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`cid`, `company_name`, `compny_id`, `destination`, `driver_auth`, `driver_mob`, `driver_name`, `dropoff`, `pickup`, `source`, `vacant_space`) VALUES
(1, 'Gsinfotech', '1', 'New Delhi', '1', '8847213434', 'Harpreet', '10:00AM', '09:00AM', 'Kashmeir gate', '1'),
(2, 'Facebook', '1', 'Patiala', '1', '9888941469', 'Manpreet', '02:00 PM', '08:00 AM', 'New Delhi', '3');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cid` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `memail` varchar(255) DEFAULT NULL,
  `mpassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `company_name`, `manager_name`, `memail`, `mpassword`) VALUES
(1, 'Gsinfotech', 'Admin', 'gsinfotechpatiala@gmail.com', 'patiala123');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `cab_id` varchar(255) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `is_approved` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `cab_id`, `cid`, `is_approved`, `userid`) VALUES
(1, '1', '1', '0', '11'),
(2, '1', '1', '1', '12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `auth` int(11) DEFAULT 1,
  `c_id` int(11) DEFAULT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `psw` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `first_name`, `last_name`, `auth`, `c_id`, `emp_id`, `f_name`, `psw`) VALUES
(3, 'jhondoe@faceprep.com', NULL, NULL, 1, 1, '090', 'Admin', 'qwertyuiop'),
(11, 'urbanmobiles@outlook.com', NULL, NULL, 1, 1, '13434', 'Gurpreet Singh', '123'),
(12, 'jhondoe@faceprep.com', NULL, NULL, 1, 1, '1234', 'preet', '123'),
(13, 'info@gsinfotech.in', NULL, NULL, 0, 1, '091', 'Harpreet', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
