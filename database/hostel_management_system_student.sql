-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:47 AM
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
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- Constraints for dumped tables
--

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
