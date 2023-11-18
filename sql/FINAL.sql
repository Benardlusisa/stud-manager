-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2023 at 07:29 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FINAL`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$IElzRe3vNDhhoBbzJhqpZuKuI3N2Kn7fNlCdw.9Z8Y32FpKQl56BW');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(50) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch`) VALUES
(1, 'Computer'),
(2, 'IT'),
(3, 'BBIT');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(200) NOT NULL,
  `roll_no` int(200) NOT NULL,
  `branch_id` int(50) NOT NULL,
  `sem_id` int(9) NOT NULL,
  `subj_id` int(200) NOT NULL,
  `marks` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `roll_no`, `branch_id`, `sem_id`, `subj_id`, `marks`) VALUES
(1, 31, 1, 6, 33, 87),
(2, 31, 1, 6, 34, 99),
(3, 31, 1, 6, 37, 87),
(4, 31, 1, 6, 38, 69),
(5, 31, 1, 6, 32, 77),
(6, 31, 1, 6, 31, 99),
(7, 31, 1, 6, 35, 88),
(8, 31, 1, 6, 36, 98),
(9, 74, 1, 6, 33, 99),
(10, 74, 1, 6, 34, 87),
(11, 74, 1, 6, 37, 78),
(12, 74, 1, 6, 38, 69),
(13, 74, 1, 6, 32, 78),
(14, 74, 1, 6, 31, 97),
(15, 74, 1, 6, 35, 78),
(16, 74, 1, 6, 36, 69),
(17, 142, 1, 5, 27, 33),
(18, 142, 1, 5, 28, 99),
(19, 142, 1, 5, 11, 78),
(20, 142, 1, 5, 29, 99),
(21, 142, 1, 5, 30, 74),
(22, 142, 1, 5, 24, 66),
(23, 142, 1, 5, 44, 87),
(24, 142, 1, 5, 3, 77),
(25, 142, 1, 5, 25, 99),
(26, 142, 1, 5, 26, 87),
(27, 142, 1, 5, 5, 99),
(28, 7, 1, 1, 69, 66),
(29, 7, 1, 1, 65, 87),
(30, 7, 1, 1, 66, 79),
(31, 7, 1, 1, 67, 69),
(32, 7, 1, 1, 70, 88),
(33, 7, 1, 1, 68, 99),
(34, 7, 1, 1, 71, 100);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(9) NOT NULL,
  `semester` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);


-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `reg_id` int(255) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Roll_No` int(160) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `branch_id` int(100) NOT NULL,
  `sem_id` int(8) NOT NULL,
  `Reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`reg_id`, `Name`, `Roll_No`, `Email`, `Gender`, `DOB`, `branch_id`, `sem_id`, `Reg_date`, `status`) VALUES
(1, 'Christy Biju', 31, 'christy@gmail.com', 'Female', '2002-10-23', 1, 4, '2023-01-01 17:34:31', 1),
(2, 'Joel Biju', 7, 'joel@gmail.com', 'Male', '2008-01-09', 1, 1, '2023-01-01 17:35:09', 1),
(3, 'Isha Surve', 142, 'isha@gmail.com', 'Female', '2002-07-09', 1, 4, '2023-01-01 17:36:06', 1),
(4, 'Chinmayee Kulkarni', 74, 'chin@gmail.com', 'Female', '2002-07-19', 1, 4, '2023-01-01 17:37:03', 1),
(5, 'Sakshi Chougule', 30, 'sak@gmail.com', 'Female', '2002-07-30', 1, 4, '2023-01-01 17:38:00', 1),
(6, 'Vrushali Gavit', 33, 'vrush@gmail.com', 'Female', '2023-01-01', 2, 4, '2023-01-01 17:38:29', 1),
(7, 'Vincy Joseph', 55, 'vin@gmail.com', 'Female', '2022-07-13', 2, 4, '2023-01-01 17:39:35', 1),
(8, 'Biju Zach', 88, 'biju@gmail.com', 'Male', '2022-08-11', 1, 4, '2023-01-01 17:40:28', 1),
(9, 'Jia Johnson', 1, 'j@gmail.com', 'Female', '2023-01-11', 1, 4, '2023-01-01 17:41:08', 1),
(10, 'Vaishnavi Katore', 4, 'vaish@gmail.com', 'Female', '2002-11-21', 3, 4, '2023-01-01 17:43:39', 1),
(11, 'Vallary Jadhao', 6, 'vll@gmail.com', 'Female', '2023-01-25', 3, 4, '2023-01-01 17:44:06', 1),
(12, 'Riya Dcruz', 66, 'riya@gmail.com', 'Female', '2022-12-27', 3, 4, '2023-01-01 17:44:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subj_id` int(200) NOT NULL,
  `subj_name` varchar(200) NOT NULL,
  `subj_code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subj_id`, `subj_name`, `subj_code`, `status`) VALUES
