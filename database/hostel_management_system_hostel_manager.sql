-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:44 AM
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
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0,
  `Email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Pwd`, `Isadmin`, `Email`) VALUES
(456, 'ashutosh', 'Ashutosh', 'Kumar', '4758691450', 0, '$2y$10$p5z2NiWS001x8pwKg4I.ze05AZqBfEXluCGy9rLYX4GVhXRrEA/C.', 1, 'ashutosh@sode-edu.in'),
(458, 'saurabh', 'Saurabh', 'Shetty', '4567891234', 1, '$2y$10$hSBz/5bWcG2imZQ9BYKy4OBQM.24GhBPIGdLnmEe7nOa7Ww26wlHu', 0, 'saurabh@sode-edu.in'),
(460, 'ganpat', 'Ganpat', 'Patel', '4561231232', 2, '$2y$10$9TV4SsagyI9IwOr5GTp0KuoV1MXugQEF5nHSmJo97vfeB401Qg9sq', 0, 'ganpat@sode-edu.in'),
(461, 'suhas', 'Suhas', 'Kashyap', '7531594568', 3, '$2y$10$Bg1hl5AW5iuqq3m.RCSjz.K3ZahF2/xhO7oINGvLpi3/vT1pWJrva', 0, 'suhas@sode-edu.in'),
(462, 'shubham', 'Shubham', 'Poojary', '4445556662', 4, '$2y$10$cROtTF0uqXHA9bBSRgD1M.PZionYAo39lOSc5TR7Funzgga35gWru', 0, 'shubham@sode-edu.in'),
(463, 'pranav', 'Pranav ', 'Nayak', '6665557779', 5, '$2y$10$bovt4p969CzfbAI/xJELt.z9VDE.0w2S6q93H2n4KJpv3oVTpuP9m', 0, 'pranav@sode-edu.in'),
(464, 'shloka', 'Shloka', 'Shetty', '9998887771', 6, '$2y$10$kJe54ja2eTKtOmyMjEvcnOkeHGKtfVcVxSsfp6POdNx/EsC738C9S', 0, 'shloka@sode-edu.in'),
(465, 'prajna', 'Prajna', 'Nayak', '9966338524', 7, '$2y$10$ULfpdQZ8eIr9C.nJq/hP9eP9BewkU5vTOizsTE1raKMcr7ESEVtoK', 0, 'prajna@sode-edu.in'),
(466, 'sania', 'Sania', 'Khan', '9514568520', 8, '$2y$10$tWTHDWzYNQOW6QeO42Rbl.kOzPN/HfmlTvL9OdOq7XA5TxEmW7Gpu', 0, 'sania@sode-edu.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
