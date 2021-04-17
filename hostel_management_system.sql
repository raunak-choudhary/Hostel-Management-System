-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 01:52 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

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
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(4, '1234', 1, 0, 1, 'Allot me room'),
(7, '147', 2, 0, 101, 'allot me room'),
(8, '123', 3, 0, 201, 'allot me room.'),
(9, '234', 4, 0, 14, 'Allot Me Room.'),
(10, '456', 6, 0, 28, 'Allot Me Room.'),
(11, '567', 7, 0, 129, 'Allot Me Room.'),
(12, '678', 8, 0, 215, 'Allot Me Room.'),
(13, '789', 8, 0, 216, 'Allot Me Room.'),
(14, '120', 2, 0, 102, 'xxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(0, 'Admin_Hostel', NULL, '10', NULL),
(1, 'Boys Hostel 1 GF', NULL, '13', NULL),
(2, 'Boys Hostel 1 FF', NULL, '14', NULL),
(3, 'Boys Hostel 1 SF', NULL, '14', NULL),
(4, 'Boys Hostel 2 GF', NULL, '14', NULL),
(5, 'Boys Hostel 2 FF', NULL, '14', NULL),
(6, 'Girls Hostel 1 GF', NULL, '13', NULL),
(7, 'Girls Hostel 1 FF', NULL, '14', NULL),
(8, 'Girls Hostel 1 SF', NULL, '14', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL,
  `sender_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`, `sender_name`) VALUES
(22, '456', '458', 1, 'Hello Saurabh', 'Welcome as a New Hostel Manager.', '2020-12-11', '06:10 AM', 'Ashutosh Kumar'),
(23, '1234', '458', 1, 'Food Issues', 'Have a lot food Issues. Please Resolve that.', '2020-12-11', '06:13 AM', 'Raunak Choudhary'),
(24, '458', '1234', 1, 'Food Issues', 'We will Solve that very soon.', '2020-12-11', '06:14 AM', 'Saurabh Shetty');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 0),
(14, 2, 101, 1),
(15, 2, 102, 1),
(16, 2, 103, 0),
(28, 3, 201, 1),
(29, 3, 202, 0),
(30, 3, 203, 0),
(42, 4, 14, 1),
(43, 4, 15, 0),
(44, 4, 16, 0),
(56, 5, 115, 0),
(57, 5, 116, 0),
(58, 5, 117, 0),
(70, 6, 28, 1),
(71, 6, 29, 0),
(72, 6, 30, 0),
(83, 7, 129, 1),
(84, 7, 130, 0),
(85, 7, 131, 0),
(97, 8, 215, 1),
(98, 8, 216, 1),
(99, 8, 217, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('120', 'abc', 'xyz', '1234567890', 'MECH', '2016', '$2y$10$Ie426oCs/mbNhbWNYVM8muKaszCjF20WpFR.QT.ss6rKW9iNqtwi2', 2, 15),
('123', 'Abhidev', 'V', '7894461230', 'MECH', '2019', '$2y$10$MTPtYc/o3ncojNx8Qi/tTOrnrGNlNom8uzskPtyWOtLuiYHIBIlBK', 3, 28),
('1234', 'Raunak', 'Choudhary', '1234567890', 'CSE', '2017', '$2y$10$nOwyL0bV/PE9/EK0vzXcZekE2OAzcjz9MPyCG6w5Wh6bUENef/0tu', 1, 1),
('147', 'Mahith', 'Hegde', '7531594658', 'ECE', '2018', '$2y$10$EsEpddue5LDHzBH4XFFFseH9X4Il.9maaEXfqBadCYvGdsgNg0z12', 2, 14),
('234', 'Ullas', 'Kundar', '4567891230', 'CIVIL', '2020', '$2y$10$ElDnfPA8DnktzEJkaM9EiO/bpEapGCddog0rdnmP8KTYF39peziX6', 4, 42),
('345', 'Faheem', 'Ahmed', '3456789120', 'ECE', '2020', '$2y$10$NB6UoTefr.pNpG.MhA.myuyrynogHFvxAxmqlBKPkYXVWMVO.Oji6', NULL, NULL),
('456', 'Rakshita', 'Kotian', '4789561230', 'CIVIL', '2017', '$2y$10$HpVZMfyEL/gaonKqfu51uexSG.4auB9Fkt5amHB.4tNrGkwDeBm.O', 6, 70),
('567', 'Samreen', 'Shaikh', '2345678910', 'CSE', '2018', '$2y$10$Xga2rHafO77OGI8QdxU/S.hmvGOFNzF2/VQ1YADNDyN53.iySuq6S', 7, 83),
('678', 'Samskriti', 'Jain', '4123789560', 'ECE', '2019', '$2y$10$MztFdMNaP6c0Dlrz/xtLGOxP4Ot4171KyMmxbCzCg6Yx49AdKly1m', 8, 97),
('789', 'Srinidhi', 'N', '647891230', 'CSE', '2020', '$2y$10$u/CMRS8nHWbMNAQBtGNX9eeRAAq7AotpzSANLHFI3c78XCGe/7GCm', 8, 98);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
