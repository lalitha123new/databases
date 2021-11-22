-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 04:58 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `screener_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_info_id` int(11) NOT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_info_id`, `company_address`, `company_code`, `company_name`, `email`, `phone_no`, `created_at`) VALUES
(1, 'e-city', 'LALITHA1', 'LALITHA Pvt Ltd', '', '', NULL),
(2, 'e-city', 'EHRC1', 'EHRC1', '', '', NULL),
(93, 'BANGALORE', 'BOSCH-10', 'BOSCH', 'bosch@yahoo.com', '8765432123', NULL),
(87, 'Bangalore', 'ACCENT', 'ACCENT', 'accent@yahoo.com', '8967453278', NULL),
(88, 'Bangalore', 'INFOSYS', 'INFOSYS', 'infosys@yahoo.com', '9876543213', NULL),
(86, 'Bangalore', 'WIPRO-10', 'WIPRO', 'wipro@yahoo.com', '8765412345', NULL),
(94, 'Bangalore', 'EHEALTH-11', 'EHEALTH', 'ehealth@yahoo.com', '8967453278', NULL),
(102, 'Bagaluru1, Bagaluru2', 'yui', 'meena', 'lallukrishna@yahoo.com', '9448976610', NULL),
(100, 'Bangalore', 'ABC', 'ABC', 'abc@yahoo.com', '9876543456', NULL),
(103, 'Bagaluru1, Bagaluru2', 'Dr Ram', 'mmm1234', 'lallukrishna@yahoo.com', '9448976610', '2020-02-12 05:02:11'),
(105, 'Bangalore', 'XYZ-10', 'XYZ', 'xyz@yahoo.com', '7654123456', '2020-02-12 05:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(372),
(372),
(372);

-- --------------------------------------------------------

--
-- Table structure for table `scr_responce`
--

CREATE TABLE `scr_responce` (
  `scr_responce_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `responce` varchar(255) DEFAULT NULL,
  `company_info_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scr_responce`
--

