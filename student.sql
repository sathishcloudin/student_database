-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 08:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_detail`
--

CREATE TABLE `student_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `std` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_detail`
--

INSERT INTO `student_detail` (`id`, `name`, `std`, `dob`, `phone`, `address`, `city`, `pincode`, `status`) VALUES
(1, 'sathish', '10', '1/02/2000', '8712712332', '75/e townhall', 'cbe', '352788', ''),
(2, 'sathishkumar', '10', '11/02/2008', '8712712332', '75/e ukkadam', 'cbe', '352788', ''),
(3, 'kumar', '10', '11/02/2000', '8712712332', '75/e townhall', 'cbe', '352789', ''),
(4, 'backend', '10', '1/02/2000', '8712712332', '75/e townhall', 'cbe', '352788', ''),
(5, 'iphone', '10', '8/3/1994', '8712712332', '93/t selvapuram', 'kerala', '785110', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `marks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `subject_id`, `marks`) VALUES
(1, 1, 1, '45'),
(2, 1, 1, '56'),
(3, 1, 1, '84'),
(4, 1, 1, '89'),
(5, 1, 1, '67'),
(16, 2, 2, '45'),
(17, 2, 2, '56'),
(18, 2, 2, '84'),
(19, 2, 2, '89'),
(20, 2, 2, '67'),
(21, 3, 3, '47'),
(22, 3, 3, '56'),
(23, 3, 3, '87'),
(24, 3, 3, '79'),
(25, 3, 3, '67'),
(26, 4, 4, '55'),
(27, 4, 4, '54'),
(28, 4, 4, '44'),
(29, 4, 4, '86'),
(30, 4, 4, '67'),
(31, 5, 5, '45'),
(32, 5, 5, '56'),
(33, 5, 5, '84'),
(34, 5, 5, '89'),
(35, 5, 5, '67');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `std_` varchar(10) DEFAULT NULL,
  `subject_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `std_`, `subject_name`) VALUES
(1, '10', 'tamil'),
(2, '10', 'english'),
(3, '10', 'maths'),
(4, '10', 'computer'),
(5, '10', 'social');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_detail`
--
ALTER TABLE `student_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_detail`
--
ALTER TABLE `student_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
