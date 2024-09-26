-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cjcrsg`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountinfo`
--

CREATE TABLE `accountinfo` (
  `accountID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp(),
  `life_stage` varchar(255) DEFAULT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountinfo`
--

INSERT INTO `accountinfo` (`accountID`, `memberID`, `email`, `password`, `phone`, `address`, `dateCreated`, `lastUpdated`, `life_stage`, `image`) VALUES
(1, 1, 'mnm@gmail.com', 'mnm123', 324523525, 'San Roque', '2024-05-09 02:02:32', '2024-05-06 04:48:40', 'College Student', NULL),
(2, 2, 'kurt@gmail.com', '123456', 2147483647, 'Malvar', '2024-05-06 06:31:53', '2024-05-06 06:31:53', 'College student', NULL),
(3, 3, 'hazel@gmail.com', 'hazel00', 2147483647, 'San Bartolome', '2024-05-08 13:50:55', '2024-05-06 10:05:28', 'College student', NULL),
(4, 4, 'harvy@gmail.com', 'harvy123', 87382832, 'San Vicente', '2024-05-07 11:49:21', '2024-05-06 10:49:30', 'Professional', NULL),
(5, 5, 'tonan@gmail.com', 'tonan123', 39049043, 'Santiago', '2024-05-07 11:51:23', '2024-05-06 10:49:31', 'Professional', NULL),
(6, 6, 'catena@gmail.com', 'caten123', 93850850, 'San Roque', '2024-05-08 13:56:25', '2024-05-08 13:55:08', 'College student', NULL),
(7, 7, 'hernandez@gmail.com', 'diana123', 2147483647, 'San Roque', '2024-05-08 13:59:56', '2024-05-08 13:59:56', 'College student', NULL),
(8, 8, 'bien@gmail.com', 'bien123', 34034805, 'San Rafael', '2024-05-08 14:01:30', '2024-05-08 14:01:30', 'College Student', NULL),
(9, 9, 'precious@gmail.com', 'precious123', 340932470, 'Darasa', '2024-05-08 14:04:01', '2024-05-08 14:04:01', 'College student', NULL),
(10, 10, 'jr@gmail.com', 'jr123456', 2147483647, 'San Miguel', '2024-05-08 14:05:09', '2024-05-08 14:05:09', 'College student', NULL),
(11, 11, 'charley@gmail.com', 'charley113', 34504309, 'San Roques', '2024-05-08 14:11:07', '2024-05-08 14:07:22', 'College student', NULL),
(12, 12, 'durado@gmail.com', 'durado123', 345793485, 'San Roque', '2024-05-09 05:15:30', '2024-05-08 14:46:25', 'College student', NULL),
(13, 13, 'mark@gmail.com', 'mark123', 32904803, 'San Roque', '2024-05-09 07:41:43', '2024-05-09 07:41:43', 'college student', NULL),
(14, 14, 'doton@gmail.com', 'doton123', 320940392, 'Sta. Maria', '2024-05-09 08:22:47', '2024-05-09 08:22:47', 'College student', NULL),
(15, 15, 'francis@gmail.com', 'francis123', 2147483647, 'Darasa', '2024-05-09 08:35:07', '2024-05-09 08:35:07', 'College Student', NULL),
(19, 19, 'lei@gmail.com', 'lei123', 324320894, 'San Antonoi', '2024-05-09 08:55:28', '2024-05-09 08:55:28', 'College Student', NULL),
(20, 20, 'emman@gmail.com', 'emman123', 237983489, 'Tanauans', '2024-05-09 08:59:49', '2024-05-09 08:59:27', 'College Student', NULL),
(21, 21, 'allysa@gmail.com', 'ally123', 289374983, 'San Miguel', '2024-05-09 21:44:41', '2024-05-09 09:49:47', 'College Student', NULL),
(22, 24, 'zai@gmail.com', 'zai123', 9435090, 'San Vicente', '2024-05-09 11:32:51', '2024-05-09 11:32:51', 'College Student', NULL),
(23, 25, 'jona@gmail.com', 'jona123', 34508934, 'Talisay', '2024-05-09 22:03:26', '2024-05-09 22:03:26', 'College Student', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accountrole`
--

CREATE TABLE `accountrole` (
  `accRoleID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountrole`
--

INSERT INTO `accountrole` (`accRoleID`, `memberID`, `roleID`, `dateCreated`) VALUES
(1, 1, 1, '2024-05-07 12:09:16'),
(2, 2, 2, '2024-05-07 12:09:23'),
(3, 3, 1, '2024-05-07 12:09:27'),
(4, 4, 2, '2024-05-07 12:09:32'),
(7, 5, 3, '2024-05-08 15:38:51'),
(8, 6, 2, '2024-05-08 15:38:51'),
(9, 7, 2, '2024-05-08 15:38:51'),
(10, 8, 2, '2024-05-08 15:38:51'),
(11, 9, 2, '2024-05-08 15:38:51'),
(12, 10, 2, '2024-05-09 13:25:32'),
(13, 11, 2, '2024-05-08 15:38:51'),
(14, 12, 3, '2024-05-08 15:38:51'),
(15, 13, 2, '2024-05-09 08:11:03'),
(20, 19, 3, '2024-05-09 08:55:28'),
(21, 15, 2, '2024-05-09 08:57:14'),
(22, 14, 3, '2024-05-09 08:57:14'),
(23, 20, 2, '2024-05-09 08:59:27'),
(24, 21, 3, '2024-05-09 13:19:18'),
(25, 24, 3, '2024-05-09 11:32:51'),
(26, 25, 3, '2024-05-09 22:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `atten_id` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`atten_id`, `memberID`, `date`) VALUES
(1, 1, '2024-05-06 06:32:58'),
(2, 2, '2024-05-06 08:19:25'),
(3, 3, '2024-05-06 10:08:48'),
(4, 1, '2024-05-07 12:15:57'),
(5, 2, '2024-05-07 12:16:05'),
(6, 4, '2024-05-07 12:16:17'),
(7, 5, '2024-05-07 12:16:32'),
(8, 1, '2024-05-08 14:09:41'),
(9, 4, '2024-05-08 14:09:51'),
(10, 10, '2024-05-08 14:09:59'),
(11, 11, '2024-05-08 14:10:06'),
(12, 12, '2024-05-09 04:50:42'),
(13, 10, '2024-05-09 04:50:51'),
(14, 5, '2024-05-09 05:14:57'),
(15, 13, '2024-05-09 08:12:08'),
(16, 3, '2024-05-09 09:35:11'),
(17, 14, '2024-05-09 09:35:28'),
(18, 15, '2024-05-09 10:27:33'),
(19, 6, '2024-05-09 10:27:50'),
(20, 4, '2024-05-09 10:29:15'),
(21, 7, '2024-05-09 11:20:19'),
(22, 21, '2024-05-09 11:37:16'),
(23, 1, '2024-05-09 13:27:46'),
(24, 6, '2024-05-09 19:49:16'),
(25, 3, '2024-05-09 22:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `name`, `status`, `dateCreated`, `lastUpdated`) VALUES
(1, 'Michael Manlangit', 'Active', '2024-05-06 04:48:40', '2024-05-06 04:48:40'),
(2, 'Kurt Angelo Labandelo', 'Active', '2024-05-06 06:31:53', '2024-05-06 06:31:53'),
(3, 'Hazel Anne Malitig', 'Active', '2024-05-06 10:05:28', '2024-05-07 12:13:21'),
(4, 'Harvy Winceslao', 'Inactive', '2024-05-06 10:49:30', '2024-05-07 11:47:58'),
(5, 'Kenneth Onan', 'Active', '2024-05-06 10:49:31', '2024-05-06 10:51:23'),
(6, 'Daniel Catena', 'Active', '2024-05-08 13:55:08', '2024-05-08 13:55:08'),
(7, 'Diana Hernadez', 'Active', '2024-05-08 13:59:56', '2024-05-08 13:59:56'),
(8, 'Bien Tolentino', 'Inactive', '2024-05-08 14:01:30', '2024-05-09 09:00:46'),
(9, 'Precious Grace Abion', 'Active', '2024-05-08 14:04:01', '2024-05-08 14:04:01'),
(10, 'Rolly Pascual Jr.', 'Active', '2024-05-08 14:05:09', '2024-05-08 14:05:09'),
(11, 'Charley Comia', 'Inactive', '2024-05-08 14:07:22', '2024-05-08 14:12:34'),
(12, 'Kurt Durado', 'Inactive', '2024-05-08 14:46:25', '2024-05-09 05:16:52'),
(13, 'Mark Aeron Vierneza', 'Active', '2024-05-09 07:41:43', '2024-05-09 07:41:43'),
(14, 'John Ansel Doton', 'Inactive', '2024-05-09 08:22:47', '2024-05-09 08:32:34'),
(15, 'Francis Andrei Aciado', 'Active', '2024-05-09 08:35:07', '2024-05-09 08:35:07'),
(19, 'Lei Charles Doria', 'Active', '2024-05-09 08:55:28', '2024-05-09 08:55:28'),
(20, 'Emmanuel Parenio', 'Active', '2024-05-09 08:59:27', '2024-05-09 08:59:27'),
(21, 'Allyssa Mae Espiritu', 'Active', '2024-05-09 09:49:47', '2024-05-09 21:44:33'),
(24, 'Zairah Torres', 'Inactive', '2024-05-09 11:32:51', '2024-05-09 11:36:15'),
(25, 'Jonalyn Umali', 'Active', '2024-05-09 22:03:26', '2024-05-09 22:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roletype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roletype`) VALUES
(1, 'Admin'),
(2, 'Member'),
(3, 'Visitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD PRIMARY KEY (`accRoleID`),
  ADD KEY `roleID` (`roleID`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`atten_id`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountinfo`
--
ALTER TABLE `accountinfo`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `accountrole`
--
ALTER TABLE `accountrole`
  MODIFY `accRoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `atten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD CONSTRAINT `accountinfo_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);

--
-- Constraints for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD CONSTRAINT `accountrole_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`),
  ADD CONSTRAINT `accountrole_ibfk_2` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
