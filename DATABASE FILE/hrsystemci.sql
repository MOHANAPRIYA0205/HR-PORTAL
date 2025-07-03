-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 04:32 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrsystemci` - Indian Version
--

-- --------------------------------------------------------

--
-- Table structure for table `addition`
--

CREATE TABLE `addition` (
  `addi_id` int(14) NOT NULL,
  `salary_id` int(14) NOT NULL,
  `basic` varchar(128) DEFAULT NULL,
  `medical` varchar(64) DEFAULT NULL,
  `house_rent` varchar(64) DEFAULT NULL,
  `conveyance` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addition` - Indian Rupees values
--

INSERT INTO `addition` (`addi_id`, `salary_id`, `basic`, `medical`, `house_rent`, `conveyance`) VALUES
(1, 1, '27500.00', '2750.00', '22000.00', '2750.00'),
(2, 2, '67500.00', '6750.00', '54000.00', '6750.00'),
(3, 3, '90500.00', '9050.00', '72400.00', '9050.00'),
(4, 4, '27825.00', '2782.50', '22260.00', '2782.50'),
(5, 5, '34500.00', '3450.00', '27600.00', '3450.00'),
(6, 6, '39750.00', '3975.00', '31800.00', '3975.00'),
(7, 7, '43000.00', '4300.00', '34400.00', '4300.00'),
(8, 8, '55000.00', '5500.00', '44000.00', '5500.00'),
(9, 9, '35000.00', '3500.00', '28000.00', '3500.00'),
(10, 10, '28000.00', '2800.00', '22400.00', '2800.00');

-- --------------------------------------------------------

--
-- Table structure for table `address` - Indian addresses
--

