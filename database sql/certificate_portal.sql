-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 10:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certificate_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `full_name`, `email`, `mobile`, `created_at`) VALUES
(3, 'admin', 'admin1234', 'ادمین', 'admin@example.com', '09917671038', '2025-06-18 13:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `national_id` varchar(10) NOT NULL,
  `certificate_no` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_duration` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `certificate_img` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `national_id`, `certificate_no`, `full_name`, `mobile`, `email`, `birth_date`, `course_name`, `course_duration`, `issue_date`, `expire_date`, `user_photo`, `certificate_img`, `qr_code`, `created_at`) VALUES
(13, '2284789927', 'A1000', 'امیرمحمد کامگار', '09917671038', 'kamgaramir1387@gmail.com', '2008-05-01', 'PHP & Laravel', '90', '2025-06-28', '2027-12-28', 'user_photos/photo_685fa35a2ead4_1751098202.png', NULL, NULL, '2025-06-28 11:40:02'),
(14, '2281236985', 'A1001', 'محمدحسین اکبری', '09178523696', 'akbarimohammadhossein@gmail.com', '2008-01-01', 'Wordpress & SEO', '60', '2025-06-28', '2027-12-26', 'user_photos/photo_685fa3dfeed0f_1751098335.png', NULL, NULL, '2025-06-28 11:42:15'),
(15, '5489631245', 'A1002', 'محمدمهدی زارع', '09916324578', 'zaremahdi@gmail.com', '2008-08-01', 'Web Design', '40', '2025-06-28', '2026-12-27', 'user_photos/photo_685fa439df364_1751098425.png', NULL, NULL, '2025-06-28 11:43:45'),
(16, '5487413696', 'A1003', 'ابوالفضل قاسمی', '09224123685', 'abolfazlghasemi@gmail.com', '2008-12-01', 'SEO', '20', '2025-06-28', '2027-10-11', 'user_photos/photo_685fa49a6c598_1751098522.png', NULL, NULL, '2025-06-28 11:45:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
