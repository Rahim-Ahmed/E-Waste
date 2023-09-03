-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 09:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`, `address`, `city`, `gender`, `pic`, `fullName`) VALUES
(1, 'admin', 'Test@12345', '0000-00-00 00:00:00', '', '', '', '', ''),
(6, 'sajimahmed3030@gmail.com', '121212', '2023-03-21 14:59:27', 'sodorghat', 'dhaka', 'male', 'upload/Shafikuzzaman.jpg', 'Rahim Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(6, 'Physician', 11, 2, 2000, '2020-07-14', '10:15 AM', '2020-07-05 02:12:37', 1, 1, NULL),
(7, 'General Physician', 3, 2, 1200, '2020-07-05', '10:15 AM', '2020-07-05 02:14:49', 1, 1, NULL),
(8, 'General Physician', 3, 25, 1200, '2023-03-17', '2:30 PM', '2023-03-15 08:29:11', 0, 1, '2023-03-15 08:42:30'),
(9, 'General Physician', 14, 25, 1000, '2023-03-16', '2:45 PM', '2023-03-15 08:42:47', 1, 1, NULL),
(10, 'General Physician', 14, 25, 1000, '2023-03-15', '2:52 PM', '2023-03-15 08:51:52', 1, 0, '2023-03-21 16:54:33'),
(15, 'General Physician', 14, 27, 500, '2023-03-21', '4:15 AM', '2023-03-21 18:43:09', 1, 2, '2023-03-22 11:59:55'),
(17, 'General Physician', 14, 27, 500, '2023-03-17', '2:52 PM', '2023-03-21 19:00:59', 1, 2, '2023-03-22 11:59:55'),
(18, 'General Physician', 3, 27, 1200, '2023-03-17', '4:15 AM', '2023-03-22 09:51:51', 1, 2, '2023-03-22 11:59:55'),
(19, 'General Physician', 3, 28, 1200, '2023-03-17', '4:15 AM', '2023-03-22 14:47:49', 1, 2, '2023-03-22 14:48:33'),
(20, 'General Physician', 3, 25, 1200, '2023-03-23', '4:15 PM', '2023-03-28 18:55:01', 0, 1, '2023-03-28 18:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pic` varchar(255) NOT NULL,
  `vtime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`, `pic`, `vtime`) VALUES