CREATE TABLE `address` (
  `id` int(14) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT 'India',
  `address` varchar(512) DEFAULT NULL,
  `type` enum('Present','Permanent') DEFAULT 'Present'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address` - Indian cities
--

INSERT INTO `address` (`id`, `emp_id`, `city`, `country`, `address`, `type`) VALUES
(1, 'Kum1234', 'Chennai', 'India', '12 Gandhi Road, T Nagar', 'Permanent'),
(2, 'Kum1234', 'Bangalore', 'India', '45 MG Road, Koramangala', 'Present'),
(3, 'Sin1332', 'Mumbai', 'India', '78 Marine Drive, Colaba', 'Permanent'),
(4, 'Sin1332', 'Hyderabad', 'India', '23 Hitech City Road', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `assets` - Indian prices
--

CREATE TABLE `assets` (
  `ass_id` int(14) NOT NULL,
  `catid` varchar(14) NOT NULL,
  `ass_name` varchar(256) DEFAULT NULL,
  `ass_brand` varchar(128) DEFAULT NULL,
  `ass_model` varchar(256) DEFAULT NULL,
  `ass_code` varchar(256) DEFAULT NULL,
  `configuration` varchar(512) DEFAULT NULL,
  `purchasing_date` varchar(128) DEFAULT NULL,
  `ass_price` varchar(128) DEFAULT NULL,
  `ass_qty` varchar(64) DEFAULT NULL,
  `in_stock` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets` - Indian prices
--

INSERT INTO `assets` (`ass_id`, `catid`, `ass_name`, `ass_brand`, `ass_model`, `ass_code`, `configuration`, `purchasing_date`, `ass_price`, `ass_qty`, `in_stock`) VALUES
(1, '3', 'Laptop T10', 'Dell', 'Alienware', 'AW569', 'demo config demo config demo config', '12/23/2021', '85000', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `assets_category`
--

CREATE TABLE `assets_category` (
  `cat_id` int(14) NOT NULL,
  `cat_status` enum('ASSETS','LOGISTIC') NOT NULL DEFAULT 'ASSETS',
  `cat_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets_category`
--

INSERT INTO `assets_category` (`cat_id`, `cat_status`, `cat_name`) VALUES
(1, 'ASSETS', 'TAB'),
(2, 'ASSETS', 'Computer'),
(3, 'ASSETS', 'Laptop'),
(4, 'LOGISTIC', 'Office Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `assign_leave` - Indian names
--

CREATE TABLE `assign_leave` (
  `id` int(14) NOT NULL,
  `app_id` varchar(11) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(14) NOT NULL,
  `day` varchar(256) DEFAULT NULL,
  `hour` varchar(255) NOT NULL,
  `total_day` varchar(64) DEFAULT NULL,
  `dateyear` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assign_leave` - Indian names
--

INSERT INTO `assign_leave` (`id`, `app_id`, `emp_id`, `type_id`, `day`, `hour`, `total_day`, `dateyear`) VALUES
(1, '', 'Pat1402', 2, NULL, '8', NULL, '2021'),
(2, '', 'Raj1044', 2, NULL, '56', NULL, '2022'),
(3, '', 'Dev1745', 1, NULL, '8', NULL, '2022');

-- --------------------------------------------------------

--
-- Table structure for table `assign_task` - Indian names
--

CREATE TABLE `assign_task` (
  `id` int(14) NOT NULL,
  `task_id` int(14) NOT NULL,
  `project_id` int(14) NOT NULL,
  `assign_user` varchar(64) DEFAULT NULL,
  `user_type` enum('Team Head','Collaborators') NOT NULL DEFAULT 'Collaborators'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assign_task` - Indian names
--

INSERT INTO `assign_task` (`id`, `task_id`, `project_id`, `assign_user`, `user_type`) VALUES
(1, 1, 1, 'Pat1402', 'Team Head'),
(2, 1, 1, 'Kum1234', 'Collaborators');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(14) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `atten_date` varchar(64) DEFAULT NULL,
  `signin_time` time DEFAULT NULL,
  `signout_time` time DEFAULT NULL,
  `working_hour` varchar(64) DEFAULT NULL,
  `place` varchar(255) NOT NULL,
  `absence` varchar(128) DEFAULT NULL,
  `overtime` varchar(128) DEFAULT NULL,
  `earnleave` varchar(128) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `emp_id`, `atten_date`, `signin_time`, `signout_time`, `working_hour`, `place`, `absence`, `overtime`, `earnleave`, `status`) VALUES
(1012, '6969', '2021-06-04', '10:00:00', '03:04:00', '06 h 56 m', 'field', NULL, NULL, NULL, 'E'),
(1013, '6969', '2021-06-06', '09:00:00', '02:00:00', '07 h 0 m', 'office', NULL, NULL, NULL, 'A'),
(1014, '123456', '2021-12-01', '09:00:00', '04:30:00', '04 h 30 m', 'office', NULL, NULL, NULL, 'A'),
(1015, '123444', '2021-12-29', '09:00:00', '03:00:00', '06 h 0 m', 'office', NULL, NULL, NULL, 'A'),
(1016, '3008', '2021-12-28', '10:00:00', '03:23:00', '06 h 37 m', 'office', NULL, NULL, NULL, 'A'),
(1017, '6600', '2022-01-02', '10:00:00', '04:00:00', '06 h 0 m', 'office', NULL, NULL, NULL, 'E'),
(1018, '8829', '2022-01-02', '10:00:00', '04:05:00', '05 h 55 m', 'office', NULL, NULL, NULL, 'E'),
(1019, '6600', '2021-11-30', '10:00:00', '05:00:00', '05 h 0 m', 'office', NULL, NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info` - Indian banks
--

CREATE TABLE `bank_info` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `holder_name` varchar(256) DEFAULT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `branch_name` varchar(256) DEFAULT NULL,
  `account_number` varchar(256) DEFAULT NULL,
  `account_type` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_info` - Indian bank details
--

INSERT INTO `bank_info` (`id`, `em_id`, `holder_name`, `bank_name`, `branch_name`, `account_number`, `account_type`) VALUES
(1, 'Pat1754', 'Arjun Kumar', 'State Bank of India', 'Chennai Main Branch', '32568975632', 'Savings'),
(2, 'Kum1234', 'Priya Sharma', 'HDFC Bank', 'Bangalore Koramangala', '45612378901', 'Current'),
(3, 'Sin1332', 'Rahul Verma', 'ICICI Bank', 'Mumbai Colaba', '78945612305', 'Salary Account'),
(4, 'Rob1472', 'Ananya Patel', 'Axis Bank', 'Hyderabad Hitech City', '32165498701', 'Savings'),
(5, 'Raj1044', 'Vikram Singh', 'Punjab National Bank', 'Delhi Connaught Place', '65498732105', 'Savings'),
(6, 'Pat1402', 'Neha Gupta', 'Kotak Mahindra Bank', 'Pune Camp', '98732165402', 'Salary Account'),
(7, 'Smi1266', 'Aditya Joshi', 'Bank of Baroda', 'Ahmedabad CG Road', '15975346802', 'Salary Account'),
(8, 'Moo1634', 'Divya Reddy', 'Canara Bank', 'Chennai T Nagar', '35795146820', 'Savings'),
(9, 'Joh1474', 'Sanjay Malhotra', 'Union Bank', 'Bangalore MG Road', '85296374105', 'Salary Account'),
(10, 'Dev1745', 'Meera Choudhary', 'Indian Bank', 'Kolkata Park Street', '96385274105', 'Savings');

-- --------------------------------------------------------

--
-- Table structure for table `deduction` - Indian Rupees values
--

CREATE TABLE `deduction` (
  `de_id` int(14) NOT NULL,
  `salary_id` int(14) NOT NULL,
  `provident_fund` varchar(64) DEFAULT NULL,
  `bima` varchar(64) DEFAULT NULL,
  `tax` varchar(64) DEFAULT NULL,
  `others` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deduction` - Indian Rupees values
--

INSERT INTO `deduction` (`de_id`, `salary_id`, `provident_fund`, `bima`, `tax`, `others`) VALUES
(1, 1, '4000', '0', '1000', '0'),
(2, 2, '2500', '3600', '1000', '0'),
(3, 3, '5000', '0', '1000', '0'),
(4, 4, '0', '0', '500', '0'),
(5, 5, '0', '0', '0', '0'),
(6, 6, '2650', '0', '1000', '0'),
(7, 7, '2000', '3000', '700', '0'),
(8, 8, '3000', '5600', '1000', '0'),
(9, 9, '0', '0', '0', '0'),
(10, 10, '0', '1000', '1000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dep_name`) VALUES
(2, 'Administration'),
(3, 'Finance, HR, & Admininstration'),
(4, 'Research'),
(5, 'Information Technology'),
(6, 'Support'),
(7, 'Network Engineering'),
(8, 'Sales and Marketing'),
(9, 'Helpdesk'),
(10, 'Project Management');

-- --------------------------------------------------------

--
-- Table structure for table `desciplinary` - Indian names
--

CREATE TABLE `desciplinary` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `action` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `desciplinary` - Indian names
--

INSERT INTO `desciplinary` (`id`, `em_id`, `action`, `title`, `description`) VALUES
(1, 'Sin1332', 'Written Warning', 'Late Attendance', 'Employee was late for work 3 times this month');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `des_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `des_name`) VALUES
(2, 'Vice Chairman'),
(3, 'Chief Executive Officer (CEO)'),
(4, 'Chief Finance & Admin Officer'),
(5, 'Sr. Finance & Admin Officer - I'),
(6, 'Jr. Finance & Admin Officer'),
(7, 'Senior Research Associate-1'),
(8, 'Research Associate-1'),
(9, 'Junior Research Associate'),
(10, 'Research Assistant'),
(11, 'Sr. Office Assistant'),
(12, 'Office Assistant'),
(13, 'IT Analyst'),
(14, 'Cook'),
(15, 'Software Engineer'),
(16, 'System Analyst'),
(17, 'Programmer Analyst'),
(18, 'Sr Software Engineer'),
(19, 'Technical Specialist'),
(20, 'Trainee Engineer'),
(21, 'Intern'),
(22, 'Head of Department'),
(23, 'Business Analyst'),
(24, 'Web Developer'),
(25, 'Big Data Engineer'),
(26, 'Project Manager'),
(27, 'Trainee');

-- --------------------------------------------------------

--
-- Table structure for table `earned_leave` - Indian names
--

CREATE TABLE `earned_leave` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `present_date` varchar(64) DEFAULT NULL,
  `hour` varchar(64) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `earned_leave` - Indian names
--

INSERT INTO `earned_leave` (`id`, `em_id`, `present_date`, `hour`, `status`) VALUES
(26, 'Mir1685', '0', '0', '1'),
(27, 'Rah1682', '0', '0', '1'),
(28, 'edr1432', '0', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `education` - Indian institutes
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(128) DEFAULT NULL,
  `edu_type` varchar(256) DEFAULT NULL,
  `institute` varchar(256) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education` - Indian institutes
--

INSERT INTO `education` (`id`, `emp_id`, `edu_type`, `institute`, `result`, `year`) VALUES
(1, 'Kum1234', 'MSIT', 'IIT Madras', '71', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `employee` - Indian employee data
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `em_code` varchar(64) DEFAULT NULL,
  `des_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `em_email` varchar(64) DEFAULT NULL,
  `em_password` varchar(512) NOT NULL,
  `em_role` enum('ADMIN','EMPLOYEE','SUPER ADMIN') NOT NULL DEFAULT 'EMPLOYEE',
  `em_address` varchar(512) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `em_gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `em_phone` varchar(64) DEFAULT NULL,
  `em_birthday` varchar(128) DEFAULT NULL,
  `em_blood_group` enum('O+','O-','A+','A-','B+','B-','AB+','OB+') DEFAULT NULL,
  `em_joining_date` varchar(128) DEFAULT NULL,
  `em_contact_end` varchar(128) DEFAULT NULL,
  `em_image` varchar(128) DEFAULT NULL,
  `em_nid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee` - Indian employees
--

INSERT INTO `employee` (`id`, `em_id`, `em_code`, `des_id`, `dep_id`, `first_name`, `last_name`, `em_email`, `em_password`, `em_role`, `em_address`, `status`, `em_gender`, `em_phone`, `em_birthday`, `em_blood_group`, `em_joining_date`, `em_contact_end`, `em_image`, `em_nid`) VALUES
(10, 'Sin1332', '99', 0, 0, 'Rahul', 'Verma', 'rahul@mail.com', '25c2c9afdd83b8d34234aa2881cc341C09689aaa', 'SUPER ADMIN', NULL, 'ACTIVE', 'Male', '9876543210', '1985-12-05', 'B+', '2018-01-06', '2018-01-06', 'userav-min.png', '132154566556'),
(36, 'Kum1234', '123456', 12, 2, 'Priya', 'Sharma', 'admin@mail.com', 'cd5ea73cd58f827fa78eef7197b8ee606c99b2e6', 'ADMIN', NULL, 'ACTIVE', 'Female', '9999999000', '1990-12-13', 'O+', '2019-02-15', '2019-02-22', 'user.png', '01253568955555'),
(37, 'Pat1754', '123444', 12, 2, 'Arjun', 'Kumar', 'employee@mail.com', 'cd5ea73cd58f827fa78eef7197b8ee606c99b2e6', 'EMPLOYEE', NULL, 'ACTIVE', 'Male', '8888888888', '1995-10-30', 'O+', '2019-02-15', '2019-02-22', 'Doe1753.jpg', '01253568955555'),
(38, 'Pat1402', '6969', 13, 5, 'Neha', 'Gupta', 'neha@mail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'EMPLOYEE', NULL, 'ACTIVE', 'Female', '7777777777', '1994-03-23', 'A-', '2021-05-04', '2023-05-17', 'Moo1402.png', '1234567890'),
(39, 'Rob1472', '1058', 9, 4, 'Ananya', 'Patel', 'ananya@mail.com', '7672fb4033bc7bc14e2e26e5e0679e3c2a1bd514', 'EMPLOYEE', NULL, 'ACTIVE', 'Female', '6666666666', '1992-12-24', 'A+', '2021-04-14', '', 'Rob1472.png', '7000105000'),
(40, 'Raj1044', '8877', 13, 5, 'Vikram', 'Singh', 'vikram@mail.com', '260a678229cde1991cd1ac0d6adb4980c76c5e7f', 'EMPLOYEE', NULL, 'ACTIVE', 'Male', '5555555555', '1993-01-02', 'AB+', '2021-10-01', '', 'Tho1044.png', '0102580010'),
(41, 'Smi1266', '3008', 23, 8, 'Aditya', 'Joshi', 'aditya@mail.com', '7b4286b09972e2859b718440aa68a2a6eeb869dd', 'EMPLOYEE', NULL, 'ACTIVE', 'Male', '4444444444', '1990-12-12', 'B+', '2021-10-10', '', 'Smi1266.png', '0147000000'),
(42, 'Moo1634', '6661', 26, 10, 'Divya', 'Reddy', 'divya@mail.com', '37219392e904e98b6dca4f729f1d29c642d40e19', 'EMPLOYEE', NULL, 'ACTIVE', 'Female', '3333333333', '1991-04-05', 'A-', '2021-10-10', '', 'Moo1634.png', '147850000144'),
(43, 'Joh1474', '8829', 22, 7, 'Sanjay', 'Malhotra', 'sanjay@mail.com', 'd492ed1b1fdfbc9ca9db7c10c7df38d2b488fb14', 'EMPLOYEE', NULL, 'ACTIVE', 'Male', '2222222222', '1986-02-23', 'B-', '2021-02-02', '', 'Joh1474.png', '600254000014'),
(44, 'Dev1745', '6600', 20, 7, 'Meera', 'Choudhary', 'meera@mail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'EMPLOYEE', NULL, 'ACTIVE', 'Female', '1111111111', '1996-03-03', 'AB+', '2021-10-10', '', 'Den1745.png', '880024520000');

-- --------------------------------------------------------

--
-- Table structure for table `employee_file`
--

CREATE TABLE `employee_file` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `file_title` varchar(512) DEFAULT NULL,
  `file_url` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_assets`
--

CREATE TABLE `emp_assets` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `assets_id` int(11) NOT NULL,
  `given_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_experience` - Indian companies
--

CREATE TABLE `emp_experience` (
  `id` int(14) NOT NULL,
  `emp_id` varchar(256) DEFAULT NULL,
  `exp_company` varchar(128) DEFAULT NULL,
  `exp_com_position` varchar(128) DEFAULT NULL,
  `exp_com_address` varchar(128) DEFAULT NULL,
  `exp_workduration` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave` - Indian names
--

CREATE TABLE `emp_leave` (
  `id` int(11) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `typeid` int(14) NOT NULL,
  `leave_type` varchar(64) DEFAULT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `end_date` varchar(64) DEFAULT NULL,
  `leave_duration` varchar(128) DEFAULT NULL,
  `apply_date` varchar(64) DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `leave_status` enum('Approve','Not Approve','Rejected') NOT NULL DEFAULT 'Not Approve'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_leave` - Indian names
--

INSERT INTO `emp_leave` (`id`, `em_id`, `typeid`, `leave_type`, `start_date`, `end_date`, `leave_duration`, `apply_date`, `reason`, `leave_status`) VALUES
(1, 'Pat1402', 2, 'Full Day', '2021-06-24', '', '8', '2021-06-23', 'a bit of a headache and cough', 'Approve'),
(2, 'Raj1044', 2, 'More than One day', '2022-01-02', '2022-01-09', '56', '2022-01-02', 'Common Cold with Headache', 'Approve'),
(3, 'Joh1474', 1, 'Full Day', '2022-01-03', '', '8', '2022-01-03', 'This is just a demo reason for testing!', 'Rejected'),
(4, 'Joh1474', 1, 'Half Day', '2022-01-03', '', '2', '2022-01-03', 'Demo Test Demo Test Demo', 'Not Approve'),
(5, 'Dev1745', 1, 'Full Day', '2022-01-04', '', '8', '2022-01-03', 'demo demo demo demo demo demo', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `emp_penalty`
--

CREATE TABLE `emp_penalty` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `penalty_id` int(11) NOT NULL,
  `penalty_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary` - Indian Rupees values
--

CREATE TABLE `emp_salary` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `total` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_salary` - Indian Rupees values
--

INSERT INTO `emp_salary` (`id`, `emp_id`, `type_id`, `total`) VALUES
(1, 'Pat1754', 2, '55000'),
(2, 'Kum1234', 2, '135000'),
(3, 'Sin1332', 2, '181000'),
(4, 'Rob1472', 2, '55650'),
(5, 'Pat1402', 2, '69000'),
(6, 'Smi1266', 2, '79500'),
(7, 'Moo1634', 2, '86000'),
(8, 'Joh1474', 2, '110000'),
(9, 'Raj1044', 2, '70000'),
(10, 'Dev1745', 2, '56000');

-- --------------------------------------------------------

--
-- Table structure for table `emp_training`
--

CREATE TABLE `emp_training` (
  `id` int(11) NOT NULL,
  `trainig_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_visit` - Indian locations
--

CREATE TABLE `field_visit` (
  `id` int(14) NOT NULL,
  `project_id` varchar(256) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `field_location` varchar(512) NOT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `approx_end_date` varchar(28) NOT NULL,
  `total_days` varchar(64) DEFAULT NULL,
  `notes` varchar(500) NOT NULL,
  `actual_return_date` varchar(28) NOT NULL,
  `status` enum('Approved','Not Approve','Rejected') NOT NULL DEFAULT 'Not Approve',
  `attendance_updated` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holiday` - Indian holidays
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `holiday_name` varchar(256) DEFAULT NULL,
  `from_date` varchar(64) DEFAULT NULL,
  `to_date` varchar(64) DEFAULT NULL,
  `number_of_days` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holiday` - Indian holidays
--

INSERT INTO `holiday` (`id`, `holiday_name`, `from_date`, `to_date`, `number_of_days`, `year`) VALUES
(1, 'Diwali', '2021-11-04', '2021-11-04', '1', '11-2021'),
(3, 'Republic Day', '2022-01-26', '2022-01-26', '1', '01-2022'),
(5, 'Christmas', '2021-12-25', '2021-12-25', '1', '12-2021'),
(6, 'Gandhi Jayanti', '2021-10-02', '2021-10-02', '1', '10-2021'),
(7, 'Independence Day', '2021-08-15', '2021-08-15', '1', '08-2021'),
(8, 'Holi', '2021-03-29', '2021-03-29', '1', '03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `type_id` int(14) NOT NULL,
  `name` varchar(64) NOT NULL,
  `leave_day` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`type_id`, `name`, `leave_day`, `status`) VALUES
(1, 'Casual Leave', '21', 1),
(2, 'Sick Leave', '15', 1),
(3, 'Maternity Leave', '90', 1),
(4, 'Paternal Leave', '7', 1),
(5, 'Earned leave', '', 1),
(7, 'Public Holiday', '', 1),
(8, 'Optional Leave', '', 1),
(9, 'Leave without Pay', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan` - Indian Rupees values
--

CREATE TABLE `loan` (
  `id` int(14) NOT NULL,
  `emp_id` varchar(256) DEFAULT NULL,
  `amount` varchar(256) DEFAULT NULL,
  `interest_percentage` varchar(256) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `total_pay` varchar(64) DEFAULT NULL,
  `total_due` varchar(64) DEFAULT NULL,
  `installment` varchar(256) DEFAULT NULL,
  `loan_number` varchar(256) DEFAULT NULL,
  `loan_details` varchar(256) DEFAULT NULL,
  `approve_date` varchar(256) DEFAULT NULL,
  `install_period` varchar(256) DEFAULT NULL,
  `status` enum('Granted','Deny','Pause','Done') NOT NULL DEFAULT 'Pause'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan` - Indian Rupees values
--

INSERT INTO `loan` (`id`, `emp_id`, `amount`, `interest_percentage`, `total_amount`, `total_pay`, `total_due`, `installment`, `loan_number`, `loan_details`, `approve_date`, `install_period`, `status`) VALUES
(1, 'Kum1234', '650000', NULL, NULL, '108330', '541670', '108330', '19073382', 'Home renovation loan', '2021-04-20', '5', 'Granted');

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment` - Indian Rupees values
--

CREATE TABLE `loan_installment` (
  `id` int(14) NOT NULL,
  `loan_id` int(14) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `loan_number` varchar(256) DEFAULT NULL,
  `install_amount` varchar(256) DEFAULT NULL,
  `pay_amount` varchar(64) DEFAULT NULL,
  `app_date` varchar(256) DEFAULT NULL,
  `receiver` varchar(256) DEFAULT NULL,
  `install_no` varchar(256) DEFAULT NULL,
  `notes` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_installment` - Indian Rupees values
--

INSERT INTO `loan_installment` (`id`, `loan_id`, `emp_id`, `loan_number`, `install_amount`, `pay_amount`, `app_date`, `receiver`, `install_no`, `notes`) VALUES
(32, 1, 'Kum1234', '19073382', '108330', NULL, '2021-11-30', NULL, '5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logistic_asset`
--

CREATE TABLE `logistic_asset` (
  `log_id` int(14) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `qty` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logistic_asset`
--

INSERT INTO `logistic_asset` (`log_id`, `name`, `qty`, `entry_date`) VALUES
(1, 'Printer Ink', '30', '12/25/2021');

-- --------------------------------------------------------

--
-- Table structure for table `logistic_assign`
--

CREATE TABLE `logistic_assign` (
  `ass_id` int(14) NOT NULL,
  `asset_id` int(14) NOT NULL,
  `assign_id` varchar(64) DEFAULT NULL,
  `project_id` int(14) NOT NULL,
  `task_id` int(14) NOT NULL,
  `log_qty` varchar(64) DEFAULT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `end_date` varchar(64) DEFAULT NULL,
  `back_date` varchar(64) DEFAULT NULL,
  `back_qty` varchar(64) DEFAULT NULL,
  `remarks` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notice` - Indian context
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(256) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice` - Indian context
--

INSERT INTO `notice` (`id`, `title`, `file_url`, `date`) VALUES
(1, 'Office will remain closed for Diwali celebrations', 'diwali.jpg', '2021-11-01'),
(2, 'Mandatory attendance for Republic Day function', 'republic_day.jpg', '2022-01-20'),
(3, 'Summer timings effective from April 1st', 'summer_timings.pdf', '2022-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `owner` - Indian names
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(64) NOT NULL,
  `owner_position` varchar(64) DEFAULT NULL,
  `note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pay_salary` - Indian Rupees values
--

CREATE TABLE `pay_salary` (
  `pay_id` int(14) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(14) NOT NULL,
  `month` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL,
  `paid_date` varchar(64) DEFAULT NULL,
  `total_days` varchar(64) DEFAULT NULL,
  `basic` varchar(64) DEFAULT NULL,
  `medical` varchar(64) DEFAULT NULL,
  `house_rent` varchar(64) DEFAULT NULL,
  `bonus` varchar(64) DEFAULT NULL,
  `bima` varchar(64) DEFAULT NULL,
  `tax` varchar(64) DEFAULT NULL,
  `provident_fund` varchar(64) DEFAULT NULL,
  `loan` varchar(64) DEFAULT NULL,
  `total_pay` varchar(128) DEFAULT NULL,
  `addition` int(128) NOT NULL,
  `diduction` int(128) NOT NULL,
  `status` enum('Paid','Process') DEFAULT 'Process',
  `paid_type` enum('Hand Cash','Bank') NOT NULL DEFAULT 'Bank'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_salary` - Indian Rupees values
--

INSERT INTO `pay_salary` (`pay_id`, `emp_id`, `type_id`, `month`, `year`, `paid_date`, `total_days`, `basic`, `medical`, `house_rent`, `bonus`, `bima`, `tax`, `provident_fund`, `loan`, `total_pay`, `addition`, `diduction`, `status`, `paid_type`) VALUES
(1, 'Pat1754', 0, 'November', '2021', '2021-11-30', '208', '55000', NULL, NULL, NULL, NULL, NULL, NULL, '0', '54995', 0, 0, 'Paid', 'Bank'),
(2, 'Kum1234', 0, 'November', '2021', '2021-11-30', '184', '135000', NULL, NULL, NULL, NULL, NULL, NULL, '108330', '26670', 0, 108330, 'Paid', 'Bank'),
(3, 'Smi1266', 0, 'November', '2021', '2021-11-30', '184', '79500', NULL, NULL, NULL, NULL, NULL, NULL, '0', '79500', 0, 0, 'Paid', 'Bank'),
(4, 'Moo1634', 0, 'November', '2021', '2021-12-01', '184', '86000', NULL, NULL, NULL, NULL, NULL, NULL, '0', '86000', 0, 0, 'Paid', 'Hand Cash'),
(5, 'Raj1044', 0, 'November', '2021', '2021-12-01', '184', '70000', NULL, NULL, NULL, NULL, NULL, NULL, '0', '70000', 0, 0, 'Paid', 'Bank'),
(6, 'Dev1745', 0, 'December', '2022', '2021-12-31', '208', '56000', NULL, NULL, NULL, NULL, NULL, NULL, '0', '56000', 0, 0, 'Paid', 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(11) NOT NULL,
  `penalty_name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project` - Indian projects
--

CREATE TABLE `project` (
  `id` int(14) NOT NULL,
  `pro_name` varchar(128) DEFAULT NULL,
  `pro_start_date` varchar(128) DEFAULT NULL,
  `pro_end_date` varchar(128) DEFAULT NULL,
  `pro_description` varchar(1024) DEFAULT NULL,
  `pro_summary` varchar(512) DEFAULT NULL,
  `pro_status` enum('upcoming','complete','running') NOT NULL DEFAULT 'running',
  `progress` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project` - Indian projects
--

INSERT INTO `project` (`id`, `pro_name`, `pro_start_date`, `pro_end_date`, `pro_description`, `pro_summary`, `pro_status`, `progress`) VALUES
(1, 'Aadhaar Integration', 'Jan 4, 2022', 'Feb 2, 2022', 'Integration with UIDAI Aadhaar system for identity verification', 'Aadhaar integration project', 'upcoming', NULL),
(2, 'UPI Payment Gateway', 'Jan 1, 2022', 'April 14, 2022', 'Development of UPI payment gateway for banking transactions', 'UPI Payment System Development', 'running', NULL),
(3, 'GST Compliance System', 'Dec 10, 2021', 'Mar 20, 2022', 'Development of GST compliance software for businesses', 'GST Compliance Software', 'running', NULL),
(4, 'Digital India Portal', 'Dec 25, 2021', 'Feb 16, 2022', 'Development of portal for Digital India initiative', 'Digital India Portal Development', 'running', NULL),
(5, 'E-Commerce Platform', 'Dec 29, 2021', 'Mar 21, 2022', 'Development of Indian e-commerce platform', 'E-Commerce Platform Development', 'running', NULL),
(6, 'Government Scheme Dashboard', 'Jan 2, 2022', 'Jan 10, 2022', 'Dashboard for tracking government schemes', 'Government Scheme Dashboard', 'running', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_file`
--

CREATE TABLE `project_file` (
  `id` int(14) NOT NULL,
  `pro_id` int(14) NOT NULL,
  `file_details` varchar(1028) DEFAULT NULL,
  `file_url` varchar(256) DEFAULT NULL,
  `assigned_to` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_expenses` - Indian Rupees values
--

CREATE TABLE `pro_expenses` (
  `id` int(14) NOT NULL,
  `pro_id` int(14) NOT NULL,
  `assign_to` varchar(64) DEFAULT NULL,
  `details` varchar(512) DEFAULT NULL,
  `amount` varchar(256) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_notes`
--

CREATE TABLE `pro_notes` (
  `id` int(14) NOT NULL,
  `assign_to` varchar(64) DEFAULT NULL,
  `pro_id` int(14) NOT NULL,
  `details` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_task` - Indian context
--

CREATE TABLE `pro_task` (
  `id` int(14) NOT NULL,
  `pro_id` int(14) NOT NULL,
  `task_title` varchar(256) DEFAULT NULL,
  `start_date` varchar(128) DEFAULT NULL,
  `end_date` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `task_type` enum('Office','Field') NOT NULL DEFAULT 'Office',
  `status` enum('running','complete','cancel') DEFAULT 'running',
  `location` varchar(512) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_days` varchar(128) DEFAULT NULL,
  `create_date` varchar(128) DEFAULT NULL,
  `approve_status` enum('Approved','Not Approve','Rejected') NOT NULL DEFAULT 'Not Approve'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_task` - Indian context
--

INSERT INTO `pro_task` (`id`, `pro_id`, `task_title`, `start_date`, `end_date`, `image`, `description`, `task_type`, `status`, `location`, `return_date`, `total_days`, `create_date`, `approve_status`) VALUES
(1, 1, 'Aadhaar API Integration', '2022-01-03', '2022-01-31', NULL, 'Integration with UIDAI Aadhaar API for verification', 'Office', 'running', NULL, NULL, NULL, '2022-01-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `pro_task_assets`
--

CREATE TABLE `pro_task_assets` (
  `id` int(11) NOT NULL,
  `pro_task_id` int(11) NOT NULL,
  `assign_id` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `id` int(14) NOT NULL,
  `salary_type` varchar(256) DEFAULT NULL,
  `create_date` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`id`, `salary_type`, `create_date`) VALUES
(1, 'Hourly', '2017-11-22'),
(2, 'Monthly', '2017-12-30'),
(3, 'Weekly', '2017-12-29'),
(4, 'Daily', '2018-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `settings` - Indian settings
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `sitelogo` varchar(128) DEFAULT NULL,
  `sitetitle` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `symbol` varchar(64) DEFAULT NULL,
  `system_email` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `address2` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings` - Indian settings
--

INSERT INTO `settings` (`id`, `sitelogo`, `sitetitle`, `description`, `copyright`, `contact`, `currency`, `symbol`, `system_email`, `address`, `address2`) VALUES
(1, 'indian_hr_logo.png', 'Bharat HR Solutions', 'HR Management System for Indian Companies', 'Bharat Solutions Pvt Ltd', '91-9876543210', 'INR', '₹', 'hr@bharathsolutions.com', '12 MG Road, Bangalore', 'Karnataka 560001');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(14) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `google_plus` varchar(512) DEFAULT NULL,
  `skype_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `to-do_list` - Indian names
--

CREATE TABLE `to-do_list` (
  `id` int(14) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `to_dodata` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL,
  `value` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `to-do_list` - Indian names
--

INSERT INTO `to-do_list` (`id`, `user_id`, `to_dodata`, `date`, `value`) VALUES
(1, 'Kum1234', 'Complete GST filing', '2021-04-19 09:19:29pm', '1'),
(2, 'Sin1332', 'Research on UPI integration', '2022-01-02 08:27:25pm', '0'),
(3, 'Sin1332', 'Recruit new developers', '2022-01-02 08:27:50pm', '1'),
(4, 'Sin1332', 'Assign Aadhaar project tasks', '2022-01-02 08:28:04pm', '0'),
(5, 'Sin1332', 'Attend client meeting', '2022-01-03 03:10:07pm', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addition`
--
ALTER TABLE `addition`
  ADD PRIMARY KEY (`addi_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `assets_category`
--
ALTER TABLE `assets_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `assign_leave`
--
ALTER TABLE `assign_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_task`
--
ALTER TABLE `assign_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`de_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desciplinary`
--
ALTER TABLE `desciplinary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earned_leave`
--
ALTER TABLE `earned_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_file`
--
ALTER TABLE `employee_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_assets`
--
ALTER TABLE `emp_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_experience`
--
ALTER TABLE `emp_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_penalty`
--
ALTER TABLE `emp_penalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_visit`
--
ALTER TABLE `field_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_installment`
--
ALTER TABLE `loan_installment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logistic_asset`
--
ALTER TABLE `logistic_asset`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `logistic_assign`
--
ALTER TABLE `logistic_assign`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_salary`
--
ALTER TABLE `pay_salary`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_file`
--
ALTER TABLE `project_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_expenses`
--
ALTER TABLE `pro_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_notes`
--
ALTER TABLE `pro_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_task`
--
ALTER TABLE `pro_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_task_assets`
--
ALTER TABLE `pro_task_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to-do_list`
--
ALTER TABLE `to-do_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addition`
--
ALTER TABLE `addition`
  MODIFY `addi_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `ass_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assets_category`
--
ALTER TABLE `assets_category`
  MODIFY `cat_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assign_leave`
--
ALTER TABLE `assign_leave`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assign_task`
--
ALTER TABLE `assign_task`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `de_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `desciplinary`
--
ALTER TABLE `desciplinary`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `earned_leave`
--
ALTER TABLE `earned_leave`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `employee_file`
--
ALTER TABLE `employee_file`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_assets`
--
ALTER TABLE `emp_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_experience`
--
ALTER TABLE `emp_experience`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_leave`
--
ALTER TABLE `emp_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `emp_penalty`
--
ALTER TABLE `emp_penalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_salary`
--
ALTER TABLE `emp_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `field_visit`
--
ALTER TABLE `field_visit`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `type_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `loan_installment`
--
ALTER TABLE `loan_installment`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `logistic_asset`
--
ALTER TABLE `logistic_asset`
  MODIFY `log_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logistic_assign`
--
ALTER TABLE `logistic_assign`
  MODIFY `ass_id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pay_salary`
--
ALTER TABLE `pay_salary`
  MODIFY `pay_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `project_file`
--
ALTER TABLE `project_file`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pro_expenses`
--
ALTER TABLE `pro_expenses`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pro_notes`
--
ALTER TABLE `pro_notes`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pro_task`
--
ALTER TABLE `pro_task`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pro_task_assets`
--
ALTER TABLE `pro_task_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `to-do_list`
--
ALTER TABLE `to-do_list`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;