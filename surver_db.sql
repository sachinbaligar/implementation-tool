-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 06:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fetch_db`
--
CREATE DATABASE IF NOT EXISTS `fetch_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fetch_db`;

-- --------------------------------------------------------

--
-- Table structure for table `display`
--

CREATE TABLE `display` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `display`
--

INSERT INTO `display` (`id`, `name`, `email`, `contact`, `gender`, `age`) VALUES
(1, 'Sachin', 'sachin@gmail.com', '9900', 'male', '79'),
(2, 'Sachin', 'sachin@gmail.com', '9900', 'male', '79');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `display`
--
ALTER TABLE `display`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `payroll_mdb`
--
CREATE DATABASE IF NOT EXISTS `payroll_mdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `payroll_mdb`;

-- --------------------------------------------------------

--
-- Table structure for table `wy_admin`
--

CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_admin`
--

INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, 'SKiB14', 'Admin14', 'admin14@gmail.com', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', '2019-04-18 02:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `wy_attendance`
--

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `action_name` enum('punchin','punchout') NOT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_attendance`
--

INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(2, 'WY01', '2021-04-13', 'punchin', '10:41:27', '21'),
(3, 'WY01', '2021-04-13', 'punchout', '17:37:36', '220'),
(4, 'WY02', '2021-04-14', 'punchin', '15:05:42', 'D114'),
(5, 'WY02', '2021-04-14', 'punchout', '22:19:14', 'out-144'),
(6, 'WY03', '2021-04-14', 'punchin', '10:30:30', 'IN'),
(7, 'WY03', '2021-04-14', 'punchout', '17:30:52', 'OUT'),
(8, 'WY04', '2021-04-14', 'punchin', '10:00:59', 'IS1'),
(9, 'WY04', '2021-04-14', 'punchout', '14:31:27', 'IS1'),
(10, 'WY05', '2021-04-14', 'punchin', '19:11:29', 'In'),
(11, 'WY05', '2021-04-14', 'punchout', '19:13:02', 'Outt'),
(12, 'WY01', '2023-10-31', 'punchin', '16:57:21', ''),
(13, 'WY03', '2023-10-31', 'punchin', '17:01:06', ''),
(14, 'WY04', '2023-10-31', 'punchin', '17:02:37', ''),
(15, 'WY05', '2023-10-31', 'punchin', '17:23:53', ''),
(16, 'WY02', '2023-10-31', 'punchin', '18:45:32', ''),
(17, 'WY02', '2023-10-31', 'punchout', '19:34:04', ''),
(18, 'WY02', '2023-11-02', 'punchin', '12:08:50', ''),
(19, 'WY02', '2023-11-02', 'punchout', '12:08:59', ''),
(20, 'WY03', '2023-11-02', 'punchin', '12:34:47', ''),
(21, 'WY03', '2023-11-02', 'punchout', '13:06:12', ''),
(22, 'WY02', '2023-11-03', 'punchin', '16:17:56', ''),
(23, 'WY02', '2023-11-06', 'punchin', '11:48:16', ''),
(24, 'WY02', '2023-11-06', 'punchout', '11:48:20', ''),
(25, 'WY01', '2023-11-07', 'punchin', '17:01:10', ''),
(26, 'WY01', '2023-11-07', 'punchout', '17:01:31', ''),
(27, 'WY01', '2023-11-08', 'punchin', '10:44:46', ''),
(28, 'WY01', '2023-11-08', 'punchout', '10:44:55', ''),
(29, 'WY01', '2023-11-15', 'punchin', '10:53:06', ''),
(30, 'WY01', '2024-01-02', 'punchin', '11:32:59', ''),
(31, 'WY01', '2024-01-02', 'punchout', '11:32:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `wy_employees`
--

CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pf_account` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_employees`
--

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `state`, `country`, `email`, `mobile`, `telephone`, `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `blood_group`, `photo`, `designation`, `department`, `pan_no`, `bank_name`, `account_no`, `ifsc_code`, `pf_account`, `created`) VALUES
(6, 'WY01', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mohit', 'c', '04/01/1995', 'male', 'Married', 'indian', 'bengaluru', 'bengaluru', 'karnataka', 'india', 'mohit@gmail.com', '2457878540', '014577854', 'Passport', '012345678', 'Permanent position', '01/29/2019', 'B+', 'WY01.jpg', 'Developer', 'WEB', '14785424', 'Demo Bank', '012457854512', '12458', '11452', '2021-04-12 13:54:49'),
(7, 'WY02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Tester', 't', '04/01/1993', 'male', 'single', 'indian', 'vijaynagar bengaluru', 'bengaluru', 'karnataka', 'india', 'tester@gmail.com', '9874563210', '999999999', 'Passport', '914575421', 'Permanent position', '04/10/2023', 'AB+', 'WY02.jpg', 'Chief Marketing Officer', 'Marketing', '2014578540', 'national bank', '69529712540', 'GRSB0069961', 'GB LAD 054110 000 000542', '2021-04-14 13:18:32'),
(8, 'WY03', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'kushi', 'm', '04/20/1995', 'female', 'Single', 'indian', 'whitefield', 'bengaluru', 'karnataka', 'india', 'kushi@gmail.com', '4578545555', '4547854520', 'Passport', '100035420', 'Part-time employee', '04/01/2021', 'A+', 'WY03.jpg', 'Executive Assistant', 'General', '1450578569', 'HDFC Bank', '87529722555', 'CBSB0096960', 'CB LAD 094169 000 000111', '2021-04-14 14:23:30'),
(9, 'WY04', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'virat', 'n', '10/12/1992', 'male', 'Registered partnership', 'indian', 'HSR ', 'mysore', 'CO', 'india', 'virat@gmail.com', '3457856970', '1045786310', 'Passport', '321457852', 'Intern', '04/14/2021', 'A-', 'WY04.jpg', 'Internship Period', 'IT', '2222060446', 'HDFC Bank', '273794443158', 'FBSB00139980', 'FB LAD 033385 000 000135', '2021-04-14 15:49:34'),
(10, 'WY05', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Anushka', 'k', '07/29/1993', 'female', 'Single', 'indian', 'bengaluru', 'mysore', 'karnataka', 'india', 'anushka@gmail.com', '3247548880', '2457778540', 'Passport', '245785000', 'Permanent position', '10/15/2020', 'B+', 'WY05.jpg', 'Chief Technology Officer', 'IT', '425569690', 'HDFC Bank', '4201483626', 'CVCB0011377', 'CB LAD 032425 000 000753', '2021-04-14 19:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `wy_employees1`
--

CREATE TABLE `wy_employees1` (
  `id` int(100) NOT NULL,
  `emp_id` int(100) NOT NULL,
  `emp_code` varchar(100) NOT NULL,
  `joining_date1` date NOT NULL,
  `first_name1` varchar(100) NOT NULL,
  `last_name2` varchar(100) NOT NULL,
  `dob1` varchar(100) NOT NULL,
  `event1` varchar(100) NOT NULL,
  `activity1` varchar(100) NOT NULL,
  `hour1` varchar(100) NOT NULL,
  `hour2` varchar(100) NOT NULL,
  `hour3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wy_holidays`
--

CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('compulsory','restricted') NOT NULL DEFAULT 'compulsory'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_holidays`
--

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(21, 'New Year', 'New Year 2024', '01/01/2024', 'compulsory'),
(22, 'Dasara', 'State Holiday', '10/24/2023', 'compulsory'),
(23, 'Kannada Rajyotsava', 'State Holiday', '11/01/2023', 'compulsory');

-- --------------------------------------------------------

--
-- Table structure for table `wy_leaves`
--

CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(50) NOT NULL,
  `leave_subject1` varchar(100) NOT NULL,
  `leave_subject2` varchar(100) NOT NULL,
  `leave_subject3` varchar(200) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_type1` varchar(100) NOT NULL,
  `leave_type2` varchar(100) NOT NULL,
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_leaves`
--

INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_subject1`, `leave_subject2`, `leave_subject3`, `leave_dates`, `leave_message`, `leave_type`, `leave_type1`, `leave_type2`, `apply_date`) VALUES
(48, 'WY02', '10/18/2023', 'WY02', 'skib', 'timesheet', ' Project Management', 'QA team corrections', '10:00:00 ', '07:00:00 ', '02:00:00 ', '2023-10-18 10:48:59'),
(49, 'WY02', '10/18/2023', 'WY02', 'skib', 'online shopping', ' Project Management', 'PM Implementation', '10:00:00 ', '08:00:00 ', '02:00:00 ', '2023-10-18 13:13:36'),
(50, 'WY01', '10/30/2023', 'WY01', 'skib', 'timesheet', 'Setup', 'PM Implementation', '10:00:00 ', '08:00:00 ', '01:00:00 ', '2023-10-31 16:58:23'),
(51, 'WY03', '10/31/2023', 'WY03', 'wipro', 'online shopping', 'Monitoring', 'Checking  setup', '10:00:00 ', '09:00:00 ', '01:00:00 ', '2023-10-31 17:02:01'),
(52, 'WY04', '10/31/2023', 'WY04', 'virabh', 'online gaming', 'General', 'PM/Client corrections', '10:00:00 ', '09:00:00 ', '01:00:00 ', '2023-10-31 17:05:13'),
(53, 'WY05', '10/31/2023', 'WY05', 'DXC', 'mvp', 'Corrections Programming', 'QA team corrections', '10:00:00 ', '08:00:00 ', '02:00:00 ', '2023-10-31 17:24:58'),
(54, 'WY01', '01/02/2024', 'wy01', 'skib', 'impl', 'Project Management', 'Project estimation & planning', '10:00:00 ', '09:00:00 ', '01:00:00 ', '2024-01-02 11:47:10'),
(55, 'WY01', '01/02/2024', 'WY01', 'skib', 'impl', 'InitialProgramming', 'Sampling/Emailing', '10:00:00 ', '09:00:00 ', '01:00:00 ', '2024-01-02 17:47:21'),
(56, 'WY01', '01/01/2024', 'WY01', 'skib', 'fgh', 'Corrections Programming', 'QA team corrections', '10:00:00 ', '07:00:00 ', '02:00:00 ', '2024-01-02 17:48:12'),
(57, 'WY01', '01/18/2024', 'WY01', 'skib', 'impl', 'Setup', 'PM request', '12:00:00 ', '12:00:00 ', '12:00:00 ', '2024-01-04 15:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `wy_leaves1`
--

CREATE TABLE `wy_leaves1` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_dates1` varchar(255) NOT NULL,
  `leave_type1` varchar(255) NOT NULL,
  `leave_subject1` varchar(255) NOT NULL,
  `leave_message1` longtext NOT NULL,
  `leave_status1` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_leaves1`
--

INSERT INTO `wy_leaves1` (`leave_id`, `emp_code`, `leave_dates1`, `leave_type1`, `leave_subject1`, `leave_message1`, `leave_status1`, `apply_date`) VALUES
(20, 'WY01', '01/03/2024', 'Maternity Leave', 'one days leave', 'you', 'approve', '2024-01-02 12:18:24'),
(21, 'WY01', '01/22/2024', 'Sick Leave', 'pavan leave', 'pk', 'approve', '2024-01-02 12:24:14'),
(22, 'WY01', '01/11/2024', 'Casual Leave', 'mohit wedding', 'wedding', 'approve', '2024-01-02 15:48:45'),
(23, 'WY01', '01/12/2024', 'Earned Leave', 'pavan club', 'chilling', 'reject', '2024-01-02 15:49:23'),
(24, 'WY01', '01/13/2024', 'Sick Leave', 'ak', 'kjhyu', 'approve', '2024-01-02 15:49:49'),
(25, 'WY01', '01/14/2024', 'Leave Without Pay', 'wy01', 'mohit', 'approve', '2024-01-02 15:50:32'),
(26, 'WY01', '01/15/2024', 'Casual Leave', '1day', 'pavan.', 'approve', '2024-01-02 15:50:57'),
(27, 'WY01', '01/02/2024', 'Earned Leave', 'io', 'yutr', 'reject', '2024-01-02 16:05:21'),
(28, 'WY01', '01/23/2024', 'Leave Without Pay', 'tyr', 'erw', 'approve', '2024-01-02 16:05:36'),
(29, 'WY01', '01/30/2024', 'Sick Leave', 'iopnmmn', 'vcbcx', 'reject', '2024-01-02 16:05:54'),
(30, 'WY01', '01/16/2024', 'Sick Leave', 'one days leave', 'hjk', 'pending', '2024-01-04 15:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `wy_payheads`
--

CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL,
  `payhead_type` enum('earnings','deductions') NOT NULL DEFAULT 'earnings'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_payheads`
--

INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`, `payhead_type`) VALUES
(1, 'Basic Salary', 'Basic Salary', 'earnings'),
(2, 'Dearness Allowance', 'Dearness Allowance', 'deductions'),
(3, 'House Rent Allowance', 'House Rent Allowance', 'deductions'),
(4, 'Conveyance Allowance', 'Conveyance Allowance', 'deductions'),
(5, 'Medical Allowance', 'Medical Allowance', 'deductions'),
(7, 'Overtime', 'Overtime', 'earnings'),
(8, 'Traveling Expenses', 'Traveling Expenses', 'earnings'),
(9, 'Loans & Advance', 'Loans & Advance', 'earnings'),
(10, 'Other Allowance', 'Other Allowance', 'earnings'),
(11, 'Professional Tax', 'Professional Tax', 'deductions'),
(12, 'Income Tax', 'Income Tax', 'deductions'),
(13, 'Employee Provident Fund', 'Employee Provident Fund', 'deductions'),
(14, 'Loans & Advance', 'Loans & Advance', 'deductions'),
(15, 'Other Deductions', 'Other Deductions', 'deductions');

-- --------------------------------------------------------

--
-- Table structure for table `wy_pay_structure`
--

CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_pay_structure`
--

INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(129, 'WY01', 1, 45000.00),
(130, 'WY01', 15, 5000.00),
(131, 'WY03', 7, 5500.00),
(132, 'WY03', 1, 21000.00),
(133, 'WY05', 1, 51500.00),
(134, 'WY05', 7, 6500.00),
(135, 'WY05', 12, 5510.00),
(136, 'WY04', 1, 39000.00),
(137, 'WY04', 7, 5600.00),
(138, 'WY04', 12, 4250.00),
(139, 'WY02', 1, 21000.00),
(140, 'WY02', 7, 6500.00);

-- --------------------------------------------------------

--
-- Table structure for table `wy_salaries`
--

CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_salaries`
--

INSERT INTO `wy_salaries` (`salary_id`, `emp_code`, `payhead_name`, `pay_amount`, `earning_total`, `deduction_total`, `net_salary`, `pay_type`, `pay_month`, `generate_date`) VALUES
(244, 'WY01', 'Basic Salary', 45000.00, 45000.00, 0.00, 45000.00, 'earnings', 'March, 2021', '2021-04-12 13:48:19'),
(245, 'WY03', 'Overtime', 5500.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(246, 'WY03', 'Basic Salary', 34000.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(247, 'WY05', 'Basic Salary', 51500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(248, 'WY05', 'Overtime', 6500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(249, 'WY05', 'Income Tax', 5510.00, 58000.00, 5510.00, 52490.00, 'deductions', 'April, 2021', '2021-04-14 19:17:14'),
(250, 'WY04', 'Basic Salary', 39000.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(251, 'WY04', 'Overtime', 5600.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(252, 'WY04', 'Income Tax', 4250.00, 44600.00, 4250.00, 40350.00, 'deductions', 'April, 2021', '2021-04-14 19:22:25'),
(253, 'WY01', 'Basic Salary', 45000.00, 45000.00, 5000.00, 40000.00, 'earnings', 'October, 2023', '2023-10-19 16:45:42'),
(254, 'WY01', 'Other Deductions', 5000.00, 45000.00, 5000.00, 40000.00, 'deductions', 'October, 2023', '2023-10-19 16:45:42'),
(255, 'WY01', 'Basic Salary', 45000.00, 45000.00, 5000.00, 40000.00, 'earnings', 'September, 2023', '2023-10-19 16:52:31'),
(256, 'WY01', 'Other Deductions', 5000.00, 45000.00, 5000.00, 40000.00, 'deductions', 'September, 2023', '2023-10-19 16:52:31'),
(257, 'WY01', 'Basic Salary', 45000.00, 45000.00, 5000.00, 40000.00, 'earnings', 'November, 2023', '2023-10-19 17:43:55'),
(258, 'WY01', 'Other Deductions', 5000.00, 45000.00, 5000.00, 40000.00, 'deductions', 'November, 2023', '2023-10-19 17:43:55'),
(259, 'WY01', 'Basic Salary', 45000.00, 45000.00, 5000.00, 40000.00, 'earnings', 'March, 2024', '2023-10-25 13:53:11'),
(260, 'WY01', 'Other Deductions', 5000.00, 45000.00, 5000.00, 40000.00, 'deductions', 'March, 2024', '2023-10-25 13:53:11'),
(261, 'WY01', 'Basic Salary', 45000.00, 45000.00, 5000.00, 40000.00, 'earnings', 'July, 2024', '2023-10-25 15:33:48'),
(262, 'WY01', 'Other Deductions', 5000.00, 45000.00, 5000.00, 40000.00, 'deductions', 'July, 2024', '2023-10-25 15:33:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wy_admin`
--
ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

--
-- Indexes for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_employees`
--
ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_employees1`
--
ALTER TABLE `wy_employees1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `wy_leaves1`
--
ALTER TABLE `wy_leaves1`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);

--
-- Indexes for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);

--
-- Indexes for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wy_admin`
--
ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wy_employees`
--
ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wy_employees1`
--
ALTER TABLE `wy_employees1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wy_leaves1`
--
ALTER TABLE `wy_leaves1`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"survey_db\",\"table\":\"url_mapping\"},{\"db\":\"survey_db\",\"table\":\"masked_urls\"},{\"db\":\"survey_db\",\"table\":\"project_list\"},{\"db\":\"survey_db\",\"table\":\"vendor_list\"},{\"db\":\"payroll_mdb\",\"table\":\"wy_leaves1\"},{\"db\":\"payroll_mdb\",\"table\":\"wy_leaves\"},{\"db\":\"survey_db\",\"table\":\"vrf\"},{\"db\":\"survey_db\",\"table\":\"survey_set\"},{\"db\":\"survey_db\",\"table\":\"answers\"},{\"db\":\"survey_db\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'survey_db', 'url_mapping', '[]', '2024-01-10 10:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-01-16 05:05:58', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `survey_db`
--
CREATE DATABASE IF NOT EXISTS `survey_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `survey_db`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `survey_id`, `user_id`, `answer`, `question_id`, `date_created`) VALUES
(1, 1, 2, 'Sample Only', 4, '2020-11-10 14:46:07'),
(2, 1, 2, '[JNmhW],[zZpTE]', 2, '2020-11-10 14:46:07'),
(3, 1, 2, 'dAWTD', 1, '2020-11-10 14:46:07'),
(4, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. Aliquam id viverra nisl. Proin quis posuere nulla. Nullam suscipit eget leo ut suscipit.', 4, '2020-11-10 15:59:43'),
(5, 1, 3, '[qCMGO],[JNmhW]', 2, '2020-11-10 15:59:43'),
(6, 1, 3, 'esNuP', 1, '2020-11-10 15:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `masked_urls`
--

CREATE TABLE `masked_urls` (
  `id` int(11) NOT NULL,
  `person` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `live_link` varchar(255) NOT NULL,
  `test_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masked_urls`
--

INSERT INTO `masked_urls` (`id`, `person`, `country`, `live_link`, `test_url`) VALUES
(1, 'John', 'Albania', 'https://www.youtube.com/', ''),
(2, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(3, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(4, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(5, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(6, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(7, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(8, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(9, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(10, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(11, 'John', 'Afghanistan', 'https://www.youtube.com/', ''),
(12, 'John', 'Algeria', '', ''),
(13, 'Pavan', 'Iceland', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` bigint(11) NOT NULL,
  `Projectname` varchar(255) NOT NULL,
  `Country` text NOT NULL,
  `CostPerInterview` varchar(200) NOT NULL,
  `StartDate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `Projectname`, `Country`, `CostPerInterview`, `StartDate`) VALUES
(202312280001, '', 'Papua New Guinea (PG)', '4002', '12/28/2023'),
(202312280002, '', 'Cape Verde (CV)', '4003', '12/28/2023'),
(202312280003, '', 'Saint Lucia (LC)', '4004', '12/28/2023'),
(202312280004, '', 'Estonia (EE)', '555999', '12/28/2023'),
(202312280005, '', 'Netherlands (NL)', '778899', '12/28/2023'),
(202312280007, '', 'Botswana (BW)', '77889911', '12/28/2023'),
(202312290001, '', 'Saudi Arabia (SA)', '9909', '12/29/2023'),
(202312290002, 'pavan k ', 'Syria (SY)', '8099', '12/29/2023'),
(202401030001, 'TestProject1', 'Christmas Island (CX)', '2', '01/03/2024');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `frm_option` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `order_by` int(11) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `frm_option`, `type`, `order_by`, `survey_id`, `date_created`) VALUES
(1, 'Sample Survey Question using Radio Button', '{\"cKWLY\":\"Option 1\",\"esNuP\":\"Option 2\",\"dAWTD\":\"Option 3\",\"eZCpf\":\"Option 4\"}', 'radio_opt', 3, 1, '2020-11-10 12:04:46'),
(2, 'Question for Checkboxes', '{\"qCMGO\":\"Checkbox label 1\",\"JNmhW\":\"Checkbox label 2\",\"zZpTE\":\"Checkbox label 3\",\"dOeJi\":\"Checkbox label 4\"}', 'check_opt', 2, 1, '2020-11-10 12:25:13'),
(4, 'Sample question for the text field', '', 'textfield_s', 1, 1, '2020-11-10 13:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `survey_set`
--

CREATE TABLE `survey_set` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_set`
--

INSERT INTO `survey_set` (`id`, `title`, `description`, `user_id`, `start_date`, `end_date`, `date_created`) VALUES
(1, 'Sample Survey', 'Sample Only', 0, '2020-11-06', '2020-12-10', '2020-11-10 09:57:47'),
(2, 'Survey 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. ', 0, '2020-10-15', '2020-12-30', '2020-11-10 14:12:09'),
(3, 'Survey 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. ', 0, '2020-09-01', '2020-11-27', '2020-11-10 14:12:33'),
(4, 'Survey 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. ', 0, '2020-09-10', '2020-11-27', '2020-11-10 14:14:03'),
(5, 'Sample Survey 101', 'Sample only', 0, '2020-10-01', '2020-11-23', '2020-11-10 14:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `url_mapping`
--

CREATE TABLE `url_mapping` (
  `id` int(11) NOT NULL,
  `masked_url` varchar(255) NOT NULL,
  `original_live_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `url_mapping`
--

INSERT INTO `url_mapping` (`id`, `masked_url`, `original_live_link`) VALUES
(1, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(2, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(3, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(4, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(5, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(6, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(7, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(8, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(9, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(10, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(11, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(12, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(13, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(14, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(15, 'http://localhost/skib/?vid=&pid=&cnt=', ''),
(16, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Male,2 = Female, 3= Please Select Gender	',
  `Status` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=In-Active,2 = Active, 3= Please Select Status',
  `Created` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2 = Staff, 3= Subscriber',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `gender`, `Status`, `Created`, `email`, `password`, `type`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+123456789', 2, 3, '12/06/2023', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '2020-11-10 08:43:06'),
(2, 'John', 'Smith', 'D', '8747808787', 0, 3, '', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 3, '2020-11-10 09:16:53'),
(3, 'Claire', 'Blake', 'D', '+6948 8542 623', 0, 3, '', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 3, '2020-11-10 15:59:11'),
(4, 'Mike', 'Williams', 'G', '8747808787', 0, 3, '', 'mwilliams@sample.com', '3cc93e9a6741d8b40460457139cf8ced', 3, '2020-11-10 16:21:02'),
(5, 'pavan123', 'k', 'Datta', '456890', 3, 3, '12/18/2023', 'pavan@gmail.com', '68053af2923e00204c3ca7c6a3150cf7', 3, '2023-12-18 11:21:49'),
(10, 'hitman45', 's', 'h', '045', 2, 2, '12/19/2023', 'hitman@gmail.com', 'e44fea3bec53bcea3b7513ccef5857ac', 2, '2023-12-19 11:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_list`
--

CREATE TABLE `vendor_list` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Market` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '3=B2B,2=B2C,1=Health care',
  `Pt` varchar(200) NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `Vid` varchar(200) NOT NULL,
  `Complete` varchar(200) NOT NULL,
  `Terminate` varchar(200) NOT NULL,
  `Fq` varchar(200) NOT NULL,
  `St` varchar(200) NOT NULL,
  `Qr` varchar(200) NOT NULL,
  `Name1` varchar(200) NOT NULL,
  `email1` varchar(200) NOT NULL,
  `Contact1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_list`
--

INSERT INTO `vendor_list` (`id`, `firstname`, `middlename`, `lastname`, `email`, `Contact`, `Market`, `type`, `Pt`, `Remarks`, `file_path`, `Details`, `Vid`, `Complete`, `Terminate`, `Fq`, `St`, `Qr`, `Name1`, `email1`, `Contact1`) VALUES
(55, 'chaitra', 'c', 'k', 'chaitra@gmail.com', '2147483647', 'Samoa', 2, '90', 'ghjnmk', '', 'pavan', 'kj', 'ee', 'a', 'ww', 'ww', 'ds', 'sachin', 'sachin@gmail.com', '2147483647'),
(56, 'mohit', 'h', 'ki', 'vbghew@gmail.com', '2147483647', 'North Macedonia', 2, '89', 'awe', '', 'pavan', 'ww', 'aa', 'd', 'ww', 'ww', 'a', 'sachin', 'sachin@gmail.com', '2147483647'),
(85, 'hitman 90', 'h', 'B90', 'pavan@gmail.com', '9898989898', 'Palestine', 1, '167', 'zzz', '', '', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin', 'sachin@gmail.com', '77777777777'),
(86, 'Ms', 'v', 'd', 'mahi@gmail.com', '07', 'India', 2, '167', 'classs', '', 'pavan', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin', 'sachin@gmail.com', '77777777777'),
(92, 'rohit123', 'h', 'ki', 'admin@admin.com', '222', 'Samoa', 3, '1', 'hdj', '', 'b', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin', 'sachin@gmail.com', '98976789235'),
(93, 'raina ', 'h', 'l', 'vbghew@gmail.com', '222', 'Austria', 2, '22', 'azxcv', '', 'pavan', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '77777777777'),
(95, 'kl', 'r', 'k', 'vbghew@gmail.com', '01', 'North Macedonia', 1, '1', '1wea', '', 'pavan', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '77777777777'),
(96, 'warner', 'v', 'l', 'admin@admin.com', '222', 'Palestine', 1, '22', 'aszxfcv', '', 'qw', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '77777777777'),
(97, 'ricky', 'y', 'p', 'admin@admin.com', '12', 'Christmas Island', 1, '22', 'azxza', '', 'pavan', 'ww', 'aa', 'a', 'ww', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '77777777777'),
(110, 'chaitra', 'h', 'l', 'vbghew@gmail.com', '0101', 'Christmas Island', 2, '1212', 'gfgh', '', 'pavan', 'ww', 'aa', 'a', 'ww', 'ww', 'ds', 'sachin', 'sachin@gmail.com', '77777777777'),
(111, 'chaitra', 'h', 'k', 'admin@admin.com', '7898', 'Christmas Island', 3, '167', 'sew', '', 'pavan', 'aa', 'ee', 'aaaa', 'ww', 'ww', 'ds', 'sachin', 'sachin@gmail.com', '98976789235'),
(112, 'mrperfect', 'v', 'ki', 'survey@mailinator.com', '9898989898', 'Palestine', 2, '60days', 'fdert', '', 'pavan', 'sfd', 'aa', 'aaaa', 'yyyy', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '09'),
(113, 'ricky', 'v', 'd', 'hitman@gmail.com', '222', 'North Macedonia', 1, '1qwe', 'sdewr', '', 'pavan', 'aw', 'ee', 'a', 'ww', 'ww', 'a', 'sachin b', 'sachin@gmail.com', '09'),
(114, 'sakshi', 'd', 's', 'survey@mailinator.com', '897', 'Palestine', 2, '1qwe', 'hj', '', 'qw', 'kj', 's', 'sss', 's', 'sss', 'ss', 'sachin', 'sachin@gmail.com', '09'),
(115, 'nk ', 'h', 'B', 'survey@mailinator.com', '222', 'Christmas Island', 2, '90', 'sawe', '', 'pavan', 'ww', 's', 'a', 'ww', 'ww', 'ss', 'sachin', 'sachin@gmail.com', '77777777777'),
(116, 'monk', 'h', 'ki', 'hitman@gmail.com', '9898989898', 'Christmas Island', 2, '60days', 'dswer', '', 'pavan', 'aa', 'aa', 'a', 'ww', 'ww', 'yy', 'sachin b', 'sachin@gmail.com', '98976789235'),
(117, 'omr', 'h', 's', 'admin@admin.com', '9898989898', 'Christmas Island', 3, '1', '12', '', 'qw', 'ww', 'yyyy', 'sss', 'ww', 'ww', 'ss', 'sachin', 'sachin@gmail.com', '77777777777'),
(118, 'black n white ', 'h', 'd', 'hitman@gmail.com', '9898989898', 'Palestine', 2, '60days', 'swer', '', 'sdfg', 'ww', 'aa', 'a', 'ww', 'ww', 'yy', 'sachin b', 'sachin@gmail.com', '09'),
(119, 'joker', 'h', 'B', 'vbghew@gmail.com', '1234', 'Eritrea', 3, '22', 'awer', '', 'pavan', 'jokerrrrrrr', 'yyyy', 'a', 'ww', 'ww', 'ss', 'sachin', 'sachin@gmail.com', '77777777777');

-- --------------------------------------------------------

--
-- Table structure for table `vrf`
--

CREATE TABLE `vrf` (
  `id` int(11) NOT NULL,
  `vendorName` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vrf`
--

INSERT INTO `vrf` (`id`, `vendorName`, `file`) VALUES
(1, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(2, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(3, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(4, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(5, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(6, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(7, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(8, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(9, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(10, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(11, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(12, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(13, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(14, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(15, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(16, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(17, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(18, 'pavan', 'uploads/VendorRedirectsLinks.docx'),
(19, 'scf', 'uploads/RedirectsSample.docx'),
(20, 'pavan', 'uploads/VendorRedirectsLinks (1).docx'),
(21, 'sachin', 'uploads/VendorRedirectsLinks (1).docx'),
(22, 'sachin', 'uploads/VendorRedirectsLinks (2).docx'),
(23, 'riya', 'uploads/VendorRedirectsLinks (3).docx'),
(24, 'riya', 'uploads/VendorRedirectsLinks (3).docx'),
(25, 'mohit', 'uploads/Time Sheet Management Website Changes.docx'),
(26, 'mohit', 'uploads/Time Sheet Management Website Changes.docx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masked_urls`
--
ALTER TABLE `masked_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_set`
--
ALTER TABLE `survey_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_mapping`
--
ALTER TABLE `url_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrf`
--
ALTER TABLE `vrf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masked_urls`
--
ALTER TABLE `masked_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9223372036854775807;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `survey_set`
--
ALTER TABLE `survey_set`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `url_mapping`
--
ALTER TABLE `url_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_list`
--
ALTER TABLE `vendor_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `vrf`
--
ALTER TABLE `vrf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `virabwea_tool`
--
CREATE DATABASE IF NOT EXISTS `virabwea_tool` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `virabwea_tool`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Personal & Electronics', '1649607135924_Screenshot (1).png', 1, '2022-04-10 16:10:57', '2022-04-28 09:11:09'),
(7, 'Automotive', '1652085489915_sanjay.jpg', 1, '2022-05-09 08:38:09', '2022-05-09 08:38:09'),
(8, 'Business & Occupation', '1652085549309_sanjay.jpg', 1, '2022-05-09 08:39:09', '2022-05-09 08:39:09'),
(9, 'Country Specific', '1652085574539_sanjay.jpg', 1, '2022-05-09 08:39:34', '2022-05-09 08:39:34'),
(10, 'Education', '1652085590826_sanjay.jpg', 1, '2022-05-09 08:39:50', '2022-05-09 08:39:50'),
(11, 'Electronics', '1652085642348_sanjay.jpg', 1, '2022-05-09 08:40:42', '2022-05-09 08:40:42'),
(12, 'Ethinicity', '1652085666514_hr.jpg', 1, '2022-05-09 08:41:06', '2022-05-09 08:41:06'),
(13, 'Finance', '1652085686080_sanjay.jpg', 1, '2022-05-09 08:41:26', '2022-05-09 08:41:26'),
(14, 'Food & Beverage', '1652085716481_sanjay.jpg', 1, '2022-05-09 08:41:56', '2022-05-09 08:41:56'),
(15, 'Gaming', '1652085747408_hr.jpg', 1, '2022-05-09 08:42:27', '2022-05-09 08:42:27'),
(16, 'Healthcare Consumer', '1652085771558_sanjay.jpg', 1, '2022-05-09 08:42:51', '2022-05-09 08:42:51'),
(17, 'Hobbies & Interests', '1652085798088_sanjay.jpg', 1, '2022-05-09 08:43:18', '2022-05-09 08:43:18'),
(18, 'Household', '1652085822556_sanjay.jpg', 1, '2022-05-09 08:43:42', '2022-05-09 08:43:42'),
(19, 'Media', '1652085835946_sanjay.jpg', 1, '2022-05-09 08:43:55', '2022-05-09 08:43:55'),
(20, 'mobile', '1652085847949_sanjay.jpg', 1, '2022-05-09 08:44:07', '2022-05-09 08:44:07'),
(21, 'Mother & Baby', '1652085871389_hr.jpg', 1, '2022-05-09 08:44:31', '2022-05-09 08:44:31'),
(22, 'Region', '1652085884088_sanjay.jpg', 1, '2022-05-09 08:44:44', '2022-05-09 08:44:44'),
(23, 'Research', '1652085906051_hr.jpg', 1, '2022-05-09 08:45:06', '2022-05-09 08:45:06'),
(24, 'Smoking', '1652085923877_sanjay.jpg', 1, '2022-05-09 08:45:23', '2022-05-09 08:45:23'),
(25, 'Travel', '1652085937130_hr.jpg', 1, '2022-05-09 08:45:37', '2022-05-09 08:45:37'),
(4, 'Maths', '1652085489915_sanjay.jpg', 1, '2022-05-11 16:49:02', '2022-05-19 16:49:02'),
(5, 'Technology', '1652085489915_sanjay.jpg', 1, '2022-05-10 16:49:02', '2022-05-20 16:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`) VALUES
(1, 'ABW', 'Aruba', 'AW'),
(2, 'AFG', 'Afghanistan', 'AF'),
(3, 'AGO', 'Angola', 'AO'),
(4, 'AIA', 'Anguilla', 'AI'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'AND', 'Andorra', 'AD'),
(8, 'ARE', 'United Arab Emirates', 'AE'),
(9, 'ARG', 'Argentina', 'AR'),
(10, 'ARM', 'Armenia', 'AM'),
(11, 'ASM', 'American Samoa', 'AS'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATF', 'French Southern Territories', 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'AG'),
(15, 'AUS', 'Australia', 'AU'),
(16, 'AUT', 'Austria', 'AT'),
(17, 'AZE', 'Azerbaijan', 'AZ'),
(18, 'BDI', 'Burundi', 'BI'),
(19, 'BEL', 'Belgium', 'BE'),
(20, 'BEN', 'Benin', 'BJ'),
(21, 'BES', 'Bonaire', 'BQ'),
(22, 'BFA', 'Burkina Faso', 'BF'),
(23, 'BGD', 'Bangladesh', 'BD'),
(24, 'BGR', 'Bulgaria', 'BG'),
(25, 'BHR', 'Bahrain', 'BH'),
(26, 'BHS', 'Bahamas', 'BS'),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(28, 'BLM', 'Saint Barthélemy', 'BL'),
(29, 'BLR', 'Belarus', 'BY'),
(30, 'BLZ', 'Belize', 'BZ'),
(31, 'BMU', 'Bermuda', 'BM'),
(32, 'BOL', 'Bolivia', 'BO'),
(33, 'BRA', 'Brazil', 'BR'),
(34, 'BRB', 'Barbados', 'BB'),
(35, 'BRN', 'Brunei', 'BN'),
(36, 'BTN', 'Bhutan', 'BT'),
(37, 'BVT', 'Bouvet Island', 'BV'),
(38, 'BWA', 'Botswana', 'BW'),
(39, 'CAF', 'Central African Republic', 'CF'),
(40, 'CAN', 'Canada', 'CA'),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(42, 'CHE', 'Switzerland', 'CH'),
(43, 'CHL', 'Chile', 'CL'),
(44, 'CHN', 'China', 'CN'),
(45, 'CIV', 'Ivory Coast', 'CI'),
(46, 'CMR', 'Cameroon', 'CM'),
(47, 'COD', 'Democratic Republic of the Congo', 'CD'),
(48, 'COG', 'Republic of the Congo', 'CG'),
(49, 'COK', 'Cook Islands', 'CK'),
(50, 'COL', 'Colombia', 'CO'),
(51, 'COM', 'Comoros', 'KM'),
(52, 'CPV', 'Cape Verde', 'CV'),
(53, 'CRI', 'Costa Rica', 'CR'),
(54, 'CUB', 'Cuba', 'CU'),
(55, 'CUW', 'Curacao', 'CW'),
(56, 'CXR', 'Christmas Island', 'CX'),
(57, 'CYM', 'Cayman Islands', 'KY'),
(58, 'CYP', 'Cyprus', 'CY'),
(59, 'CZE', 'Czech Republic', 'CZ'),
(60, 'DEU', 'Germany', 'DE'),
(61, 'DJI', 'Djibouti', 'DJ'),
(62, 'DMA', 'Dominica', 'DM'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DOM', 'Dominican Republic', 'DO'),
(65, 'DZA', 'Algeria', 'DZ'),
(66, 'ECU', 'Ecuador', 'EC'),
(67, 'EGY', 'Egypt', 'EG'),
(68, 'ERI', 'Eritrea', 'ER'),
(69, 'ESH', 'Western Sahara', 'EH'),
(70, 'ESP', 'Spain', 'ES'),
(71, 'EST', 'Estonia', 'EE'),
(72, 'ETH', 'Ethiopia', 'ET'),
(73, 'FIN', 'Finland', 'FI'),
(74, 'FJI', 'Fiji', 'FJ'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRA', 'France', 'FR'),
(77, 'FRO', 'Faroe Islands', 'FO'),
(78, 'FSM', 'Micronesia', 'FM'),
(79, 'GAB', 'Gabon', 'GA'),
(80, 'GBR', 'United Kingdom', 'GB'),
(81, 'GEO', 'Georgia', 'GE'),
(82, 'GGY', 'Guernsey', 'GG'),
(83, 'GHA', 'Ghana', 'GH'),
(84, 'GIB', 'Gibraltar', 'GI'),
(85, 'GIN', 'Guinea', 'GN'),
(86, 'GLP', 'Guadeloupe', 'GP'),
(87, 'GMB', 'Gambia', 'GM'),
(88, 'GNB', 'Guinea-Bissau', 'GW'),
(89, 'GNQ', 'Equatorial Guinea', 'GQ'),
(90, 'GRC', 'Greece', 'GR'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GRL', 'Greenland', 'GL'),
(93, 'GTM', 'Guatemala', 'GT'),
(94, 'GUF', 'French Guiana', 'GF'),
(95, 'GUM', 'Guam', 'GU'),
(96, 'GUY', 'Guyana', 'GY'),
(97, 'HKG', 'Hong Kong', 'HK'),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(99, 'HND', 'Honduras', 'HN'),
(100, 'HRV', 'Croatia', 'HR'),
(101, 'HTI', 'Haiti', 'HT'),
(102, 'HUN', 'Hungary', 'HU'),
(103, 'IDN', 'Indonesia', 'ID'),
(104, 'IMN', 'Isle of Man', 'IM'),
(105, 'IND', 'India', 'IN'),
(106, 'IOT', 'British Indian Ocean Territory', 'IO'),
(107, 'IRL', 'Ireland', 'IE'),
(108, 'IRN', 'Iran', 'IR'),
(109, 'IRQ', 'Iraq', 'IQ'),
(110, 'ISL', 'Iceland', 'IS'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'JAM', 'Jamaica', 'JM'),
(114, 'JEY', 'Jersey', 'JE'),
(115, 'JOR', 'Jordan', 'JO'),
(116, 'JPN', 'Japan', 'JP'),
(117, 'KAZ', 'Kazakhstan', 'KZ'),
(118, 'KEN', 'Kenya', 'KE'),
(119, 'KGZ', 'Kyrgyzstan', 'KG'),
(120, 'KHM', 'Cambodia', 'KH'),
(121, 'KIR', 'Kiribati', 'KI'),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(123, 'KOR', 'South Korea', 'KR'),
(124, 'KWT', 'Kuwait', 'KW'),
(125, 'LAO', 'Laos', 'LA'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LBR', 'Liberia', 'LR'),
(128, 'LBY', 'Libya', 'LY'),
(129, 'LCA', 'Saint Lucia', 'LC'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LKA', 'Sri Lanka', 'LK'),
(132, 'LSO', 'Lesotho', 'LS'),
(133, 'LTU', 'Lithuania', 'LT'),
(134, 'LUX', 'Luxembourg', 'LU'),
(135, 'LVA', 'Latvia', 'LV'),
(136, 'MAC', 'Macao', 'MO'),
(137, 'MAF', 'Saint Martin', 'MF'),
(138, 'MAR', 'Morocco', 'MA'),
(139, 'MCO', 'Monaco', 'MC'),
(140, 'MDA', 'Moldova', 'MD'),
(141, 'MDG', 'Madagascar', 'MG'),
(142, 'MDV', 'Maldives', 'MV'),
(143, 'MEX', 'Mexico', 'MX'),
(144, 'MHL', 'Marshall Islands', 'MH'),
(145, 'MKD', 'Macedonia', 'MK'),
(146, 'MLI', 'Mali', 'ML'),
(147, 'MLT', 'Malta', 'MT'),
(148, 'MMR', 'Myanmar [Burma]', 'MM'),
(149, 'MNE', 'Montenegro', 'ME'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNP', 'Northern Mariana Islands', 'MP'),
(152, 'MOZ', 'Mozambique', 'MZ'),
(153, 'MRT', 'Mauritania', 'MR'),
(154, 'MSR', 'Montserrat', 'MS'),
(155, 'MTQ', 'Martinique', 'MQ'),
(156, 'MUS', 'Mauritius', 'MU'),
(157, 'MWI', 'Malawi', 'MW'),
(158, 'MYS', 'Malaysia', 'MY'),
(159, 'MYT', 'Mayotte', 'YT'),
(160, 'NAM', 'Namibia', 'NA'),
(161, 'NCL', 'New Caledonia', 'NC'),
(162, 'NER', 'Niger', 'NE'),
(163, 'NFK', 'Norfolk Island', 'NF'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIC', 'Nicaragua', 'NI'),
(166, 'NIU', 'Niue', 'NU'),
(167, 'NLD', 'Netherlands', 'NL'),
(168, 'NOR', 'Norway', 'NO'),
(169, 'NPL', 'Nepal', 'NP'),
(170, 'NRU', 'Nauru', 'NR'),
(171, 'NZL', 'New Zealand', 'NZ'),
(172, 'OMN', 'Oman', 'OM'),
(173, 'PAK', 'Pakistan', 'PK'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PCN', 'Pitcairn Islands', 'PN'),
(176, 'PER', 'Peru', 'PE'),
(177, 'PHL', 'Philippines', 'PH'),
(178, 'PLW', 'Palau', 'PW'),
(179, 'PNG', 'Papua New Guinea', 'PG'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRI', 'Puerto Rico', 'PR'),
(182, 'PRK', 'North Korea', 'KP'),
(183, 'PRT', 'Portugal', 'PT'),
(184, 'PRY', 'Paraguay', 'PY'),
(185, 'PSE', 'Palestine', 'PS'),
(186, 'PYF', 'French Polynesia', 'PF'),
(187, 'QAT', 'Qatar', 'QA'),
(188, 'REU', 'Réunion', 'RE'),
(189, 'ROU', 'Romania', 'RO'),
(190, 'RUS', 'Russia', 'RU'),
(191, 'RWA', 'Rwanda', 'RW'),
(192, 'SAU', 'Saudi Arabia', 'SA'),
(193, 'SDN', 'Sudan', 'SD'),
(194, 'SEN', 'Senegal', 'SN'),
(195, 'SGP', 'Singapore', 'SG'),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(197, 'SHN', 'Saint Helena', 'SH'),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(199, 'SLB', 'Solomon Islands', 'SB'),
(200, 'SLE', 'Sierra Leone', 'SL'),
(201, 'SLV', 'El Salvador', 'SV'),
(202, 'SMR', 'San Marino', 'SM'),
(203, 'SOM', 'Somalia', 'SO'),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(205, 'SRB', 'Serbia', 'RS'),
(206, 'SSD', 'South Sudan', 'SS'),
(207, 'STP', 'São Tomé and Príncipe', 'ST'),
(208, 'SUR', 'Suriname', 'SR'),
(209, 'SVK', 'Slovakia', 'SK'),
(210, 'SVN', 'Slovenia', 'SI'),
(211, 'SWE', 'Sweden', 'SE'),
(212, 'SWZ', 'Swaziland', 'SZ'),
(213, 'SXM', 'Sint Maarten', 'SX'),
(214, 'SYC', 'Seychelles', 'SC'),
(215, 'SYR', 'Syria', 'SY'),
(216, 'TCA', 'Turks and Caicos Islands', 'TC'),
(217, 'TCD', 'Chad', 'TD'),
(218, 'TGO', 'Togo', 'TG'),
(219, 'THA', 'Thailand', 'TH'),
(220, 'TJK', 'Tajikistan', 'TJ'),
(221, 'TKL', 'Tokelau', 'TK'),
(222, 'TKM', 'Turkmenistan', 'TM'),
(223, 'TLS', 'East Timor', 'TL'),
(224, 'TON', 'Tonga', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'TT'),
(226, 'TUN', 'Tunisia', 'TN'),
(227, 'TUR', 'Turkey', 'TR'),
(228, 'TUV', 'Tuvalu', 'TV'),
(229, 'TWN', 'Taiwan', 'TW'),
(230, 'TZA', 'Tanzania', 'TZ'),
(231, 'UGA', 'Uganda', 'UG'),
(232, 'UKR', 'Ukraine', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(234, 'URY', 'Uruguay', 'UY'),
(235, 'USA', 'United States', 'US'),
(236, 'UZB', 'Uzbekistan', 'UZ'),
(237, 'VAT', 'Vatican City', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(239, 'VEN', 'Venezuela', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'VI'),
(242, 'VNM', 'Vietnam', 'VN'),
(243, 'VUT', 'Vanuatu', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'WF'),
(245, 'WSM', 'Samoa', 'WS'),
(246, 'XKX', 'Kosovo', 'XK'),
(247, 'YEM', 'Yemen', 'YE'),
(248, 'ZAF', 'South Africa', 'ZA'),
(249, 'ZMB', 'Zambia', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `end_pages`
--

CREATE TABLE `end_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `end_pages`
--

INSERT INTO `end_pages` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'complete', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br /><br /><strong>Thank you for completing our survey. Your time and thoughtful responses are greatly appreciated.</strong> <br /><br />Your reward will be automatically credited your account. To check your account, log in <a href=\"[PANELISTLOGINURL]\" target=\"new\">here</a>. <br /><br />Also, remember to update your profile. The more information that you include, the greater the chance of matching an opportunity to suit your profile. <br /><br /><strong>Enjoying your survey experience with Cint? Let the team know by <a href=\"#\" target=\"_blank\" rel=\"noopener\">leaving us a review</a> on Trustpilot!</strong></p>', '2022-07-03 10:23:11', '2022-07-03 06:38:16'),
(2, 'quality_term', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br />We are sorry to inform you that you have not qualified for this survey. There are many reasons why people don\'t qualify, which include, but may not be limited to, not fitting the screening criteria, not providing quality responses or other reasons defined by our end client.</p>', '2022-07-03 10:23:11', '2022-07-03 05:37:32'),
(3, 'quota_full', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br /><br /><strong>Thank you for responding to our survey.</strong><br /><br />Unfortunately, we have already achieved enough responses for this specific target group. Please know your time and efforts are greatly appreciated. <br /><br />To check your account or update your personal information so that future surveys fit your interests better, log in <a href=\"[PANELISTLOGINURL]\" target=\"new\">here</a>.</p>', '2022-07-03 10:23:11', '2022-07-03 05:37:56'),
(4, 'terminate', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br />This survey is closed<br /><br />We apologise for any inconvenience this may have caused.</p>', '2022-07-03 10:23:11', '2022-07-03 05:36:48'),
(5, 'error', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br /><strong><br />Thank you for responding to our survey invitation!</strong> <br /><br />We are sorry you were not able to complete this survey. Unfortunately, you did not match the criteria required for this survey. Please know we appreciate your time and efforts and will soon send you another survey opportunity.<br /><br />To check your account or update your personal profile information to ensure a greater likelihood to qualify for future surveys, log in <a href=\"[PANELISTLOGINURL]\" target=\"new\">here</a>.</p>', '2022-07-03 10:23:11', '2022-07-03 05:34:39'),
(6, 'duplicate', '<p><img src=\"[PANELLOGO]\" alt=\"[PANELNAME]\" width=\"25%\" /><br /><br /><strong><br />Thank you for responding to our survey invitation!</strong> <br /><br />We are sorry you were not able to complete this survey. Unfortunately, you have already participate in this survey. Please know we appreciate your time and efforts and will soon send you another survey opportunity.', '2023-02-18 13:10:10', '2023-02-18 13:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(512) NOT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Survey invitation from [PANELNAME]', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" valign=\"top\">\r\n<table width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"10\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border: 1px solid #a5a3a3; border-radius: 10px 10px 10px 10px;\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"line-height: 12px; font-family: Myriad, Arial, Verdana; color: #a5a3a3; font-size: 10px; text-align: center;\">You\'re receiving this email because you are a member of [PANELNAME].</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size: 0pt; line-height: 0pt;\"><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"[PANELLOGO]\" alt=\"\" border=\"0\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center; font-family: Myriad, Arial, Verdana; color: #ffffff; font-size: 11px; font-weight: bold; border: 1px solid #f26822; border-radius: 5px 5px 5px 5px; background-color: #f26822;\" align=\"right\"><span style=\"font-size: medium;\">Survey invitation from [PANELNAME]</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size: 0pt; line-height: 0pt;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size: 0pt; line-height: 0pt;\" height=\"10\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-family: Myriad, Arial, Verdana; font-size: 14px; line-height: 17px; color: #000000; font-weight: bold; text-align: left; text-transform: none;\">Dear [PANELLIST],</td>\r\n<td style=\"font-size: 0pt; line-height: 0pt;\" align=\"right\" width=\"20\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left; font-family: Myriad, Arial, Verdana; font-size: 12px; color: #000000;\">\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p>Based on the information stored in your [PANELNAME] profile, we believe we have a survey that you will qualify and earn from.<br /><br />The survey takes approximately <strong>[LOI]</strong> minutes and if you successfully complete it, your account will be credited with <strong>[INCENTIVE].</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-family: Myriad, Arial, Verdana; font-size: 12px; color: #555555; border: 1px solid #f26822; border-radius: 5px 5px 5px 5px;\">\r\n<p style=\"font-size: 12px; text-align: center;\"><span style=\"font-size: medium;\"><br /><strong><a href=\"[SURVEYURL]\">Take Your Survey Now</a><br /><br /></strong><span style=\"font-size: x-small;\">Can\'t open the link? You can copy the link below into your browser <br />&nbsp;[SURVEYLINK]<br />Your participation is <strong>voluntary</strong>.<br /></span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-family: Myriad, Arial, Verdana; font-size: 12px; line-height: 17px; color: #000000; font-weight: normal; text-align: left; text-transform: none;\">\r\n<p><br /><span style=\"font-size: 12px;\">If you <strong>CANNOT</strong> participate in this survey we would appreciate it if you could decline participation in this survey by clicking on the following link:&nbsp;<a href=\"[DECLINEURL]\">Decline survey</a> <br /></span></p>\r\n<table style=\"height: 175px;\" width=\"580\">\r\n<tbody>\r\n<tr style=\"border-collapse: collapse;\">\r\n<td style=\"font-family: sans-serif; border-collapse: collapse; text-align: center; border-top: 3px solid #CCCCCC;\" colspan=\"2\" width=\"100%\" height=\"5\">\r\n<p><span style=\"font-size: 11px;\"><strong>Want to take this survey on your phone instead?</strong></span></p>\r\n<p><span style=\"font-size: 11px;\">Now you can!</span></p>\r\n<p><span style=\"font-size: 11px;\">Download OpinionAPP and get started. </span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"border-collapse: collapse;\">\r\n<td style=\"font-family: sans-serif; border-collapse: collapse; text-align: center;\">[OPINIONAPP_IOS]</td>\r\n<td style=\"font-family: sans-serif; border-collapse: collapse; text-align: center;\">[OPINIONAPP_ANDROID]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-family: Myriad, Arial, Verdana; font-size: 12px; line-height: 17px; color: #ffffff; font-weight: normal; text-align: left; text-transform: none; border: 1px solid #f26822; border-radius: 5px 5px 5px 5px; background-color: #f26822;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '2022-05-23 00:55:20', '2022-07-03 12:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2022_05_19_164125_create_mail_templates_table', 1),
(40, '2022_07_03_143740_create_end_pages_table', 1),
(42, '2022_06_16_164149_create_projects_table', 2),
(43, '2022_06_16_173023_create_survey_users_table', 2),
(44, '2022_07_14_180910_create_survey_test_users_table', 2),
(45, '2019_08_19_000000_create_failed_jobs_table', 3),
(46, '2022_11_01_180645_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT '0 = both, 1 = male, 2 = female',
  `min_age` tinyint(3) UNSIGNED DEFAULT NULL,
  `max_age` tinyint(3) UNSIGNED DEFAULT NULL,
  `question_option_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated ids',
  `live_pid` varchar(50) DEFAULT NULL,
  `test_pid` varchar(50) DEFAULT NULL,
  `wanted_complete` int(10) UNSIGNED DEFAULT NULL,
  `length_of_interview` smallint(5) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `incentive` decimal(8,2) NOT NULL,
  `live_link` varchar(1024) DEFAULT NULL,
  `test_link` varchar(1024) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `country_id`, `name`, `gender`, `min_age`, `max_age`, `question_option_ids`, `live_pid`, `test_pid`, `wanted_complete`, `length_of_interview`, `start_date`, `incentive`, `live_link`, `test_link`, `created_at`, `updated_at`) VALUES
(1, 105, 'TestProject1_13022023', 2, 18, 65, NULL, NULL, NULL, 1, 5, NULL, 2.00, 'https://virabhresearch.nebu.com/scripts/dubinterviewer.dll/Frames?Quest=10&PID=TestPr13022023', '', '2023-02-13 05:49:11', '2023-02-22 17:03:51'),
(2, 105, 'TestProject02_13022023', 0, 18, 65, NULL, NULL, NULL, 5, 5, NULL, 2.00, 'https://virabhresearch.nebu.com/scripts/dubinterviewer.dll/Frames?Quest=10', '', '2023-02-13 06:17:45', '2023-02-22 17:04:14'),
(3, 105, 'TestProject3_22022023', 0, 18, 65, NULL, NULL, NULL, 5, 5, '2023-02-22', 2.00, 'https://virabhresearch.nebu.com/scripts/dubinterviewer.dll/Frames?Quest=10000016', '', '2023-02-22 17:05:24', '2023-02-28 09:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = single, 2 multiple',
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer_type`, `status`, `created_at`, `updated_at`) VALUES
(4, 'what is your marital status?', 1, 1, '2022-04-17 15:59:53', '2022-04-28 09:13:50'),
(3, 'How many children under the age of 18 live in your household?', 1, 1, '2022-04-17 15:59:24', '2022-04-28 09:18:26'),
(5, 'Math question I', 2, 1, '2022-04-17 16:00:24', '2022-04-17 16:00:24'),
(6, 'Math question II', 2, 1, '2022-04-17 16:00:48', '2022-04-17 16:00:48'),
(7, 'Technology Question I', 1, 1, '2022-04-19 16:29:26', '2022-04-19 16:29:26'),
(8, 'Tech Question II', 2, 1, '2022-04-19 16:30:29', '2022-04-26 10:23:17'),
(9, 'If you have children, what gender?', 1, 1, '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(10, 'What pets/animals do you keep?', 1, 1, '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(11, 'What is your current household income?', 1, 1, '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(12, 'What is the education level of the chief income earner in the household?', 1, 1, '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(13, 'What is your highest level of education?', 1, 1, '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(14, 'What is your current occupational status?', 1, 1, '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(15, 'Which of the following categories best describes your organisations\'s primary industry:', 1, 1, '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(16, 'What is your primary role in your organisation?', 1, 1, '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(17, 'Do you use smartphone?', 1, 1, '2022-05-02 04:56:22', '2022-05-02 04:56:22'),
(18, 'Do you consider yourself the primary grocery shopper in your household?', 1, 1, '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(19, 'Do you have access to a car?', 2, 1, '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(32, '1.what is your marital status?', 2, 1, '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(33, 'How many children under the age of 18 live in your household?', 2, 1, '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(34, 'If you have children, what gender?', 2, 1, '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(35, 'What pets/animals do you keep?', 2, 1, '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(36, 'What is your current household income?', 2, 1, '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(37, 'What is the education level of the chief income earner in the household?', 2, 1, '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(38, 'What is your highest level of education?', 2, 1, '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(39, 'What is your current occupational status?', 1, 1, '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(40, 'Which of the following categories best describes your organisations\'s primary industry:', 2, 1, '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(21, 'How would you describe the car(s) you own/lease?', 2, 1, '2022-05-09 08:56:36', '2022-05-09 08:56:36'),
(22, 'Do you own a motorcycle?', 2, 1, '2022-05-09 08:57:02', '2022-05-09 08:57:02'),
(23, 'Are you the primary decision maker in your household for automotive-related purchases?', 2, 1, '2022-05-09 08:57:53', '2022-05-09 08:57:53'),
(24, 'What year was your main car (owned or leased) manufactured?', 2, 1, '2022-05-09 08:58:24', '2022-05-09 08:58:24'),
(25, 'In which year did you purchase/lease your main car?', 2, 1, '2022-05-09 08:59:07', '2022-05-09 08:59:07'),
(26, 'Which of the following categories best describes your organization\'s primary industry?', 2, 1, '2022-05-09 09:03:48', '2022-05-09 09:03:48'),
(27, 'Which department do you primarily work within at your organization? (Field of expertise)', 2, 1, '2022-05-09 09:04:28', '2022-05-09 09:04:28'),
(28, 'What is your professional position in the company you work for?', 2, 1, '2022-05-09 09:04:57', '2022-05-09 09:04:57'),
(29, 'India - Socio Economic Level', 2, 1, '2022-05-09 09:05:42', '2022-05-09 09:05:42'),
(30, 'India - Which groups of TV-channels do you watch in a normal week? (India only)', 2, 1, '2022-05-09 09:06:12', '2022-05-09 09:06:12'),
(31, 'What is/was your major at university/college?', 2, 1, '2022-05-09 09:07:38', '2022-05-09 09:07:38'),
(41, 'What is your primary role in your organisation?', 2, 1, '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(42, 'TestQuestion', 1, 1, '2022-12-28 14:03:17', '2022-12-28 14:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `question_categories`
--

CREATE TABLE `question_categories` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_categories`
--

INSERT INTO `question_categories` (`id`, `question_id`, `category_id`, `created_at`, `updated_at`) VALUES
(33, 3, 1, '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(32, 4, 1, '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(24, 5, 4, '2022-04-17 16:00:24', '2022-04-17 16:00:24'),
(25, 6, 4, '2022-04-17 16:00:48', '2022-04-17 16:00:48'),
(27, 7, 5, '2022-04-19 16:29:51', '2022-04-19 16:29:51'),
(31, 8, 5, '2022-04-26 10:23:17', '2022-04-26 10:23:17'),
(34, 9, 1, '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(35, 10, 1, '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(36, 11, 1, '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(37, 12, 1, '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(38, 13, 1, '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(39, 14, 1, '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(40, 15, 1, '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(41, 16, 1, '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(42, 17, 1, '2022-05-02 04:56:22', '2022-05-02 04:56:22'),
(43, 18, 1, '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(44, 19, 7, '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(57, 32, 1, '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(46, 21, 7, '2022-05-09 08:56:36', '2022-05-09 08:56:36'),
(47, 22, 7, '2022-05-09 08:57:02', '2022-05-09 08:57:02'),
(48, 23, 7, '2022-05-09 08:57:53', '2022-05-09 08:57:53'),
(49, 24, 7, '2022-05-09 08:58:24', '2022-05-09 08:58:24'),
(50, 25, 7, '2022-05-09 08:59:07', '2022-05-09 08:59:07'),
(51, 26, 8, '2022-05-09 09:03:48', '2022-05-09 09:03:48'),
(52, 27, 8, '2022-05-09 09:04:28', '2022-05-09 09:04:28'),
(53, 28, 8, '2022-05-09 09:04:57', '2022-05-09 09:04:57'),
(54, 29, 9, '2022-05-09 09:05:42', '2022-05-09 09:05:42'),
(55, 30, 9, '2022-05-09 09:06:12', '2022-05-09 09:06:12'),
(56, 31, 10, '2022-05-09 09:07:38', '2022-05-09 09:07:38'),
(58, 33, 1, '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(59, 34, 1, '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(60, 35, 1, '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(61, 36, 1, '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(62, 37, 1, '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(63, 38, 1, '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(64, 39, 1, '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(65, 40, 1, '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(66, 41, 1, '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(67, 42, 16, '2022-12-28 14:03:17', '2022-12-28 14:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question_option` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `question_option`, `created_at`, `updated_at`) VALUES
(33, 1, 'Option IV', '2022-04-17 07:52:44', '2022-04-17 07:52:44'),
(49, 2, 'Option IV', '2022-04-17 10:18:26', '2022-04-17 10:18:26'),
(48, 2, 'Option III', '2022-04-17 10:18:26', '2022-04-17 10:18:26'),
(47, 2, 'Option II', '2022-04-17 10:18:26', '2022-04-17 10:18:26'),
(46, 2, 'Option I', '2022-04-17 10:18:26', '2022-04-17 10:18:26'),
(32, 1, 'Option III', '2022-04-17 07:52:44', '2022-04-17 07:52:44'),
(31, 1, 'Option II', '2022-04-17 07:52:44', '2022-04-17 07:52:44'),
(30, 1, 'Option I', '2022-04-17 07:52:44', '2022-04-17 07:52:44'),
(83, 3, 'Two', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(82, 3, 'One', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(81, 3, 'None', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(75, 4, 'Married', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(74, 4, 'Single', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(55, 5, 'Option I', '2022-04-17 16:00:24', '2022-04-17 16:00:24'),
(56, 5, 'Option II', '2022-04-17 16:00:24', '2022-04-17 16:00:24'),
(57, 6, 'Option I', '2022-04-17 16:00:48', '2022-04-17 16:00:48'),
(58, 6, 'Option II', '2022-04-17 16:00:48', '2022-04-17 16:00:48'),
(64, 7, 'Tech Option III', '2022-04-19 16:29:51', '2022-04-19 16:29:51'),
(63, 7, 'Tech Option II', '2022-04-19 16:29:51', '2022-04-19 16:29:51'),
(62, 7, 'Tech option I', '2022-04-19 16:29:51', '2022-04-19 16:29:51'),
(65, 7, 'Tech Option IV', '2022-04-19 16:29:51', '2022-04-19 16:29:51'),
(73, 8, 'Tech option V', '2022-04-26 10:23:17', '2022-04-26 10:23:17'),
(72, 8, 'Tech option IV', '2022-04-26 10:23:17', '2022-04-26 10:23:17'),
(76, 4, 'Domestic Partnership/ Living w.partner', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(77, 4, 'Separated', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(78, 4, 'Divorced', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(79, 4, 'Widowed', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(80, 4, 'Prefer not to say', '2022-04-28 09:13:50', '2022-04-28 09:13:50'),
(84, 3, 'Three', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(85, 3, 'Four', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(86, 3, 'Four or more', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(87, 3, 'Prefer not to say', '2022-04-28 09:18:26', '2022-04-28 09:18:26'),
(88, 9, 'Boys', '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(89, 9, 'Girls', '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(90, 9, 'Both boy(s) and girl(s)', '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(91, 9, 'I don\'t have any children', '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(92, 9, 'Prefer not to say', '2022-04-28 09:20:09', '2022-04-28 09:20:09'),
(93, 10, 'I don\'t have pets', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(94, 10, 'Bird(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(95, 10, 'Cat(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(96, 10, 'Dog(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(97, 10, 'Fish', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(98, 10, 'Horse(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(99, 10, 'Reptile(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(100, 10, 'Other(s)', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(101, 10, 'Prefer not to say', '2022-05-02 03:53:56', '2022-05-02 03:53:56'),
(102, 11, 'Less than Rs. 1,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(103, 11, 'Rs.1,50,001 to Rs.3,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(104, 11, 'Rs.3,00,001 to Rs.5,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(105, 11, 'Rs.5,00,001 to Rs.10,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(106, 11, 'Rs.10,00,001 to Rs.15,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(107, 11, 'Rs.15,00,001 to Rs.25,00,000', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(108, 11, '50,00,000 + INR', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(109, 11, 'Prefer not to say', '2022-05-02 03:56:15', '2022-05-02 03:56:15'),
(110, 12, 'IIIiterate', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(111, 12, 'Literate but no formal schooling/ up to 4 years', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(112, 12, 'School 5 -9 years', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(113, 12, 'SSC/HSC', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(114, 12, 'Some college(inc a Diploma but not Grad)', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(115, 12, 'Graduate/Post Graduate: General', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(116, 12, 'Graduate/Post Graduate: Professional', '2022-05-02 03:58:44', '2022-05-02 03:58:44'),
(117, 13, 'IIIiterate', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(118, 13, 'Literate but no formal schooling/ up to 4 years', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(119, 13, 'School 5 -9 years', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(120, 13, 'SSC/HSC', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(121, 13, 'Some college(inc a Diploma but not Grad)', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(122, 13, 'Graduate/Post Graduate: General', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(123, 13, 'Graduate/Post Graduate: Professional', '2022-05-02 04:04:17', '2022-05-02 04:04:17'),
(124, 14, 'Studies', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(125, 14, 'Full-time work', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(126, 14, 'Part-time work', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(127, 14, 'Own business / Self-employed / Freelance', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(128, 14, 'Active military service', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(129, 14, 'Parental leave', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(130, 14, 'Retired', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(131, 14, 'Unemployed', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(132, 14, 'Homemaker', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(133, 14, 'Leave of absence', '2022-05-02 04:07:26', '2022-05-02 04:07:26'),
(134, 15, 'Accounting', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(135, 15, 'Advertising', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(136, 15, 'Agriculture', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(137, 15, 'Aviation', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(138, 15, 'Banking/Financial', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(139, 15, 'Information Technology/IT', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(140, 15, 'Insurance', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(141, 15, 'Law', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(142, 15, 'I don\'t work', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(143, 15, 'Prefer not to say', '2022-05-02 04:14:44', '2022-05-02 04:14:44'),
(144, 16, 'Forestry or fisher worker', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(145, 16, 'Health professional(doctor, nurse,pharmacist)', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(146, 16, 'Health service manager/director', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(147, 16, 'Hospitality,retail,other services mgr/director', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(148, 16, 'Laboratory professional', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(149, 16, 'Director', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(150, 16, 'CEO', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(151, 16, 'Business Administrator', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(152, 16, 'Prefer not to say', '2022-05-02 04:55:39', '2022-05-02 04:55:39'),
(153, 17, 'Yes', '2022-05-02 04:56:22', '2022-05-02 04:56:22'),
(154, 17, 'No', '2022-05-02 04:56:22', '2022-05-02 04:56:22'),
(155, 17, 'Prefer Not to say', '2022-05-02 04:56:22', '2022-05-02 04:56:22'),
(156, 18, 'Yes', '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(157, 18, 'No', '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(158, 18, 'I participate equally in grocery purchase decisions', '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(159, 18, 'Prefer not to say', '2022-05-02 04:57:25', '2022-05-02 04:57:25'),
(160, 19, 'I own a car/ cars', '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(161, 19, 'I lease/ have a company car', '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(162, 19, 'I have access to a car/cars', '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(163, 19, 'No, I don’t have access to a car/cars', '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(164, 19, 'Prefer not to say', '2022-05-09 08:54:22', '2022-05-09 08:54:22'),
(165, 20, 'Audi', '2022-05-09 08:55:44', '2022-05-09 08:55:44'),
(166, 20, 'Alfa Romeo', '2022-05-09 08:55:44', '2022-05-09 08:55:44'),
(167, 20, 'BMW', '2022-05-09 08:55:44', '2022-05-09 08:55:44'),
(168, 21, 'I don\'t own/lease a car', '2022-05-09 08:56:36', '2022-05-09 08:56:36'),
(169, 21, 'Micro/City Car (e.g. Smart Fortwo)', '2022-05-09 08:56:36', '2022-05-09 08:56:36'),
(170, 22, 'Yes', '2022-05-09 08:57:02', '2022-05-09 08:57:02'),
(171, 22, 'No', '2022-05-09 08:57:02', '2022-05-09 08:57:02'),
(172, 23, 'Yes', '2022-05-09 08:57:53', '2022-05-09 08:57:53'),
(173, 23, 'No', '2022-05-09 08:57:53', '2022-05-09 08:57:53'),
(174, 24, 'Pre-1980s', '2022-05-09 08:58:24', '2022-05-09 08:58:24'),
(175, 24, '1980s', '2022-05-09 08:58:24', '2022-05-09 08:58:24'),
(176, 25, '1980s', '2022-05-09 08:59:07', '2022-05-09 08:59:07'),
(177, 26, 'Education', '2022-05-09 09:03:48', '2022-05-09 09:03:48'),
(178, 27, 'Medical', '2022-05-09 09:04:28', '2022-05-09 09:04:28'),
(179, 28, 'Director/Manager', '2022-05-09 09:04:57', '2022-05-09 09:04:57'),
(180, 29, 'A1', '2022-05-09 09:05:42', '2022-05-09 09:05:42'),
(181, 30, 'Hindi Entertainment', '2022-05-09 09:06:12', '2022-05-09 09:06:12'),
(182, 31, 'I\'m not studying/haven\'t studied at univ./college', '2022-05-09 09:07:38', '2022-05-09 09:07:38'),
(183, 32, 'Single/Never married', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(184, 32, 'Engaged', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(185, 32, 'Married', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(186, 32, 'Domestic Partnership/ Living w.partner', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(187, 32, 'Separated', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(188, 32, 'Divorced', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(189, 32, 'Widowed', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(190, 32, 'Prefer not to say', '2022-05-10 08:52:30', '2022-05-10 08:52:30'),
(191, 33, 'None', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(192, 33, 'One', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(193, 33, 'Two', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(194, 33, 'Three', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(195, 33, 'Four or more', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(196, 33, 'Prefer not to say', '2022-05-10 08:53:39', '2022-05-10 08:53:39'),
(197, 34, 'Boys(s)', '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(198, 34, 'Girls(s)', '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(199, 34, 'Both boy(s) and girl(s)', '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(200, 34, 'I don\'t have any children', '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(201, 34, 'Prefer not to say', '2022-05-10 08:55:00', '2022-05-10 08:55:00'),
(202, 35, 'I don\'t have pets', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(203, 35, 'Bird(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(204, 35, 'Cat(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(205, 35, 'Dog(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(206, 35, 'Fish', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(207, 35, 'Horse(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(208, 35, 'Reptile(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(209, 35, 'Other(s)', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(210, 35, 'Prefer not to say', '2022-05-10 08:57:39', '2022-05-10 08:57:39'),
(211, 36, 'Less than Rs. 1,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(212, 36, 'Rs.1,50,001 to Rs.3,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(213, 36, 'Rs.3,00,001 to Rs.5,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(214, 36, 'Rs.5,00,001 to Rs.10,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(215, 36, 'Rs.10,00,001 to Rs.15,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(216, 36, 'Rs.15,00,001 to Rs.25,00,000', '2022-05-10 08:58:41', '2022-05-10 08:58:41'),
(217, 37, 'IIIiterate', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(218, 37, 'Literate but no formal schooling/ up to 4 years', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(219, 37, 'School 5 -9 years', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(220, 37, 'SSC/HSC', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(221, 37, 'Some college(inc a Diploma but not Grad)', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(222, 37, 'Graduate/Post Graduate: General', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(223, 37, 'Graduate/Post Graduate: Professional', '2022-05-10 09:00:10', '2022-05-10 09:00:10'),
(224, 38, 'IIIiterate', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(225, 38, 'Literate but no formal schooling/ up to 4 years', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(226, 38, 'School 5 -9 years', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(227, 38, 'School 5 -9 years', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(228, 38, 'Some college(inc a Diploma but not Grad)', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(229, 38, 'Graduate/Post Graduate: General', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(230, 38, 'Graduate/Post Graduate: Professional', '2022-05-10 09:03:30', '2022-05-10 09:03:30'),
(231, 39, 'Studies', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(232, 39, 'Full-time work', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(233, 39, 'Part-time work', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(234, 39, 'Own business / Self-employed / Freelance', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(235, 39, 'Active military service', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(236, 39, 'Parental leave', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(237, 39, 'Retired', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(238, 39, 'Unemployed', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(239, 39, 'Homemaker', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(240, 39, 'Leave of absence', '2022-05-10 09:05:51', '2022-05-10 09:05:51'),
(241, 40, 'Accounting', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(242, 40, 'Advertising', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(243, 40, 'Agriculture/Fishing', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(244, 40, 'Agriculture', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(245, 40, 'Automative', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(246, 40, 'Aviation', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(247, 40, 'Banking/Financial', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(248, 40, 'Bio-Tech', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(249, 40, 'Brokerage', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(250, 40, 'Carpentry/Electrical installations/Plumbing', '2022-05-10 09:08:35', '2022-05-10 09:08:35'),
(251, 41, 'Forestry or fisher worker', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(252, 41, 'Health professional(doctor, nurse,pharmacist)', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(253, 41, 'Health service manager/director', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(254, 41, 'Hospitality,retail,other services mgr/director', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(255, 41, 'Laboratory professional', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(256, 41, 'Legal professional(attorney,paralegal,lawyer)', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(257, 41, 'Personal care/protective service worker', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(258, 41, 'President/CEO/Chairperson', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(259, 41, 'Salesperson(eg. shop,marketsalesperson)', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(260, 41, 'Social and cultural professional', '2022-05-10 09:10:12', '2022-05-10 09:10:12'),
(261, 42, 'Neurologist', '2022-12-28 14:03:17', '2022-12-28 14:03:17'),
(262, 42, 'Epilepsy specialist', '2022-12-28 14:03:17', '2022-12-28 14:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL,
  `finalcost` int(11) NOT NULL,
  `studystatus` varchar(255) NOT NULL,
  `completes` varchar(255) NOT NULL,
  `devicecompatibility` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `projectid` int(100) NOT NULL,
  `cpi` varchar(100) NOT NULL,
  `ir` varchar(100) NOT NULL,
  `surveylink` varchar(100) NOT NULL,
  `surveytopic` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `loi` varchar(100) NOT NULL,
  `rewards` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `finalworkdays` int(11) NOT NULL,
  `webcam` varchar(11) NOT NULL,
  `pii` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `finalcost`, `studystatus`, `completes`, `devicecompatibility`, `projectname`, `projectid`, `cpi`, `ir`, `surveylink`, `surveytopic`, `created_at`, `updated_at`, `loi`, `rewards`, `country`, `language`, `finalworkdays`, `webcam`, `pii`) VALUES
(7, 0, 'Pause', 'Achieved', 'desktop,mobile', '7u6', 0, 'dgfdg', 'dfgd', 'live', '', '2022-04-26 13:14:06', '2022-04-26 13:14:06', 'dfg', 'dfg', 'dfg', 'dfg', 0, 'yes', 0),
(8, 11, 'Live', 'Achieved', 'desktop,mobile', 'name', 1, '10', '11', 'test', '', '2022-04-29 12:03:53', '2022-04-29 12:03:53', '11', '11', 'india', 'english', 0, 'yes', 0),
(9, 11, 'Live', 'Target Sample', 'desktop', 'name', 123, '5+', '12', 'test', '', '2022-04-29 12:05:12', '2022-04-29 12:05:12', '55', '56', 'india', 'english', 0, 'yes', 0),
(10, 11, 'Live', 'Target Sample', 'desktop', 'name', 123, '5+', '12', 'test', '', '2022-04-29 12:06:12', '2022-04-29 12:06:34', '55', '56', 'india', 'english', 1, 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `survey_test_users`
--

CREATE TABLE `survey_test_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `respondent_id` bigint(20) UNSIGNED NOT NULL,
  `test_pid` varchar(50) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('','C','QT','QF','T','E','D') NOT NULL,
  `start_survey_at` timestamp NULL DEFAULT NULL,
  `end_survey_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `browser_device` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_users`
--

CREATE TABLE `survey_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `respondent_id` bigint(20) UNSIGNED NOT NULL,
  `live_pid` varchar(50) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('','C','QT','QF','T','E','D') NOT NULL,
  `start_survey_at` timestamp NULL DEFAULT NULL,
  `end_survey_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `browser_device` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_users`
--

INSERT INTO `survey_users` (`id`, `user_id`, `respondent_id`, `live_pid`, `project_id`, `status`, `start_survey_at`, `end_survey_at`, `ip_address`, `device_type`, `browser_device`, `created_at`, `updated_at`) VALUES
(1, 36, 301893823, NULL, 1, '', '2023-02-13 06:10:57', NULL, '122.172.86.6', 'Desktop', 'Chrome', '2023-02-13 05:49:35', '2023-02-13 06:10:57'),
(2, 26, 902398255, NULL, 1, 'C', '2023-02-13 06:15:52', '2023-02-13 06:16:12', '122.172.86.6', 'Desktop', 'Chrome', '2023-02-13 05:49:35', '2023-02-13 06:16:12'),
(3, 46, 449728406, NULL, 1, '', '2023-02-13 05:53:18', NULL, '122.172.86.6', 'Desktop', 'Chrome', '2023-02-13 05:49:35', '2023-02-13 05:53:18'),
(4, 36, 820350413, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:17:53', '2023-02-13 06:17:53'),
(5, 26, 507211308, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:17:53', '2023-02-13 06:17:53'),
(6, 46, 706007323, NULL, 2, 'C', '2023-02-13 06:18:32', '2023-02-13 06:18:54', '122.172.86.6', 'Desktop', 'Chrome', '2023-02-13 06:17:53', '2023-02-13 06:18:54'),
(7, 50, 106669201, NULL, 2, 'C', '2023-02-13 09:31:18', '2023-02-13 09:31:36', '157.50.21.198', 'Desktop', 'Chrome', '2023-02-13 06:28:54', '2023-02-13 09:31:36'),
(8, 33, 498969659, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54'),
(9, 30, 259780532, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54'),
(10, 32, 855217667, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54'),
(11, 42, 974107858, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54'),
(12, 52, 183063363, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54'),
(13, 53, 211456626, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, '2023-02-13 06:28:54', '2023-02-13 06:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`) VALUES
(1, 'Automotive'),
(2, 'Beverages - Alcoholic'),
(3, 'Beverages - Non Alcoholic'),
(4, 'Business'),
(5, 'Children & Parenting'),
(6, 'Coalition/Loyalty Programs'),
(7, 'Destinations & Tourism'),
(8, 'Education'),
(9, 'Electronics/Computer/Software'),
(10, 'Entertainment & Leisure'),
(11, 'Fashion & Clothing - Other'),
(12, 'Finance, Banking, Investing & Insurance'),
(13, 'Food'),
(14, 'Gambling/Lottery'),
(15, 'Government & Politics'),
(16, 'Healthcare'),
(17, 'Home'),
(18, 'Media & Publishing'),
(19, '\r\nPersonal Care (Toiletries, Beauty, Cosmetics)'),
(20, 'Restaurants'),
(21, 'Sensitive/Explicit Content'),
(22, 'Smoking/Tobacco'),
(23, 'Social Research'),
(24, 'Sports, Recreation, Fitness'),
(25, 'Telecommunications'),
(26, 'Transportation'),
(27, 'Travel - Airlines'),
(28, 'Travel - Hotels'),
(29, 'Travel Services/Agency/Booking'),
(30, 'Credit Cards'),
(31, 'Fashion & Clothing - Department Store');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT 0 COMMENT '1 = male , 2 = female',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `email`, `role_id`, `image`, `password`, `postal_code`, `dob`, `gender`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `country`) VALUES
(1, 'admin', NULL, NULL, 'survey@mailinator.com', 1, NULL, '$2y$10$WqvtD98lyhPSPEjIc7ShxOfipcMRP0HI3cfVOqZgo2AqzdRDf7rfu', NULL, NULL, 0, 1, NULL, NULL, NULL, '', '105'),
(31, 'new user', 'jaipur', NULL, 'lalitha.nagaral+3@virabh.in', 2, NULL, '$2y$10$lGPvXibvLP/8NKH5CEZfKO6gnr35.tHlRgtHetT83yaFu6Vbi/Bx2', '98988', NULL, 1, 1, '2022-04-17 22:36:00', '2022-04-17 22:36:00', NULL, '', '105'),
(37, 'Basavaraj Hurakadli', '', NULL, 'basavaraj.hurakadli@virabh.in', 1, NULL, '$2y$10$WqvtD98lyhPSPEjIc7ShxOfipcMRP0HI3cfVOqZgo2AqzdRDf7rfu', '', NULL, 0, 1, '2022-04-21 07:03:11', '2022-04-21 07:03:11', NULL, '', '105'),
(50, 'Vishal k', 'Rajajinagar', NULL, 'vishalagasagi44@gmail.com', 2, NULL, '$2y$10$NqDcfgoE3ThBxBKHMlJU2e.fd/46.H3tclItDe7W095lmrAvoYule', '560010', '1989-07-02', 1, 1, '2022-05-06 05:00:09', '2022-05-06 05:00:27', NULL, 'Bangalore', '105'),
(36, 'Ishwar 2222', 'jaipur', '9876543210', 'ishwar.patil+2@virabh.in', 2, NULL, '$2y$10$h3b2seY8DAt6p21pdP8Y1.5h3jUi7emvtYflBKCpHIMtmzb/oSatq', '303030', '2002-04-21', 2, 1, '2022-04-21 06:12:49', '2022-04-21 06:12:49', NULL, '', '105'),
(33, 'new server user', 'jaipur', NULL, 'lalitha.nagaral+5@virabh.in', 2, NULL, '$2y$10$EYIjl31rgeRfd.OSdv7SzesGVzAgB/vZ2yNvmM1N5YDj.SGHzexqS', '98988', '2001-04-05', 1, 1, '2022-04-19 16:31:23', '2022-04-19 16:31:23', NULL, '', '105'),
(30, 'Lalitha 222', 'jaipur', NULL, 'lalitha.nagaral+1@virabh.in', 2, NULL, '$2y$10$hbwcKj4.7iSiXiCjWLXBBuZa4wuWqnFbBw2VmAwTFATL8reHK7Lca', '98988', '2000-04-15', 1, 0, '2022-04-16 11:51:53', '2022-04-17 02:05:20', NULL, '', '105'),
(25, 'Sammod Wadappi', 'jaipr', '9898', 'sammod.wadappi@virabh.in', 2, '1633540026584_blog-single-image-1.jpg', '$2y$10$/yL43j.uExlUYuHPAhEOjuNqjsP3Bn2sIa32LnQVcYJbDuY14whmW', '98988', '1950-04-09', 1, 1, '2021-10-06 11:37:06', '2022-04-10 06:41:36', NULL, '', '105'),
(26, 'AK', 'jaipur', NULL, 'ak@virabh.in', 2, NULL, '$2y$10$8TQeQ8gOQd60FpWmYs/hje6efaCH0t7cFr93IiCqIOc1wTY.9mhy2', '98988', '1961-04-09', 2, 1, '2022-04-10 05:13:44', '2022-04-10 06:32:14', NULL, '', '105'),
(32, 'server test user', 'jaipur', NULL, 'lalitha.nagaral+4@virabh.in', 2, NULL, '$2y$10$sRx3RQjvSBZTbcos5wYSNOosTQ2YP2NQNmfzYm6059kSW5SS4Hcxy', '98988', '1988-04-06', 1, 1, '2022-04-19 16:20:00', '2022-04-19 16:46:13', NULL, '', '105'),
(38, 'aaa', 'jaipur', NULL, 'bhalgama.mayur@gmail.com', 1, NULL, '$2y$10$2BBvWqmJ7aYsTNJ4pnynmORW1C5RfsSEMrXdl9GHDcO.l0uVU8Sgq', '98988', NULL, 1, 1, '2022-04-21 15:54:26', '2022-04-21 15:55:26', NULL, '', '105'),
(39, 'Ishwar 3333', 'jaipur', NULL, 'ishwar.patil3@virabh.in', 2, NULL, '$2y$10$3QvADwJcgQsh83ILimhZYOgxPFyxYUoRVXNdr6Jpc0EkVAzN45/qG', '', NULL, 1, 1, '2022-04-21 15:55:53', '2022-04-21 16:01:13', NULL, '', '105'),
(42, 'bhawana gupta', 'jaipur', NULL, 'ishwar.patil4@virabh.in', 2, NULL, '$2y$10$kE05ho1xFZkb.qjy.S1H..UnmcC3iTl6AtV0v6aFjMFcbz6pk8zFC', '301427', '1975-04-07', 1, 0, '2022-04-26 09:17:52', '2022-04-26 09:17:52', NULL, 'jaipur', '105'),
(43, 'bhawana gupta', 'jpr', NULL, 'mayur.bhalgama@gmail.com', 2, NULL, '$2y$10$tTB26pytoN7Ybh0oTU0QDeJ83NxqKzywvQehHF3huX8EiB/UvilQK', '301427', '1946-04-20', 2, 0, '2022-04-26 12:32:32', '2022-04-26 12:32:32', NULL, 'jpr', '105'),
(44, 'name', 'banglore', NULL, 'bhalgama.mayur+2@gmail.com', 2, NULL, '$2y$10$MqnLnPS9hcfJZ9AbEOrXque4PJ5GzmvcTIXQE8TepvKmLb1eYXC6i', '', NULL, 0, 0, '2022-04-26 12:33:29', '2022-04-26 12:33:29', NULL, '', '105'),
(45, 'hu', 'banglore', NULL, 'bhalgama.mayur+3@gmail.com', 2, NULL, '$2y$10$NCd5Cdus5VRXKtL5LLwxxOReHB/V06H5GETYLk8sGs2AzxKZi4rFa', '', NULL, 2, 0, '2022-04-26 12:40:07', '2022-04-26 12:40:07', NULL, '', '105'),
(46, 'Sammod', 'banglore', NULL, 'sammod.wadappi+2@virabh.in', 2, NULL, '$2y$10$iwnP/UevmjXEQ.NKuffjJeHReSX1lTr1DWdQeqDHqMK7uBFC1JLk.', '', '1993-04-12', 2, 0, '2022-04-26 12:45:33', '2022-05-05 05:32:13', NULL, '54', '105'),
(47, 'Sammod 3333', 'banglore', NULL, 'sammod.wadappi+3@virabh.in', 2, NULL, '$2y$10$gXUL.8Gftv.ByQEWqY37EOnMUI.aLxF67mPpFFSSC/sFuYRz57Gae', '301427', '2022-05-01', 2, 1, '2022-05-05 05:03:54', '2022-05-05 05:32:26', NULL, 'sdfds', '235'),
(48, 'Basavaraj 2222', 'banglore', NULL, 'basavaraj.hurakadli+2@virabh.in', 2, NULL, '$2y$10$7EMW1s2no5cmqi0ohA5VUe8R.DVkdCnrIYpeLCupOEezxGzSmL.8m', '301427', '2022-05-01', 2, 1, '2022-05-05 05:27:59', '2022-05-05 05:31:49', NULL, '', '235'),
(49, 'AK 2222', 'bombay', NULL, 'ak+2@virabh.in', 2, NULL, '$2y$10$uTS2/q73P32l.PAv56Q.delVvChx4MdSyvA4l6lLO/9fxKd2Ny5/G', '301427', '1937-05-02', 2, 0, '2022-05-05 10:00:38', '2022-05-05 10:00:38', NULL, 'sdfds', '105'),
(52, 'Lalitha Nagara', 'banglore', NULL, 'lalitha.nagaral@virabh.in', 1, NULL, '$2y$10$4Rzcp2W9mozSZ2iKahjgKeFpfEN6nm8vA5QQBVbkWvuPNp6m6GwKS', '360003', '1984-05-11', 1, 1, '2022-05-28 21:53:57', '2022-05-28 21:55:00', NULL, 'Rajkot', '105'),
(53, 'Ishwar Patil', 'banglore', NULL, 'ishwar.patil@virabh.in', 1, NULL, '$2y$10$J/EvLn6MWwbKMadLWXaL6uzp7vsZkJz3iY/097WBxk7HueM76Yyp.', '360005', '1985-02-02', 1, 1, '2022-06-20 11:32:57', '2022-06-20 11:37:20', NULL, 'Rajkot', '105'),
(54, 'Brian Cushman', '2155 E Old West Highway', NULL, 'brianc477@gmail.com', 2, NULL, '$2y$10$Y7GcXHpd1RdFrIgda5CjC.wI1Dot/Tr.FC7ppo0Uo6ehyqKIx84tq', '85119', '1974-06-10', 1, 0, '2023-03-14 11:24:05', '2023-03-14 11:24:05', NULL, 'Apache Junction', '235'),
(55, 'Brian Cushman', '2155 E Old West Highway', NULL, 'brianleecushman@gmail.com', 2, NULL, '$2y$10$F2m1boOzqXlLVlIAGpkLXu7e7nL3zyPYEfRaN3i1NxM94gwUZiYTK', '85119', '1974-06-10', 1, 0, '2023-03-14 11:24:55', '2023-03-14 11:24:55', NULL, 'Apache Junction', '0'),
(56, 'Brian Cushman', '2155 E Old West Highway', NULL, 'luvmyshelby75@gmail.com', 2, NULL, '$2y$10$V/TWCjGXP8klTbl8GE4xbulOI6RSofWBZctopJXVUqTaEB1oeg0NC', '85119', '1974-06-10', 1, 0, '2023-03-14 11:26:10', '2023-03-14 11:26:10', NULL, 'Apache Junction', '235'),
(57, 'Brian', '2155 E Old West Highway', NULL, 'offerupthisone@gmail.com', 2, NULL, '$2y$10$55IndUs2dBNAJjHuFF5dnO58TtY9IsGP2P93.eaZjTcOUtzkTr4Ym', '85119', '1974-06-10', 1, 1, '2023-03-14 11:29:35', '2023-03-14 11:30:19', NULL, 'Apache Junction', '235'),
(58, 'Leonard', '', NULL, 'oliveira386@icloud.com', 2, NULL, '$2y$10$dS65dkGOdvBIyHqEch8kd.kTEiqSeGbS96R5q37Y6BPSAiVGicD4C', '37769', '1981-02-16', 1, 1, '2023-03-14 11:30:30', '2023-03-14 11:32:15', NULL, 'Rocky Top', '235'),
(59, 'Daniel Greer', '610 Sawyer', NULL, 'danielboone703@gmail.com', 2, NULL, '$2y$10$sCJ2Bu7ZCWThIXsPCJkh5.Carmbfo8UBfs.491N7fq/UBqou4ARri', '28693', '1985-07-29', 1, 0, '2023-03-15 20:05:08', '2023-03-15 20:05:08', NULL, 'Warrensville', '235'),
(60, 'Julia House', '2315 Omaha Drive', NULL, 'housejulia24@gmail.com', 2, NULL, '$2y$10$ymOx/c/0WGLKcJaOyN8XaeLveZrsS8/hUGWQzysX9y3XfXRJ0RfJG', '35217', '1983-08-21', 2, 0, '2023-03-16 18:33:46', '2023-03-16 18:33:46', NULL, 'Birmingham', '235'),
(61, 'Mary Bordeau', '568 Lynn Jarvis Rd', NULL, 'bradybordeau@gmail.com', 2, NULL, '$2y$10$yv4wIYzJXL3ZyS83GQnQ6ufoaMevXViyKoU.KP3KcaCF3OrX0wuLu', '36303', '1974-11-19', 2, 0, '2023-03-16 18:34:26', '2023-03-16 18:34:26', NULL, 'Kinsey', '235'),
(62, 'Joel Paris Flagg', '1138 State St', NULL, 'drparisflagg@outlook.com', 2, NULL, '$2y$10$4mCnkJHbOyuMmI3/EmHzveCsirnA9y7LPQHcnqoCxWHP3w.Re0JS.', '52722', '1966-11-20', 1, 0, '2023-03-18 01:57:26', '2023-03-18 01:57:26', NULL, 'Bettendorf', '235'),
(63, 'Marie Bell', '7611 Jalna St Apt 6', NULL, 'babygirl4720111991@yahoo.com', 2, NULL, '$2y$10$5jnwmNN9ogHyKQqKCQUdQug7ZtYSR.TX7G5hfBBl7dq2UWPdrVEVq', '77055', '1991-10-21', 2, 0, '2023-03-19 01:28:05', '2023-03-19 01:28:05', NULL, 'Houston', '235'),
(64, 'Jeffrey Thomas', '5831 Barley Str', NULL, 'saint0657@gmail.com', 2, NULL, '$2y$10$JC0bsaoO.tgehub3SwubCOiZlfi0lO/V8WdhqVTgBvj3tdOg/oN26', '77494', '1983-03-27', 1, 1, '2023-03-19 05:43:19', '2023-03-19 20:25:06', NULL, 'Katy', '235'),
(65, 'Dustin Hobby', '1100 Kirkwood Avenue', NULL, 'bornvillain216@gmail.com', 2, NULL, '$2y$10$adCcIpWVtBlHcfLAiDCo8ejvcTMowg.cdh8gQPnZYjDxUazsWJVW.', '50316', '1983-02-16', 1, 1, '2023-03-19 09:17:47', '2023-03-19 20:30:05', NULL, 'Des Moines', '235'),
(66, 'Adam Straughn', '89388 Shore Crest Drive', NULL, 'adamstraughn@gmx.us', 2, NULL, '$2y$10$wOcsTuWja1vX.qQC5INbSucMwz3Tic0SY2OphsDpYcOSV7B52Hm/G', '97439', '1987-04-22', 1, 1, '2023-03-19 20:10:40', '2023-03-19 20:11:01', NULL, 'Florence', '235'),
(67, 'Melissa', '13535 sralla rd trlr 50', NULL, 'melannsan5@icloud.com', 2, NULL, '$2y$10$o0oy/YbW8wNsUSX4dSbvAede82tLLIC9B3SE5F03RUlylUqTrnTMC', '77532', '1983-10-12', 2, 0, '2023-03-20 14:32:32', '2023-03-20 14:32:32', NULL, 'Crosby', '235');

-- --------------------------------------------------------

--
-- Table structure for table `user_questions`
--

CREATE TABLE `user_questions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question_option_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_questions`
--

INSERT INTO `user_questions` (`id`, `user_id`, `category_id`, `question_id`, `question_option_id`, `created_at`, `updated_at`) VALUES
(43, 31, 1, 3, 51, '2022-04-19 16:36:34', '2022-04-19 16:36:34'),
(44, 31, 5, 7, 63, '2022-04-19 16:36:54', '2022-04-19 16:36:54'),
(45, 31, 5, 8, 67, '2022-04-19 16:37:02', '2022-04-19 16:37:02'),
(46, 31, 4, 6, 57, '2022-04-19 16:37:16', '2022-04-19 16:37:16'),
(47, 33, 5, 7, 62, '2022-04-19 16:38:06', '2022-04-19 16:38:06'),
(48, 34, 1, 3, 82, '2022-04-20 04:39:42', '2022-04-20 04:39:42'),
(49, 34, 1, 4, 53, '2022-04-20 04:39:54', '2022-04-20 04:39:54'),
(50, 35, 4, 5, 55, '2022-04-20 05:55:31', '2022-04-20 05:55:31'),
(51, 35, 4, 6, 58, '2022-04-20 05:55:40', '2022-04-20 05:55:40'),
(52, 32, 4, 5, 55, '2022-04-20 10:28:50', '2022-04-20 10:28:50'),
(53, 32, 4, 6, 58, '2022-04-20 10:29:10', '2022-04-20 10:29:10'),
(54, 36, 1, 3, 81, '2022-04-21 06:13:13', '2022-04-21 06:13:13'),
(55, 36, 4, 5, 55, '2022-04-21 08:33:11', '2022-04-21 08:33:11'),
(56, 36, 5, 7, 63, '2022-04-21 09:28:24', '2022-04-21 09:28:24'),
(57, 36, 5, 8, 68, '2022-04-21 09:43:05', '2022-04-21 09:43:05'),
(58, 41, 1, 3, 83, '2022-04-29 08:49:48', '2022-04-29 08:49:48'),
(59, 32, 1, 3, 84, '2022-05-12 00:45:37', '2022-05-12 00:45:37'),
(60, 32, 7, 19, 160, '2022-05-13 09:26:10', '2022-05-13 09:26:10'),
(61, 32, 7, 21, 169, '2022-05-13 13:30:49', '2022-05-13 13:30:49'),
(62, 32, 7, 22, 170, '2022-05-13 13:31:16', '2022-05-13 13:31:16'),
(63, 32, 7, 23, 173, '2022-05-13 13:31:24', '2022-05-13 13:31:24'),
(64, 32, 7, 24, 175, '2022-05-13 13:31:38', '2022-05-13 13:31:38'),
(65, 32, 7, 25, 176, '2022-05-13 13:31:46', '2022-05-13 13:31:46'),
(75, 52, 7, 19, 161, '2022-05-31 17:11:00', '2022-05-31 17:11:00'),
(67, 52, 7, 21, 169, '2022-05-29 03:26:25', '2022-05-29 03:26:25'),
(68, 52, 7, 22, 170, '2022-05-29 03:26:33', '2022-05-29 03:26:33'),
(69, 52, 7, 23, 172, '2022-05-29 03:26:42', '2022-05-29 03:26:42'),
(70, 52, 7, 24, 175, '2022-05-29 03:26:54', '2022-05-29 03:26:54'),
(71, 52, 7, 25, 176, '2022-05-29 03:27:01', '2022-05-29 03:27:01'),
(72, 52, 8, 26, 177, '2022-05-29 03:27:23', '2022-05-29 03:27:23'),
(73, 52, 8, 27, 178, '2022-05-29 03:27:29', '2022-05-29 03:27:29'),
(74, 52, 8, 28, 179, '2022-05-29 03:27:36', '2022-05-29 03:27:36'),
(76, 53, 7, 19, 161, '2022-06-20 17:08:34', '2022-06-20 17:08:34'),
(79, 57, 5, 7, 65, '2023-03-14 11:33:24', '2023-03-14 11:33:24'),
(80, 57, 5, 8, 72, '2023-03-14 11:33:35', '2023-03-14 11:33:35'),
(81, 57, 9, 29, 180, '2023-03-14 11:34:01', '2023-03-14 11:34:01'),
(83, 57, 1, 3, 81, '2023-03-14 11:36:03', '2023-03-14 11:36:03'),
(84, 57, 1, 4, 75, '2023-03-14 11:36:11', '2023-03-14 11:36:11'),
(89, 57, 1, 9, 91, '2023-03-14 11:36:56', '2023-03-14 11:36:56'),
(87, 57, 1, 10, 95, '2023-03-14 11:36:35', '2023-03-14 11:36:35'),
(88, 57, 1, 11, 108, '2023-03-14 11:36:49', '2023-03-14 11:36:49'),
(91, 65, 1, 3, 82, '2023-03-19 09:22:25', '2023-03-19 09:22:25'),
(92, 65, 1, 4, 78, '2023-03-19 09:22:31', '2023-03-19 09:22:31'),
(110, 65, 1, 10, 96, '2023-03-19 09:26:04', '2023-03-19 09:26:04'),
(94, 65, 1, 9, 88, '2023-03-19 09:23:03', '2023-03-19 09:23:03'),
(95, 65, 1, 11, 104, '2023-03-19 09:23:27', '2023-03-19 09:23:27'),
(96, 65, 1, 12, 114, '2023-03-19 09:23:36', '2023-03-19 09:23:36'),
(97, 65, 1, 13, 121, '2023-03-19 09:23:42', '2023-03-19 09:23:42'),
(100, 65, 1, 14, 125, '2023-03-19 09:24:32', '2023-03-19 09:24:32'),
(99, 65, 1, 15, 141, '2023-03-19 09:24:18', '2023-03-19 09:24:18'),
(101, 65, 1, 16, 147, '2023-03-19 09:24:48', '2023-03-19 09:24:48'),
(102, 65, 1, 17, 153, '2023-03-19 09:25:03', '2023-03-19 09:25:03'),
(103, 65, 1, 18, 156, '2023-03-19 09:25:09', '2023-03-19 09:25:09'),
(104, 65, 1, 32, 188, '2023-03-19 09:25:16', '2023-03-19 09:25:16'),
(105, 65, 1, 33, 192, '2023-03-19 09:25:23', '2023-03-19 09:25:23'),
(106, 65, 1, 34, 197, '2023-03-19 09:25:43', '2023-03-19 09:25:43'),
(107, 65, 1, 35, 204, '2023-03-19 09:25:52', '2023-03-19 09:25:52'),
(108, 65, 1, 35, 205, '2023-03-19 09:25:52', '2023-03-19 09:25:52'),
(111, 65, 1, 36, 213, '2023-03-19 09:26:12', '2023-03-19 09:26:12'),
(112, 65, 1, 37, 221, '2023-03-19 09:26:22', '2023-03-19 09:26:22'),
(113, 65, 1, 38, 228, '2023-03-19 09:26:29', '2023-03-19 09:26:29'),
(114, 65, 1, 39, 232, '2023-03-19 09:26:36', '2023-03-19 09:26:36'),
(115, 65, 1, 40, 241, '2023-03-19 09:27:05', '2023-03-19 09:27:05'),
(116, 65, 1, 41, 257, '2023-03-19 09:27:35', '2023-03-19 09:27:35'),
(118, 65, 10, 31, 182, '2023-03-19 09:28:24', '2023-03-19 09:28:24'),
(119, 65, 9, 29, 180, '2023-03-19 09:29:14', '2023-03-19 09:29:14'),
(120, 65, 9, 30, 181, '2023-03-19 09:29:18', '2023-03-19 09:29:18'),
(121, 65, 7, 19, 160, '2023-03-19 09:30:45', '2023-03-19 09:30:45'),
(122, 65, 7, 19, 162, '2023-03-19 09:30:45', '2023-03-19 09:30:45'),
(124, 65, 7, 21, 169, '2023-03-19 09:31:05', '2023-03-19 09:31:05'),
(125, 65, 7, 22, 170, '2023-03-19 09:31:13', '2023-03-19 09:31:13'),
(126, 65, 7, 23, 172, '2023-03-19 09:31:20', '2023-03-19 09:31:20'),
(127, 65, 7, 24, 175, '2023-03-19 09:31:31', '2023-03-19 09:31:31'),
(128, 65, 7, 25, 176, '2023-03-19 09:31:42', '2023-03-19 09:31:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_pages`
--
ALTER TABLE `end_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_categories`
--
ALTER TABLE `question_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_test_users`
--
ALTER TABLE `survey_test_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_users`
--
ALTER TABLE `survey_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_questions`
--
ALTER TABLE `user_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `end_pages`
--
ALTER TABLE `end_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `question_categories`
--
ALTER TABLE `question_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `survey_test_users`
--
ALTER TABLE `survey_test_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_users`
--
ALTER TABLE `survey_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_questions`
--
ALTER TABLE `user_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