(1, 'Dentist', 'Lyndon Bermoy', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2023-03-21 15:50:57', '../doctor/upload/paul.jpg', '10 AM - 8 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '2023-03-15 16:44:45', '../doctor/upload/jaquline.jpg', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2017-01-07 07:43:35', '2023-03-22 09:53:25', '', '6 AM - 3 PM'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00', '', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00', '', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '2023-03-21 16:27:49', '', '12 PM - 9PM'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2019-06-23 18:17:25', '', ''),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06', '', ''),
(11, 'Physician', 'Jonah Juarez', 'Surigao Philippines', '2000', 123456789, 'jjuarez@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-07-05 02:06:00', '2020-07-05 02:06:48', '', ''),
(14, 'General Physician', 'Ab rahim', 'Dhaka , Bangladesh.', '500', 1997406418, 'sajimahmed3030@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-15 08:40:13', '2023-03-21 15:48:16', 'upload/Dr.-Hafiz-Al-Asad.jpg', '10 AM - 8 PM');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:01', NULL, 1),
(21, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:02:51', NULL, 0),
(22, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:03:03', NULL, 0),
(23, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:02', NULL, 0),
(24, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:38', NULL, 0),
(25, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:19', NULL, 1),
(26, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:38', NULL, 1),
(27, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:08:18', NULL, 1),
(28, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:15:25', NULL, 1),
(29, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:41:24', NULL, 1),
(30, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:43:01', NULL, 1),
(31, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:47:09', NULL, 1),
(32, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:52:12', NULL, 1),
(33, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 09:02:08', NULL, 1),
(34, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 10:53:02', NULL, 1),
(35, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:16:52', NULL, 1),
(36, NULL, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:42:16', NULL, 0),
(37, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:42:22', NULL, 1),
(38, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 17:35:22', NULL, 1),
(39, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-17 15:12:15', NULL, 1),
(40, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:53:59', NULL, 1),
(41, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:56:30', NULL, 1),
(42, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 14:00:12', NULL, 1),
(43, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 15:43:54', NULL, 1),
(44, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 16:43:22', NULL, 1),
(45, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 16:44:13', NULL, 1),
(46, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 18:34:13', NULL, 1),
(47, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 18:43:34', NULL, 1),
(48, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 19:01:16', NULL, 1),
(49, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 08:38:56', NULL, 1),
(50, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:39:13', NULL, 1),
(51, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:43:38', NULL, 1),
(52, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:44:29', NULL, 1),
(53, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:49:12', NULL, 1),
(54, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:53:38', NULL, 1),
(55, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:03:03', NULL, 1),
(56, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:03:29', NULL, 1),
(57, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:21:39', '22-03-2023 03:55:26 PM', 1),
(58, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:25:37', NULL, 1),
(59, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:02:44', NULL, 1),
(60, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:03:58', NULL, 1),
(61, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:05:12', NULL, 1),
(62, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:41:42', NULL, 1),
(63, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:21:51', NULL, 1),
(64, NULL, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:22:42', NULL, 0),
(65, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:22:45', '22-03-2023 08:15:57 PM', 1),
(66, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:46:32', NULL, 1),
(67, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:48:01', NULL, 1),
(68, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 15:03:54', NULL, 1),
(69, 14, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 07:17:03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Lyndon Bermoy', 'serbermz2020@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'Answered', '2020-07-05 02:13:25', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'demo', 'demo@gmail.com', 123456789, ' hi, this is a demo', '2020-07-05 01:57:20', 'answered', '2020-07-05 01:57:46', 1),
(5, 'Ab Rahim Ahmed', 'sdasd', 102102120, 'keno keno keno seee', '2023-03-28 17:50:35', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`, `addby`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07', ''),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24', ''),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42', ''),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55', ''),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33', ''),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23', ''),
(8, 8, '120/80', '121', '99', '120F', '1212', '2023-03-15 08:59:47', ''),
(9, 7, '120/80', '120', '78', '30Deg', 'Rx-\r\n1. napa\r\n2. ace xr', '2023-03-21 13:58:24', ''),
(10, 10, '120/80', '120', '78', '30Deg', 'RX-\r\nnapa\r\nace xr', '2023-03-21 18:59:38', ''),
(11, 10, '120/80', '120', '78', '35Deg', 'rx-\r\nparasitamol 2 belaa', '2023-03-21 19:02:16', ''),
(12, 11, '120/80', '120', '78', '45Deg', 'napa sergel', '2023-03-22 10:16:02', 'Rahim ahmed'),
(13, 12, '120/80', '120', '78', '45Deg', 'napa extra', '2023-03-22 10:01:21', ''),
(14, 12, '120/80', '120', '78', '45Deg', 'saasdsad', '2023-03-22 10:16:39', 'Nitesh Kumar'),
(15, 10, '120/80', '120', '78', '45Deg', 'temp', '2023-03-22 10:23:00', 'Ab rahim'),
(16, 12, '120/80', '120', '78', '30Deg', 'asd', '2023-03-22 10:25:54', 'Nitesh Kumar'),
(17, 13, '120/80', '120', '78', '22deg', 'besi kore vat khaw', '2023-03-22 11:32:23', 'Ab rahim'),
(18, 14, '120/80', '120', '78', '35Deg', 'Bish dibo?', '2023-03-22 12:00:26', 'Ab rahim'),
(19, 14, '120/80', '120', '78', '22deg', 'helo', '2023-03-22 12:02:28', 'Ab rahim'),
(20, 15, '120/80', '120', '92', '35Deg', 'napa khaw\r\n', '2023-03-22 14:58:14', 'Nitesh Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `addby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`, `addby`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05', NULL),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31', NULL),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL, NULL),
(6, 0, 'Don Bermoy', 123456789, 'serbermz2020@gmail.com', 'male', 'Surigao Philippines', 35, 'Diagnosed of High Blood Pressure', '2020-07-05 02:08:09', NULL, NULL),
(7, 14, 'ami nije ee', 1212, 'osusto@gmail.com', 'Male', 'dhaka', 12, 'rog hoise', '2023-03-15 08:43:53', '2023-03-15 10:34:50', NULL),
(8, 14, 'Ab rahim', 1212, 'sajimahmed3030@gmail.com', 'Male', 'shodorghat', 26, 'osustoh', '2023-03-15 08:58:55', '2023-03-15 09:03:47', NULL),
(10, 14, 'jihad', 100100000, 'jihad3030@gmail.com', 'Male', 'dhaka', 23, 'jor ashche', '2023-03-21 18:58:20', '2023-03-22 11:31:01', 'Ab rahim'),
(11, 3, 'Demo User', 100100000, 'test@gmail.com', 'female', 'Manila, Philippines', 23, 'jor', '2023-03-22 09:59:41', NULL, NULL),
(12, 3, 'jihad', 100100000, 'jihad3030@gmail.com', 'male', 'dhaka', 23, 'ace zink', '2023-03-22 10:01:00', NULL, NULL),
(13, 14, 'jihad', 100100000, 'jihad3030@gmail.com', 'male', 'dhaka', 23, 'onek jor', '2023-03-22 11:31:32', NULL, 'Ab rahim'),
(14, 14, 'jihad', 100100000, 'jihad3030@gmail.com', 'male', 'dhaka', 23, 'onek onek jor', '2023-03-22 11:59:54', NULL, 'Ab rahim'),
(15, 3, 'rahus', 100100000, 'med3030@gmail.com', 'male', 'dhaka', 23, 'diabetes', '2023-03-22 14:48:33', NULL, 'Nitesh Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:24', NULL, 1),
(25, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:09:18', NULL, 0),
(26, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:05', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:24', NULL, 0),
(28, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:46', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:12:00', '21-03-2023 07:24:59 PM', 1),
(30, NULL, 'ahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:44:25', NULL, 0),
(31, NULL, 'ahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:44:34', NULL, 0),
(32, 12, 'ahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:45:02', NULL, 1),
(33, 13, 'hmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 06:46:34', NULL, 1),
(34, 20, 'ahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:17:48', '15-03-2023 12:49:09 PM', 1),
(35, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:28:30', '15-03-2023 12:58:33 PM', 1),
(36, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:29:17', '15-03-2023 12:59:19 PM', 1),
(37, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:15:16', NULL, 1),
(38, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:15:24', NULL, 1),
(39, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:28:51', NULL, 1),
(40, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:42:20', NULL, 1),
(41, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:46:27', NULL, 1),
(42, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:51:12', NULL, 1),
(43, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 09:00:05', NULL, 1),
(44, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 10:37:13', NULL, 1),
(45, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:11:57', NULL, 1),
(46, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:18:21', NULL, 1),
(47, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 16:59:27', NULL, 1),
(48, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 17:36:25', NULL, 1),
(49, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-17 15:06:10', '17-03-2023 08:42:07 PM', 1),
(50, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:53:55', NULL, 1),
(51, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:55:05', NULL, 1),
(52, 26, 'osusto@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:59:21', NULL, 1),
(53, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 16:05:56', '21-03-2023 10:07:18 PM', 1),
(54, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 16:37:26', NULL, 1),
(55, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 18:42:19', NULL, 1),
(56, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 19:00:04', NULL, 1),
(57, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 19:02:34', NULL, 1),
(58, NULL, 'ahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 08:03:16', NULL, 0),
(59, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 08:03:26', '22-03-2023 02:08:49 PM', 1),
(60, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:44:16', NULL, 1),
(61, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 09:51:37', NULL, 1),
(62, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:01:38', NULL, 1),
(63, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 10:26:12', NULL, 1),
(64, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:03:17', NULL, 1),
(65, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:04:35', NULL, 1),
(66, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 11:32:59', NULL, 1),
(67, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 12:00:34', NULL, 1),
(68, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:22:11', NULL, 1),
(69, 28, 'med3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:47:19', NULL, 1),
(70, 28, 'med3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-22 14:58:45', NULL, 1),
(71, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 06:46:15', '27-03-2023 12:46:18 PM', 1),
(72, 27, 'jihad3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 07:17:07', NULL, 1),
(73, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 18:16:15', NULL, 1),
(74, 29, 'jimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 18:22:24', NULL, 1),
(75, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 18:26:24', '29-03-2023 12:06:56 AM', 1),
(76, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 18:37:44', '29-03-2023 12:32:11 AM', 1),
(77, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:02:45', '29-03-2023 12:34:20 AM', 1),
(78, NULL, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:04:28', NULL, 0),
(79, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:04:34', NULL, 1),
(80, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:15:31', '29-03-2023 12:45:47 AM', 1),
(81, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:17:11', '29-03-2023 12:47:13 AM', 1),
(82, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:17:20', '29-03-2023 12:47:22 AM', 1),
(83, 25, 'sajimahmed3030@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 19:17:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`, `pic`) VALUES
(2, 'Demo User', 'Manila, Philippines', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '2020-07-05 01:55:24', ''),
(25, 'Ab rahim', 'shodorghat', 'dhaka', 'male', 'sajimahmed3030@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-15 07:28:23', '2023-03-28 19:21:09', 'upload/saikat.jpg'),
(26, 'ami nije ee', 'dhaka', 'dhaka', 'male', 'osusto@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-21 13:59:11', '2023-03-21 13:59:44', 'upload/Dr.-Tanjima-Parvin.jpg'),
(27, 'jihad', 'dhaka', 'dhaka', 'male', 'jihad3030@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-21 18:42:09', '2023-03-21 18:42:46', 'upload/Dr.-Ajoy-Kumar-Sarker.jpg'),
(28, 'rahus', 'dhaka', 'dhaka', 'male', 'med3030@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-22 14:47:10', NULL, ''),
(29, 'rahus', 'dhaka', 'dhaka', 'male', 'jimahmed3030@gmail.com', '93279e3308bdbbeed946fc965017f67a', '2023-03-28 18:21:23', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