(1, 'Introduction to Computer Science', 'CS101', 1),
(2, 'Mathematics for Computer Science', 'CS102', 1),
(3, 'Programming Fundamentals', 'CS103', 1),
(4, 'Introduction to Information Systems', 'CS104', 1),
(5, 'Communication Skills', 'CS105', 1),
(6, 'Introduction to Databases', 'CS106', 1),
(7, 'Introduction to Networking', 'CS107', 1),
(8, 'Basics of Web Technologies', 'CS108', 1),
(9, 'Data Structures and Algorithms', 'CS201', 1),
(10, 'Object-Oriented Programming', 'CS202', 1),
(11, 'Computer Organization and Architecture', 'CS203', 1),
(12, 'Operating Systems', 'CS204', 1),
(13, 'Database Management Systems', 'CS205', 1),
(14, 'Web Development', 'CS206', 1),
(15, 'Software Engineering Principles', 'CS207', 1),
(16, 'Network Security', 'CS208', 1),
(17, 'Advanced Programming', 'CS301', 1),
(18, 'Systems Analysis and Design', 'CS302', 1),
(19, 'Artificial Intelligence', 'CS303', 1),
(20, 'Cloud Computing', 'CS304', 1),
(21, 'Mobile Application Development', 'CS305', 1),
(22, 'Information Security', 'CS306', 1),
(23, 'Human-Computer Interaction', 'CS307', 1),
(24, 'Project Management', 'CS308', 1),
(25, 'Internship/Industrial Attachment', 'CS401', 1),
(26, 'Capstone Project/Thesis', 'CS402', 1),
(27, 'Elective Courses/Specializations', 'CS403', 1),
(28, 'Advanced Topics in Computer Science', 'CS404', 1),
(29, 'Entrepreneurship in IT', 'CS405', 1),
(30, 'Professional Ethics in Computing', 'CS406', 1),
(31, 'New Course', 'NC1', 1),
(32, 'Another New Course', 'NC2', 1),
(33, 'Yet Another New Course', 'NC3', 1),
(34, 'One More New Course', 'NC4', 1),
(35, 'Fresh Course Addition', 'NC5', 1),
(36, 'Innovative Course', 'NC6', 1),
(37, 'Cutting-Edge Course', 'NC7', 1),
(38, 'Modern Technology Course', 'NC8', 1),
(39, 'Emerging Trends in Tech', 'NC9', 1),
(40, 'Advanced IT Applications', 'NC10', 1),
(41, 'Futuristic Technologies', 'NC11', 1),
(42, 'Tech Innovations', 'NC12', 1),
(43, 'Revolutionary Tech Seminar', 'NC13', 1),
(44, 'Tech Industry Insights', 'NC14', 1),
(45, 'Global Tech Challenges', 'NC15', 1),
(46, 'Tech Ethics and Governance', 'NC16', 1),
(47, 'Tech Policy Development', 'NC17', 1),
(48, 'Future of Tech Careers', 'NC18', 1),
(49, 'Innovation and Entrepreneurship', 'NC19', 1),
(50, 'Tech Startups and Ventures', 'NC20', 1),
(51, 'Tech Business Strategies', 'NC21', 1),
(52, 'Digital Transformation', 'NC22', 1),
(53, 'Smart Technologies', 'NC23', 1),
(54, 'Tech and Society', 'NC24', 1),
(55, 'Tech and Environment', 'NC25', 1),
(56, 'AI and Machine Learning Trends', 'NC26', 1),
(57, 'Next-Gen Computing', 'NC27', 1),
(58, 'Innovative Tech Solutions', 'NC28', 1),
(59, 'Cybersecurity Challenges', 'NC29', 1),
(60, 'Blockchain and Cryptocurrency', 'NC30', 1),
(61, 'Quantum Computing Overview', 'NC31', 1),
(62, 'Tech Laws and Regulations', 'NC32', 1),
(63, 'Ethical Hacking', 'NC33', 1),
(64, 'Tech Research and Development', 'NC34', 1),
(65, 'Disruptive Technologies', 'NC35', 1),
(66, 'Advanced Tech Protocols', 'NC36', 1),
(67, 'Tech Investment Strategies', 'NC37', 1),
(68, 'Tech Product Management', 'NC38', 1),
(69, 'Tech Project Implementation', 'NC39', 1),
(70, 'Tech Industry Innovators', 'NC40', 1),
(71, 'Innovation in Tech Marketing', 'NC41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject_comb`
--

CREATE TABLE `subject_comb` (
  `comb_id` int(200) NOT NULL,
  `branch_id` int(50) NOT NULL,
  `sem_id` int(9) NOT NULL,
  `subj_id` int(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_comb`
--

INSERT INTO `subject_comb` (`comb_id`, `branch_id`, `sem_id`, `subj_id`, `status`) VALUES
(1, 1, 1, 65, 1),
(2, 1, 1, 66, 1),
(3, 1, 1, 67, 1),
(4, 1, 1, 68, 1),
(5, 1, 1, 69, 1),
(6, 1, 1, 70, 1),
(7, 1, 1, 71, 1),
(8, 1, 2, 56, 1),
(9, 1, 2, 57, 1),
(10, 1, 2, 58, 1),
(11, 1, 2, 59, 1),
(13, 1, 2, 60, 1),
(14, 1, 2, 61, 1),
(15, 1, 2, 63, 1),
(16, 1, 2, 64, 1),
(17, 1, 3, 1, 1),
(18, 1, 3, 2, 1),
(19, 1, 3, 3, 1),
(20, 1, 3, 4, 1),
(21, 1, 3, 5, 1),
(23, 1, 3, 6, 1),
(24, 1, 3, 7, 1),
(25, 1, 3, 8, 1),
(26, 1, 3, 9, 1),
(27, 1, 4, 10, 1),
(28, 1, 4, 11, 1),
(29, 1, 4, 12, 1),
(30, 1, 4, 13, 1),
(31, 1, 4, 14, 1),
(32, 1, 4, 15, 1),
(33, 1, 4, 16, 1),
(34, 1, 4, 17, 1),
(35, 1, 4, 18, 1),
(36, 1, 4, 19, 1),
(37, 1, 3, 20, 1),
(38, 1, 3, 21, 1),
(39, 1, 3, 22, 1),
(40, 1, 3, 23, 1),
(41, 1, 3, 24, 1),
(42, 1, 3, 25, 1),
(43, 1, 3, 26, 1),
(44, 1, 2, 27, 1),
(45, 1, 2, 28, 1),
(46, 1, 2, 29, 1),
(47, 1, 2, 30, 1),
(48, 1, 2, 31, 1),
(49, 1, 2, 32, 1),
(50, 1, 2, 33, 1),
(51, 1, 1, 34, 1),
(52, 1, 1, 35, 1),
(53, 1, 1, 36, 1),
(54, 1, 1, 37, 1),
(55, 1, 1, 38, 1),
(56, 1, 1, 39, 1),
(57, 1, 4, 40, 1),
(58, 1, 4, 41, 1),
(59, 1, 4, 44, 1),
(60, 1, 3, 47, 1),
(61, 1, 4, 48, 1),
(62, 2, 4, 50, 1),
(63, 2, 4, 51, 1),
(64, 2, 4, 1, 1),
(65, 2, 4, 2, 1),
(66, 2, 4, 5, 1),
(67, 2, 3, 70, 1),
(68, 2, 3, 11, 1),
(69, 2, 3, 8, 1),
(70, 2, 3, 44, 1),
(71, 2, 3, 3, 1),
(72, 3, 3, 1, 1),
(73, 3, 3, 2, 1),
(74, 3, 3, 5, 1),
(75, 3, 3, 8, 1),
(76, 3, 3, 31, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subj_id`);

--
-- Indexes for table `subject_comb`
--
ALTER TABLE `subject_comb`
  ADD PRIMARY KEY (`comb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `sem_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `reg_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subj_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `subject_comb`
--
ALTER TABLE `subject_comb`
  MODIFY `comb_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
