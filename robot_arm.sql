-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 01:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot_arm`
--

-- --------------------------------------------------------

--
-- Table structure for table `arm_base`
--

CREATE TABLE `arm_base` (
  `ID` int(11) NOT NULL,
  `stop_` tinyint(1) DEFAULT NULL,
  `forward_` tinyint(1) DEFAULT NULL,
  `backward_` tinyint(1) DEFAULT NULL,
  `right_` tinyint(1) DEFAULT NULL,
  `left_` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arm_base`
--

INSERT INTO `arm_base` (`ID`, `stop_`, `forward_`, `backward_`, `right_`, `left_`) VALUES
(1, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `arm_joint`
--

CREATE TABLE `arm_joint` (
  `ID` int(11) NOT NULL,
  `motor1` int(11) DEFAULT NULL,
  `motor2` int(11) DEFAULT NULL,
  `motor3` int(11) DEFAULT NULL,
  `motor4` int(11) DEFAULT NULL,
  `motor5` int(11) DEFAULT NULL,
  `motor6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arm_joint`
--

INSERT INTO `arm_joint` (`ID`, `motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`) VALUES
(1, 50, 50, 50, 50, 50, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arm_base`
--
ALTER TABLE `arm_base`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `arm_joint`
--
ALTER TABLE `arm_joint`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
