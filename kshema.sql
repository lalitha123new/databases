-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 05:46 AM
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
-- Database: `kshema`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinical_visits`
--

CREATE TABLE `clinical_visits` (
  `clinical_visits_id` int(11) NOT NULL,
  `clinical_visits_uuid` varchar(200) NOT NULL,
  `patient_uuid` varchar(200) NOT NULL,
  `social_worker_id` int(11) NOT NULL,
  `visit_date` varchar(100) NOT NULL,
  `visit_type` varchar(100) NOT NULL,
  `visit_details` varchar(4000) NOT NULL,
  `followup_date` datetime NOT NULL,
  `prv_visit_uuid` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

CREATE TABLE `district_master` (
  `district_master_id` int(10) UNSIGNED NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `district_details` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_master`
--

INSERT INTO `district_master` (`district_master_id`, `district_name`, `district_details`, `created_at`) VALUES
(1, 'Koppala', '', '2021-07-07 06:44:55'),
(2, 'Chikkaballapur', '', '2021-07-07 06:45:23'),
(3, 'Tumkur', '', '2021-07-07 06:45:47'),
(4, 'Uttara Kannada', '', '2021-07-07 06:46:08'),
(5, 'Ballary ', '', '2021-07-07 06:46:30'),
(6, 'Gulbarga ', '', '2021-07-07 06:46:50'),
(7, 'Bijapur ', '', '2021-07-07 06:47:10'),
(8, 'Belgaum ', '', '2021-07-07 06:47:25'),
(9, 'Bidar ', '', '2021-07-07 06:47:41'),
(10, 'Bagalkote ', '', '2021-07-07 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `group_data`
--

CREATE TABLE `group_data` (
  `group_data_id` int(11) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  `social_worker_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_data`
--

INSERT INTO `group_data` (`group_data_id`, `taluka_id`, `social_worker_id`, `supervisor_id`, `created_at`) VALUES
(1, 1, 2, 2, '2021-09-13 06:00:53'),
(2, 2, 3, 2, '2021-09-13 06:01:22'),
(3, 3, 4, 3, '2021-09-13 06:01:43'),
(4, 4, 5, 3, '2021-09-13 06:02:08'),
(5, 5, 6, 4, '2021-09-13 06:02:30'),
(6, 6, 7, 4, '2021-09-13 06:02:52'),
(7, 7, 0, 5, '2021-09-13 06:03:16'),
(8, 8, 0, 5, '2021-09-13 06:04:06'),
(9, 9, 0, 6, '2021-09-13 06:04:27'),
(10, 10, 0, 6, '2021-09-13 06:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `kshema_base`
--

CREATE TABLE `kshema_base` (
  `kshema_base` int(10) UNSIGNED NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(200) NOT NULL,
  `taluk` varchar(200) NOT NULL,
  `serial_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kshema_base`
--

INSERT INTO `kshema_base` (`kshema_base`, `state`, `district`, `taluk`, `serial_number`) VALUES
(1, 'Karnataka', 'District1', 'Taluka1', '0'),
(2, 'Karnataka', 'Koppala ', 'Gangavathi', '0'),
(3, 'Karnataka', 'Tumkur', 'Madhugiri', '0'),
(4, 'Karnataka', 'Chikkaballapur', 'Gauribidanur', '0'),
(5, 'Karnataka', 'Uttara Kannada', 'Sirsi', '0'),
(6, 'Karnataka', 'Ballary', 'Hospete', '0'),
(7, 'Karnataka', 'Gulbarga', 'Chitapur', '0'),
(8, 'Karnataka', 'Bijapur', 'Sindgi', '0'),
(9, 'Karnataka', 'Belgaum', 'Chikodi', '0'),
(10, 'Karnataka', 'Bidar', 'Basavakalyan', '0'),
(11, 'Karnataka', 'Bagalkote', 'Jamkhandi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `notes_id` int(10) UNSIGNED NOT NULL,
  `notes_uuid` varchar(200) NOT NULL,
  `notes_message` varchar(1000) NOT NULL,
  `read_flag` int(11) NOT NULL,
  `patient_uuid` varchar(200) DEFAULT NULL,
  `sender_user_id` int(200) NOT NULL,
  `recipient_user_id` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) UNSIGNED NOT NULL,
  `patient_uuid` varchar(200) DEFAULT NULL,
  `group_data_id` int(11) NOT NULL,
  `kshema_id` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  `demographic_info` varchar(300) NOT NULL,
  `consent_arr` varchar(300) NOT NULL,
  `needs_assessment` varchar(500) NOT NULL,
  `uuid_info` varchar(300) NOT NULL,
  `status` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phc_master`
--

CREATE TABLE `phc_master` (
  `phc_id` int(11) NOT NULL,
  `phc_name` varchar(50) NOT NULL,
  `phc_details` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phc_master`
--

INSERT INTO `phc_master` (`phc_id`, `phc_name`, `phc_details`, `created_at`) VALUES
(1, 'Alakapura', '', '2021-07-07 07:05:29'),
(2, 'Alipura', '', '2021-07-07 08:02:26'),
(3, 'D.Palya', '', '2021-07-07 08:03:59'),
(4, 'Hossur', '', '2021-07-07 08:04:22'),
(5, 'Hudugur', '', '2021-07-07 08:04:46'),
(6, 'Idagur', '', '2021-07-07 08:05:02'),
(7, 'Jagareddyhalli', '', '2021-07-07 08:05:32'),
(8, 'Kallinayakanahalli', '', '2021-07-07 08:05:48'),
(9, 'Kurudi', '', '2021-07-07 08:06:02'),
(10, 'Manchenahalli', '', '2021-07-07 08:06:16'),
(11, 'Nagaragere', '', '2021-07-07 08:06:33'),
(12, 'Nakkalahalli', '', '2021-07-07 08:06:50'),
(13, 'Namagondlu', '', '2021-07-07 08:07:03'),
(14, 'Ramapura', '', '2021-07-07 08:07:25'),
(15, 'Thondebhavi', '', '2021-07-07 08:07:42'),
(16, 'Vatada hosahalli', '', '2021-07-07 08:07:57'),
(17, 'Vidhurashwatha', '', '2021-07-07 08:08:14'),
(18, 'Gedare', '', '2021-07-07 08:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `social_worker`
--

CREATE TABLE `social_worker` (
  `social_worker_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `users_id` int(11) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `taluka_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_worker`
--

INSERT INTO `social_worker` (`social_worker_id`, `first_name`, `last_name`, `users_id`, `contact_no`, `status`, `created_at`, `taluka_id`) VALUES
(2, 'social worker1', 'testpsw1', 7, '1231231231', 'active', '2021-09-13 06:13:37', 1),
(3, 'social worker2', 'testpsw2', 8, '3453453453', 'active', '2021-09-13 06:17:03', 2),
(4, 'social worker3', 'testpsw3', 9, '5675675675', 'active', '2021-09-13 06:17:59', 3),
(5, 'social worker4', 'testpsw4', 10, '7897897897', 'active', '2021-09-13 06:18:31', 4),
(6, 'social worker5', 'testpsw5', 11, '9090909090', 'active', '2021-09-13 06:19:04', 5),
(7, 'social worker6a', 'testpsw6', 12, '1201201201', 'active', '2021-09-13 06:19:38', 6);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `users_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisor_id`, `first_name`, `last_name`, `contact_no`, `users_id`, `status`, `created_at`) VALUES
(2, 'supervisor1', 'testsuper1', '9898989898', 2, 'active', '2021-09-13 05:50:45'),
(3, 'supervisor2', 'testsuper2', '123456789', 3, 'active', '2021-09-13 05:54:35'),
(4, 'supervisor3', 'testsuper3', '1234567876', 4, 'active', '2021-09-13 05:55:14'),
(5, 'supervisor4', 'testsuper4', '9876543212', 5, 'active', '2021-09-13 05:55:51'),
(6, 'supervisor5', 'testsuper5', '7676767676', 6, 'active', '2021-09-13 05:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `taluka_master`
--

CREATE TABLE `taluka_master` (
  `taluka_master_id` int(10) UNSIGNED NOT NULL,
  `taluka_name` varchar(200) NOT NULL,
  `taluka_details` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taluka_master`
--

INSERT INTO `taluka_master` (`taluka_master_id`, `taluka_name`, `taluka_details`, `created_at`) VALUES
(1, 'Gangavathi', 'Koppala', '2021-09-13 06:00:53'),
(2, 'Gauribidanur', 'Chikkaballapur', '2021-09-13 06:01:22'),
(3, 'Madhugiri', 'Tumkur', '2021-09-13 06:01:43'),
(4, 'Sirsi', 'Uttara Kannada', '2021-09-13 06:02:08'),
(5, 'Hospete', 'Ballary', '2021-09-13 06:02:30'),
(6, 'Chitapur', 'Gulbarga', '2021-09-13 06:02:52'),
(7, 'Sindgi', 'Bijapur', '2021-09-13 06:03:16'),
(8, 'Chikodi', 'Belgaum', '2021-09-13 06:04:06'),
(9, 'Basavakalyan', 'Bidar', '2021-09-13 06:04:27'),
(10, 'Jamkhandi', 'Bagalkote', '2021-09-13 06:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `taluka_supervisor`
--

CREATE TABLE `taluka_supervisor` (
  `taluka_supervisor_id` int(10) UNSIGNED NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taluka_supervisor`
--

INSERT INTO `taluka_supervisor` (`taluka_supervisor_id`, `supervisor_id`, `taluka_id`, `created_at`) VALUES
(12, 12, 16, '0000-00-00 00:00:00'),
(17, 17, 16, '2021-06-14 06:38:41'),
(18, 18, 16, '2021-06-14 06:40:22'),
(19, 19, 16, '2021-06-14 06:42:18'),
(20, 20, 17, '2021-06-14 06:48:34'),
(21, 21, 18, '2021-06-15 03:49:14'),
(23, 23, 0, '2021-08-23 03:45:54'),
(24, 2, 0, '2021-09-13 05:41:25'),
(25, 2, 0, '2021-09-13 05:50:45'),
(26, 3, 0, '2021-09-13 05:54:35'),
(27, 4, 0, '2021-09-13 05:55:14'),
(28, 5, 0, '2021-09-13 05:55:51'),
(29, 6, 0, '2021-09-13 05:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `tasks_id` int(10) UNSIGNED NOT NULL,
  `tasks_uuid` varchar(200) NOT NULL,
  `patient_uuid` varchar(200) NOT NULL,
  `task_type` int(11) NOT NULL,
  `creation_date` varchar(100) NOT NULL,
  `task_due_date` datetime DEFAULT NULL,
  `task_details` varchar(400) NOT NULL,
  `status` varchar(300) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `prev_record_uuuid` varchar(200) NOT NULL,
  `origin_record_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task_master`
--

CREATE TABLE `task_master` (
  `task_master_id` int(10) UNSIGNED NOT NULL,
  `task_name` varchar(200) NOT NULL,
  `task_details` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_master`
--

INSERT INTO `task_master` (`task_master_id`, `task_name`, `task_details`, `created_at`) VALUES
(1, 'Contact local people or resources?', 'taskdetails1', '2021-03-15 18:33:05'),
(2, 'Coordinate with NGO\'s / self-help groups/ local authorities for different needs?', 'taskdetails2', '2021-03-15 18:33:05'),
(3, 'Look for jobs in local industries?', 'taskdetails3', '2021-03-30 03:24:20'),
(4, 'Refer for skill-development?', 'taskdetails4', '2021-03-30 03:25:19'),
(5, 'Help them apply for self-employment schemes?', 'taskdetails5', '2021-03-30 03:25:49'),
(6, 'Help them apply for any other income generating activities?', 'taskdetails6', '2021-03-30 03:26:21'),
(7, 'Help them to participate in the MINREGA scheme?', 'taskdetails7', '2021-03-30 03:26:53'),
(8, 'Refer for daycare?', 'taskdetails8', '2021-03-30 03:27:19'),
(9, 'Help them participate in local social/ cultural events?', 'taskdetails9', '2021-03-30 03:27:48'),
(10, 'Support them to join, continue or go back to any educational course?', 'taskdetails10', '2021-03-30 03:28:11'),
(11, 'Help them obtain ID proof?', 'taskdtails11', '2021-03-30 03:28:33'),
(12, 'Help in applying for insurance or claiming insurance benefits?', 'taskdetails12', '2021-03-30 03:29:01'),
(13, 'Refer to a physician?', 'taskdetails13', '2021-03-30 03:29:26'),
(14, 'Legal services', 'taskdetails14', '2021-03-30 03:29:51'),
(15, 'Liaise wiith authorities?', 'taskdetails15', '2021-03-30 03:30:14'),
(16, 'Help them consult legal services?', 'taskdetails16', '2021-03-30 03:30:39'),
(17, 'Help them open bank accounts?', 'taskdetails17', '2021-03-30 03:31:02'),
(18, 'Offer them any other help(such as enrolment in Special Employment exchange, etc.)?', 'taskdetails18', '2021-03-30 03:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `udid_info`
--

CREATE TABLE `udid_info` (
  `udid_info_id` int(11) NOT NULL,
  `udid_uuid` varchar(200) NOT NULL,
  `patient_uuid` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `udid_info_obj` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact_no` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `user_name`, `first_name`, `last_name`, `password`, `role`, `email`, `contact_no`, `created_at`) VALUES
(2, 'super1', 'supervisor1', 'testsuper1', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'supervisor', 'super1@gmail.com', '9898989898', '2021-09-13 05:50:45'),
(3, 'super2', 'supervisor2', 'testsuper2', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'supervisor', 'super2@gmail.com', '123456789', '2021-09-13 05:54:35'),
(4, 'super3', 'supervisor3', 'testsuper3', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'supervisor', 'super3@gmail.com', '1234567876', '2021-09-13 05:55:14'),
(5, 'super4', 'supervisor4', 'testsuper4', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'supervisor', 'super4@gmail.com', '9876543212', '2021-09-13 05:55:51'),
(6, 'super5', 'supervisor5', 'testsuper5', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'supervisor', 'super5@gmail.com', '7676767676', '2021-09-13 05:56:21'),
(7, 'psw1', 'social worker1', 'testpsw1', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw1@gmail.com', '1231231231', '2021-09-13 06:13:37'),
(8, 'psw2', 'social worker2', 'testpsw2', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw2@gmail.com', '3453453453', '2021-09-13 06:17:03'),
(9, 'psw3', 'social worker3', 'testpsw3', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw3@gmail.com', '5675675675', '2021-09-13 06:17:59'),
(10, 'psw4', 'social worker4', 'testpsw4', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw4@gmail.com', '7897897897', '2021-09-13 06:18:31'),
(11, 'psw5', 'social worker5', 'testpsw5', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw5@gmail.com', '9090909090', '2021-09-13 06:19:04'),
(12, 'psw6', 'social worker6a', 'testpsw6', 'dc1ce21c30c3881c94652fac3ea5bbe2dca0819ed4d9e3b219c581dfee0b36b0', 'psw', 'psw6@gmail.com', '1201201201', '2021-09-13 06:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `usersessiondb`
--

CREATE TABLE `usersessiondb` (
  `id` int(11) NOT NULL,
  `sessionToken` varchar(1000) NOT NULL,
  `userId` varchar(1000) NOT NULL,
  `lastLogin` date NOT NULL,
  `expiryAt` date NOT NULL,
  `logoutAt` date NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinical_visits`
--
ALTER TABLE `clinical_visits`
  ADD PRIMARY KEY (`clinical_visits_id`);

--
-- Indexes for table `district_master`
--
ALTER TABLE `district_master`
  ADD PRIMARY KEY (`district_master_id`);

--
-- Indexes for table `group_data`
--
ALTER TABLE `group_data`
  ADD PRIMARY KEY (`group_data_id`);

--
-- Indexes for table `kshema_base`
--
ALTER TABLE `kshema_base`
  ADD PRIMARY KEY (`kshema_base`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`notes_id`),
  ADD UNIQUE KEY `notes_uuid` (`notes_uuid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `phc_master`
--
ALTER TABLE `phc_master`
  ADD PRIMARY KEY (`phc_id`);

--
-- Indexes for table `social_worker`
--
ALTER TABLE `social_worker`
  ADD PRIMARY KEY (`social_worker_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- Indexes for table `taluka_master`
--
ALTER TABLE `taluka_master`
  ADD PRIMARY KEY (`taluka_master_id`);

--
-- Indexes for table `taluka_supervisor`
--
ALTER TABLE `taluka_supervisor`
  ADD PRIMARY KEY (`taluka_supervisor_id`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `taluka_id` (`taluka_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`tasks_id`);

--
-- Indexes for table `task_master`
--
ALTER TABLE `task_master`
  ADD PRIMARY KEY (`task_master_id`);

--
-- Indexes for table `udid_info`
--
ALTER TABLE `udid_info`
  ADD PRIMARY KEY (`udid_info_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinical_visits`
--
ALTER TABLE `clinical_visits`
  MODIFY `clinical_visits_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district_master`
--
ALTER TABLE `district_master`
  MODIFY `district_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `group_data`
--
ALTER TABLE `group_data`
  MODIFY `group_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kshema_base`
--
ALTER TABLE `kshema_base`
  MODIFY `kshema_base` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `notes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_worker`
--
ALTER TABLE `social_worker`
  MODIFY `social_worker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taluka_master`
--
ALTER TABLE `taluka_master`
  MODIFY `taluka_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `taluka_supervisor`
--
ALTER TABLE `taluka_supervisor`
  MODIFY `taluka_supervisor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `tasks_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_master`
--
ALTER TABLE `task_master`
  MODIFY `task_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `udid_info`
--
ALTER TABLE `udid_info`
  MODIFY `udid_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