INSERT INTO `scr_responce` (`scr_responce_id`, `created_at`, `responce`, `company_info_id`) VALUES
(5, NULL, 'undefined0#1#1#1#1#1#1#1#1#0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@MN#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 2),
(6, NULL, 'undefined0#1#1#1#1#1#1#1#1#0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@MN#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 3),
(7, NULL, NULL, 0),
(8, NULL, NULL, 0),
(9, NULL, NULL, 0),
(10, NULL, NULL, 0),
(11, NULL, NULL, 0),
(12, NULL, 'undefined3#3#3#3#3#3#3#3#0##@@#No@Yes@Not at all likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@1#1#1#1#1#1#1#@@#@3@3@3@3@3@', 5),
(13, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Very likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 5),
(18, NULL, 'undefined3#3#3#3#3#3#3#3#0##@@#No@Yes@Not at all likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@1#1#1#1#1#1#1#@@#@3@3@3@3@3@', 5),
(19, NULL, 'undefined3#3#3#3#3#3#3#3#0##@@#No@Yes@Not at all likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@1#1#1#1#1#1#1#@@#@3@3@3@3@3@', 5),
(20, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Not at all likely@Yes@NM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#0#0#0#0#0#0#@@#@1@0@0@0@0@', 21),
(23, NULL, 'undefined0#1#1#1#1#1#1#1#1#0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@MNN#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#2#2#1#1#@@#@0@0@7@8@7@', 21),
(24, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nilMM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(25, NULL, 'undefined0#2#2#2#2#2#2#2#2##@@#Yes@Yes@Not at all likely@No@#@@#1-2 months#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(33, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 5),
(34, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Very likely@No@#@@#1-2 months#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(37, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 36),
(38, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@No@Somewhat likely@No@#@@#2-6 moths#@@#infer 2-6 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 36),
(39, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#No@No@Very likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#3#3#3#3#3#3#@@#@3@7@6@6@6@', 36),
(40, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nil#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 36),
(41, NULL, 'undefined0#1#1#1#1#1#1#1#1#0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(42, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@No@Somewhat likely@Yes@nnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@2@3@2@3@1@', 21),
(43, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@No@Somewhat likely@Yes@nnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(44, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@No@Somewhat likely@Yes@nnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(45, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@No@Somewhat likely@Yes@nnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@4@1@', 21),
(46, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(47, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#2#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(48, NULL, 'undefined3#3#3#3#3#3#3#3#3##@@#Yes@Yes@Very likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@3#3#3#3#3#3#3#@@#@7@7@6@7@6@', 21),
(49, NULL, 'undefined0#0#0#0#0#0#0#0#1##@@#Yes@No@Not at all likely@No@#@@#more than 1 year#@@#infer 2-4 weeks@@@@0#0#0#0#0#0#0#@@#@0@0@0@0@0@', 21),
(50, NULL, 'undefined0#0#0#0#0#0#0#0#0##@@#No@No@Somewhat likely@Yes@nm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@1@0@', 21),
(51, NULL, 'undefined0#2#2#2#2#2#2#2#2##@@#Yes@Yes@Somewhat likely@No@#@@#2-6 moths#@@#infer 2-6 months@@@@0#2#2#2#2#2#2#@@#@5@5@5@5@5@', 21),
(52, NULL, 'undefined0#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#2#@@#@3@0@0@0@0@', 21),
(53, NULL, 'undefined2#1#1#1#1#1#1#1#1##@@#Yes@No@Very likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@3#3#2#3#3#3#3#@@#@8@8@8@7@8@', 21),
(54, NULL, 'undefined1#2#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(55, NULL, 'undefined1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(56, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@HJHJ#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@3@6@4@6@', 21),
(57, NULL, 'undefined1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Very likely@Yes@SD#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#2#2#1#1#@@#@0@0@0@0@0@', 21),
(58, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#2#2#3#2#2#2#@@#@6@6@6@6@6@', 21),
(59, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#2#1#@@#@0@0@0@1@0@', 21),
(60, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@1@0@', 21),
(61, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(62, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(63, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(64, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(65, NULL, 'undefined2#2#2#2#3#2#2#2#2##@@#No@No@Somewhat likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@1#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(66, NULL, 'undefined2#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nmnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0@', 21),
(68, NULL, 'undefined1#2#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@NMM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@2#2#3#2#1#1#2#@@#@0@0@3@2@1', 21),
(69, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#2#1#@@#@0@0@2@2@0', 21),
(70, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@NMNM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#2#2#1#1#1#1#@@#@0@0@0@0@0', 21),
(71, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nil#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0', 21),
(72, NULL, 'undefined1#1#1#1#2#1#1#1#1##@@#Yes@Yes@Somewhat likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##40#female#yes', 21),
(90, NULL, 'undefined2#2#2#2#3#3#3#3#3##@@#Yes@Yes@Not at all likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#2#3#3#3#3#0#@@#@7@0@0@0@0$$##84#Male#Yes', 87),
(89, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@NMNM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#2#2#2#2#1#@@#@5@0@8@8@8$$##87#Female#No', 87),
(80, NULL, 'undefined0#3#3#3#3#3#3#3#3##@@#No@No@Very likely@No@#@@#2-6 moths#@@#infer 2-6 months@@@@3#3#3#3#3#3#3#@@#@7@7@7@7@8$$##55#Female#Yes', 5),
(79, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Very likely@Yes@nmnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@7@0@6@8$$##66#other#no', 21),
(91, NULL, 'undefined2#2#2#2#2#2#2#2#2##@@#No@No@Very likely@No@#@@#2-4 weeks#@@#infer 2-4 weeks@@@@3#3#3#3#3#3#3#@@#@8@8@8@8@7$$##56#Female#No', 88),
(92, NULL, 'undefined3#3#3#3#3#3#3#3#3##@@#Yes@Yes@Somewhat likely@Yes@dffd#@@#2-6 moths#@@#infer 1-2 months@@@@0#3#3#3#3#3#3#@@#@7@7@8@8@8$$##87#Female#No', 88),
(95, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@CXXC#@@#2-4 weeks#@@#infer 2-4 weeks@@@@2#1#1#1#1#1#1#@@#@0@0@0@0@0$$##89#Female#No', 88),
(96, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@NMM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##78#Female#No', 88),
(97, NULL, 'undefined1#1#2#2#2#2#2#2#2##@@#No@No@Very likely@No@#@@#1-2 months#@@#infer 1-2 months@@@@2#2#2#2#2#2#2#@@#@6@6@6@6@8$$##78#other#No', 86),
(98, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@ssd#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@2@2@1@0$$##78#Female#No', 86),
(99, NULL, 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#3#2#2#2#2#2#@@#@6@6@5@8@7$$##67#Female#No', 86),
(101, NULL, 'undefined1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1#1##@@#No@Yes@Very likely@No@#@@#2-4 weeks#@@#infer 1-2 months@@@@0#2#1#1#1#1#1#@@#@0@0@3@1@0$$##67#Female#No', 100),
(104, '2020-02-12 05:06:26', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@nnm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#2#1#1#1#1#@@#@0@0@0@1@1$$##45#Female#No', 100),
(107, '2020-02-25 06:34:34', 'undefined1#3#2#3#3#3#3#3#3##@@#No@Yes@Not at all likely@Yes@mn#@@#2-6 moths#@@#infer 2-6 months@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##89#Female#No', 88),
(106, '2020-02-25 06:34:34', 'undefined1#3#2#3#3#3#3#3#3##@@#No@Yes@Not at all likely@Yes@mn#@@#2-6 moths#@@#infer 2-6 months@@@@0#1#1#1#1#3#2#@@#@0@0@8@7@8$$##89#Female#No', 88),
(108, '2020-02-25 09:48:48', 'undefined1#3#2#3#3#3#3#3#3##@@#No@Yes@Not at all likely@Yes@mn#@@#2-6 moths#@@#infer 2-6 months@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##89#Female#No', 88),
(109, '2020-02-28 03:52:39', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##89#Female#No', 88),
(110, '2020-02-28 03:52:39', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mm#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##89#Female#No', 88),
(111, '2020-02-28 04:40:36', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@myuy#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@1$$##67#Female#No', 88),
(112, '2020-02-28 04:40:36', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@myuy#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##67#Female#No', 88),
(113, '2020-02-28 04:40:48', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@myuy#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##67#Female#No', 88),
(114, '2020-02-28 04:41:07', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@myuy#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##67#Female#No', 88),
(115, '2020-02-28 04:41:36', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@myuy#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##67#Female#No', 88),
(357, '2020-03-04 04:23:17', 'undefined1#1#2#1#1#1#1#1#1##@@#No@Yes@Not at all likely@Yes@SSD#@@#2-4 weeks#@@#infer 2-4 weeks@@@@#@@#@NaN@NaN@NaN@NaN@NaN$$##45#Female#Yes', 88),
(365, '2020-03-04 04:33:13', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mn#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##56#Female#No', 88),
(366, '2020-03-04 04:34:32', 'undefined0#0#0#0#0#0#0#0#0##@@#No@No@Not at all likely@Yes@MM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#0#0#0#0#0#0#@@#@0@0@0@0@0$$##27#Female#No', 88),
(367, '2020-03-04 04:43:06', 'undefined0#0#0#0#0#0#0#0#0##@@#Yes@Yes@Somewhat likely@Yes@NM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#0#0#0#0#0#0#@@#@1@1@1@1@1$$##45#Female#No', 88),
(370, '2020-03-04 05:23:40', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@MN#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##79#Female#No', 88),
(371, '2020-03-04 06:01:54', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@Yes@Somewhat likely@Yes@mnmn#@@#2-4 weeks#@@#infer 2-6 months@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##78#Female#No', 88),
(368, '2020-03-04 04:45:09', 'undefined1#1#1#1#2#2#2#2#2##@@#Yes@No@Very likely@Yes@nmnm#@@#1-2 months#@@#infer 2-4 weeks@@@@0#3#3#3#3#3#3#@@#@6@7@7@8@8$$##55#Female#No', 88),
(369, '2020-03-04 05:18:48', 'undefined1#1#1#1#1#1#1#1#1##@@#Yes@No@Not at all likely@Yes@MM#@@#2-4 weeks#@@#infer 2-4 weeks@@@@0#1#1#1#1#1#1#@@#@0@0@0@0@0$$##89#Female#No', 88);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `password`, `role`, `username`) VALUES
(1, '@dmin', 'admin', 'DecAdmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_info_id`);

--
-- Indexes for table `scr_responce`
--
ALTER TABLE `scr_responce`
  ADD PRIMARY KEY (`scr_responce_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
