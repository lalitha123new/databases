-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 07:36 AM
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
-- Database: `hitham`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(45) NOT NULL,
  `admin_username` varchar(45) NOT NULL DEFAULT 'hitham',
  `admin_password` varchar(45) NOT NULL DEFAULT '92668751'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
('0', 'hitham', '1450575459');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL,
  `playlist_name` varchar(45) NOT NULL,
  `playlist_status` varchar(45) NOT NULL DEFAULT 'active',
  `teacher_pk` int(11) DEFAULT NULL,
  `playlist_color` varchar(15) DEFAULT '#0027ff',
  `playlist_pic_url` varchar(150) DEFAULT 'https://drive.google.com/uc?export=download&id=0BwtDpsO0CtJZbm9iNUNMTXNTX0k'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlist_id`, `playlist_name`, `playlist_status`, `teacher_pk`, `playlist_color`, `playlist_pic_url`) VALUES
(53, 'Twinkle', 'active', 63, '#ff0080', 'https://drive.google.com/uc?export=download&id=0BwtDpsO0CtJZbm9iNUNMTXNTX0k'),
(57, 'kuzhaloothi', 'active', 63, '#4286f4', 'http://localhost:8080/hitham/images/kuzhaloothi_20190515123433.jpg'),
(165, 'KRISHNA NEE BEGENA ', 'active', 64, '#00ffff', 'http://localhost:8080/hitham/images/KRISHNA NEE BEGENA _20190515123416.jpg'),
(166, 'RAMAA SREERAMA', 'active', 64, '#00ff80', 'http://localhost:8080/hitham/images/RAMAA SREERAMA_20190506143325.png'),
(167, 'Vaane vaane', 'active', 64, '#8080ff', 'http://localhost:8080/hitham/images/mn_20190506143723.png'),
(168, 'Vaane vaane', 'active', 64, '#00ff80', 'http://localhost:8080/hitham/images/mn_20190506143739.png'),
(169, 'JANAKEE JAANE', 'active', 64, '#80ff80', 'http://localhost:8080/hitham/images/JANAKEE JAANE_20190507090546.png'),
(171, 'BHAJA GOVINDHAM', 'active', 64, '#ff80ff', 'http://localhost:8080/hitham/images/BHAJA GOVINDHAM_20190513093539.png'),
(172, 'Leelavathi', 'active', 64, '#0080ff', 'http://localhost:8080/hitham/images/Leelavathi_20190515123254.png'),
(173, 'Leelavathi1', 'active', 64, '#ff80c0', 'http://localhost:8080/hitham/images/Leelavathi1_20190515123322.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recording`
--

CREATE TABLE `recording` (
  `recording_id` int(11) NOT NULL,
  `recording_name` varchar(500) DEFAULT NULL,
  `recording_pic_url` varchar(500) DEFAULT NULL,
  `recording_color` varchar(20) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `recording_status` varchar(12) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recording`
--

INSERT INTO `recording` (`recording_id`, `recording_name`, `recording_pic_url`, `recording_color`, `song_id`, `recording_status`) VALUES
(8, 'Manasa ', 'http://localhost:8080/hitham/images/Manasa _20190514114517.png', '#73ffab', 13, 'active'),
(10, 'Alaipaayuthe', 'http://localhost:8080/hitham/images/Alaipaayuthe_20190514114539.png', '#f0afe9', 16, 'active'),
(12, 'CHOOTHAMURARE', 'http://localhost:8080/hitham/images/CHOOTHAMURARE_20190514090525.png', '#00ffff', 16, 'active'),
(13, 'KRISHNA NEE BEGENE1', 'http://localhost:8080/hitham/images/KRISHNA NEE BEGENE1_20190514114620.png', '#f0ffd4', 13, 'active'),
(15, 'mounam', 'http://localhost:8080/hitham/images/mounam_20190514114651.png', '#80ff00', 13, 'active'),
(18, 'oodi vaa ', 'http://localhost:8080/hitham/images/oodi vaa _20190514114939.png', '#ccccff', 16, 'active'),
(21, 'sa re ga ', 'http://localhost:8080/hitham/images/sa re ga _20190514114957.png', '#ff8040', 16, 'active'),
(22, 'sopanam', 'http://localhost:8080/hitham/images/sopanam_20190515123514.jpg', '#0080ff', 17, 'active'),
(23, 'balakrishne', 'http://localhost:8080/hitham/images/balakrishne_20190514114552.png', '#ffff80', 15, 'active'),
(24, 'bhaj', 'https://drive.google.com/uc?export=download&id=0BwtDpsO0CtJZWGpSSUhkYmk5YWc', '#ff0000', 14, 'active'),
(36, 'BHAJ ', 'http://localhost:8080/hitham/images/BHAJ _20190506124930.png', '#ff0000', 14, 'active'),
(43, 'kanna kanna', 'http://localhost:8080/hitham/images/kanna kanna_20190507091325.png', '#ff0000', 13, 'active'),
(52, 'mounam', 'http://localhost:8080/hitham/images/mounam_20190506143919.png', '#ff0000', 13, 'active'),
(53, 'choothamurare1', 'http://localhost:8080/hitham/images/choothamurare1_20190507091255.png', '#ff0000', 13, 'active'),
(56, 'BHAJ BHAJ MANASArecording1', 'http://localhost:8080/hitham/images/BHAJ BHAJ MANASArecording1_20190513093658.png', '#ff0000', 14, 'active'),
(57, 'CHOOTHAMURARE234', 'http://localhost:8080/hitham/images/CHOOTHAMURARE234_20190515123337.mp3', '#ff0000', 13, 'active'),
(58, 'CHOOTHAMURARE5656', 'http://localhost:8080/hitham/images/CHOOTHAMURARE5656_20190515123354.jpg', '#ff0000', 13, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `recording_playlist_mapping`
--

CREATE TABLE `recording_playlist_mapping` (
  `recording_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `recording_playlist_mapping_status` varchar(45) NOT NULL DEFAULT 'active',
  `recording_playlist_mapping_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recording_playlist_mapping`
--

INSERT INTO `recording_playlist_mapping` (`recording_id`, `playlist_id`, `recording_playlist_mapping_status`, `recording_playlist_mapping_id`) VALUES
(8, 53, 'active', 27),
(13, 57, 'active', 31),
(10, 53, 'active', 33),
(15, 57, 'deactivated', 36),
(13, 53, 'active', 37),
(12, 53, 'active', 38),
(15, 53, 'active', 43),
(10, 57, 'active', 59),
(15, 165, 'active', 65),
(43, 53, 'active', 66),
(18, 171, 'active', 67),
(23, 53, 'active', 68),
(8, 165, 'active', 69),
(18, 165, 'active', 70),
(18, 53, 'deactivated', 71),
(21, 53, 'deactivated', 72),
(22, 53, 'active', 73),
(52, 53, 'active', 74);

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(45) NOT NULL,
  `song_url` varchar(500) NOT NULL,
  `song_length` int(255) NOT NULL DEFAULT 200,
  `song_singer` varchar(45) DEFAULT NULL,
  `song_taal` varchar(45) DEFAULT NULL,
  `song_composer` varchar(45) DEFAULT NULL,
  `song_raaga` varchar(45) DEFAULT NULL,
  `song_status` varchar(45) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `song_url`, `song_length`, `song_singer`, `song_taal`, `song_composer`, `song_raaga`, `song_status`) VALUES
(13, 'CHOOTHAMURARE', 'http://localhost:8080/hitham/images/CHOOTHAMURARE_20190515131714.mp3', 250, 'SPB', 'trital', 'Ilayaraja', 'aashavari', 'active'),
(14, 'BHAJ BHAJ MANASA', 'http://localhost:8080/hitham/images/Devaa_20190515113820.mp3', 300, 'srinivas', 'kaharva', 'ramanujam', 'gauri', 'active'),
(15, 'RAMAKRISHNARU', 'http://localhost:8080/hitham/images/RAMAKRISHNARU_20190515123101.mp3', 170, 'Yesudas', 'trit', 'manna dey', 'durga', 'active'),
(16, 'RECODING', 'http://localhost:8080/hitham/images/RECODING_20190515115351.mp3', 300, 'chitra', 'fafa', 'janaki', 'bhairavi', 'active'),
(17, 'KRISHNA NEE BEGENE', 'https://dwd', 250, 'janaki', 'wewqe', 'wwwr', 'madhuvanti', 'active'),
(18, 'Ramaa', 'http://localhost:8080/hitham/images/Ramaa_20190515123147.mp3', 200, 'Chitra', 'sss', 'Ilayaraja', 'Bhairavi', 'active'),
(19, 'Bhaja govindham', 'http://localhost:8080/hitham/images/Bhaja govindham_20190515123203.mp3', 200, 'Janaki', 'ddd', 'Mannadey', 'Bhairavi', 'active'),
(20, 'Kananunnee', 'C:Usersadmineclipse-workspace.metadata.pluginsorg.eclipse.wst.server.core	mp1wtpwebappshithamimages/Kananunnee_20190515112815.mp3', 200, 'c', 'ddd', 'Ilayaraja', 'Bhairavi', 'active'),
(21, 'Devaa', 'http://localhost:8080/hitham/images/Devaa_20190515113820.mp3', 200, 'Janaki', 'fff', 'Mannadey', 'Bhairavi', 'active'),
(22, 'Ramaa Sreeramm', 'http://localhost:8080/hitham/images/Ramaa Sreeramm_20190515115305.mp3', 200, 'Chitra', 'sss', 'Ilayaraja', 'Bhairavi', 'active'),
(23, 'Leelavathi', 'http://localhost:8080/hitham/images/Leelavathi_20190515121346.mp3', 200, 'Janaki', 'Kanchana', 'Vairamuthu', 'Kalyani', 'active'),
(24, 'Kanakaambaram', 'http://localhost:8080/hitham/images/Kanakaambaram_20190515123834.MP3', 200, 'Sujatha', 'AAA', 'Ilayaraja', 'Bhairavi', 'active'),
(25, 'Vaane Vaane', 'http://localhost:8080/hitham/images/Vaane Vaane_20190515123914.mp3', 200, 'Yesudas', 'ooo', 'Ilayaraja', 'Kalyani', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_name` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `student_profile` varchar(45) DEFAULT 'default',
  `student_password` varchar(45) NOT NULL,
  `student_status` varchar(45) NOT NULL DEFAULT 'active',
  `student_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_name`, `student_id`, `student_profile`, `student_password`, `student_status`, `student_pk`) VALUES
('ram', 'ram', 'p1', '112670', 'active', 11),
('manu', 'manu', 'p2', '3343963', 'active', 12),
('sonu', 'sonu', 'p1', '3536163', 'active', 13),
('meena', 'meena', '', '1509442', 'active', 14),
('ravi', 'ravi', 'ravi', '3493154', 'active', 15),
('raj', 'raj', 'raj', '112667', 'active', 16),
('vinu', 'vinu', '123', '48690', 'active', 17);

-- --------------------------------------------------------

--
-- Table structure for table `student_activity`
--

CREATE TABLE `student_activity` (
  `student_activity_id` int(11) NOT NULL,
  `student_pk` int(11) DEFAULT NULL,
  `recording_id` int(11) DEFAULT NULL,
  `student_activity_type` varchar(45) DEFAULT NULL,
  `student_activity_time` int(45) DEFAULT NULL,
  `student_activity_timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_activity`
--

INSERT INTO `student_activity` (`student_activity_id`, `student_pk`, `recording_id`, `student_activity_type`, `student_activity_time`, `student_activity_timestamp`) VALUES
(21, 11, 8, 'PLAY', 0, '2018-10-02 19:21:38'),
(22, 11, 8, 'STOPPED', 240, '2018-10-02 19:21:38'),
(29, 11, 10, 'PLAY', 5, '2018-11-01 06:45:46'),
(30, 11, 10, 'STOPPED', 240, '2018-11-01 06:45:46'),
(33, 12, 8, 'PLAY', 0, '2018-11-01 10:47:22'),
(34, 12, 8, 'STOPPED', 300, '2018-11-01 10:47:22'),
(35, 12, 10, 'PLAY', 0, '2018-11-01 10:49:47'),
(36, 12, 10, 'STOPPED', 100, '2018-11-01 10:49:47'),
(39, 13, 8, 'PLAY', 300, '2019-04-12 09:28:55'),
(40, 13, 8, 'PLAY', 300, '2019-05-14 08:15:58'),
(41, 13, 8, 'PAUSED', 300, '2019-05-14 08:16:04'),
(42, 13, 8, 'PAUSED', 300, '2019-05-14 08:25:46'),
(43, 13, 8, 'PLAY', 300, '2019-05-14 08:26:17'),
(44, 13, 8, 'PAUSED', 300, '2019-05-14 08:26:21'),
(45, 13, 8, 'PLAY', 300, '2019-05-14 08:26:44'),
(46, 13, 8, 'PAUSED', 300, '2019-05-14 08:26:49'),
(47, 13, 8, 'PLAY', 300, '2019-05-14 08:26:52'),
(48, 13, 8, 'PAUSED', 300, '2019-05-14 08:26:53'),
(49, 13, 8, 'PLAY', 300, '2019-05-14 08:30:06'),
(50, 13, 8, 'PAUSED', 300, '2019-05-14 08:30:14'),
(51, 13, 8, 'PLAY', 300, '2019-05-14 08:30:20'),
(52, 13, 8, 'PAUSED', 300, '2019-05-14 08:30:22'),
(53, 13, 8, 'PLAY', 0, '2019-05-14 08:33:16'),
(54, 13, 8, 'PLAY', 0, '2019-05-14 08:34:51'),
(55, 13, 8, 'PLAY', 300, '2019-05-14 08:36:18'),
(56, 13, 8, 'PAUSED', 300, '2019-05-14 08:36:23'),
(57, 13, 8, 'PLAY', 300, '2019-05-14 08:36:43'),
(58, 13, 8, 'PAUSED', 300, '2019-05-14 08:36:47'),
(59, 13, 8, 'PLAY', 300, '2019-05-14 08:37:15'),
(60, 13, 8, 'PAUSED', 300, '2019-05-14 08:37:18'),
(61, 13, 8, 'PLAY', 300, '2019-05-14 08:37:24'),
(62, 13, 8, 'PAUSED', 300, '2019-05-14 08:37:28'),
(63, 13, 8, '0', 300, '2019-05-14 08:37:56'),
(64, 13, 8, 'PAUSED', 300, '2019-05-14 08:38:03'),
(65, 13, 8, '6.71', 300, '2019-05-14 08:38:05'),
(66, 13, 8, 'PAUSED', 300, '2019-05-14 08:38:06'),
(67, 13, 8, 'PLAY', 300, '2019-05-14 08:40:28'),
(68, 13, 8, 'PAUSED', 300, '2019-05-14 08:40:30'),
(69, 13, 8, 'PLAY', 300, '2019-05-14 08:40:31'),
(70, 13, 8, 'PAUSED', 300, '2019-05-14 08:40:35'),
(71, 13, 8, 'PLAY', 0, '2019-05-14 08:41:26'),
(72, 13, 8, 'PAUSED', 4, '2019-05-14 08:41:31'),
(73, 13, 8, 'PLAY', 4, '2019-05-14 08:41:40'),
(74, 13, 8, 'PAUSED', 11, '2019-05-14 08:41:46'),
(75, 13, 8, 'PLAY', 11, '2019-05-14 08:42:31'),
(76, 13, 8, 'PAUSED', 24, '2019-05-14 08:42:45'),
(77, 13, 23, 'PLAY', 0, '2019-05-14 08:58:53'),
(78, 13, 23, 'PAUSED', 7, '2019-05-14 08:59:01'),
(79, 13, 23, 'PLAY', 7, '2019-05-14 08:59:03'),
(80, 13, 23, 'PAUSED', 17, '2019-05-14 08:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `student_playlist_assignment`
--

CREATE TABLE `student_playlist_assignment` (
  `student_playlist_assignment_id` int(11) NOT NULL,
  `student_pk` int(11) NOT NULL,
  `teacher_pk` int(11) DEFAULT NULL,
  `playlist_id` int(11) DEFAULT NULL,
  `student_playlist_assignment_time` timestamp NULL DEFAULT current_timestamp(),
  `student_playlist_assignment_status` varchar(45) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_playlist_assignment`
--

INSERT INTO `student_playlist_assignment` (`student_playlist_assignment_id`, `student_pk`, `teacher_pk`, `playlist_id`, `student_playlist_assignment_time`, `student_playlist_assignment_status`) VALUES
(110, 13, 63, 53, '2019-03-02 08:07:55', 'active'),
(122, 13, 63, 57, '2019-03-04 09:34:56', 'deactivated'),
(126, 11, 63, 53, '2019-03-06 07:27:18', 'active'),
(129, 15, 64, 53, '2019-03-08 16:08:37', 'active'),
(130, 15, 64, 57, '2019-03-10 08:50:51', 'deactivated'),
(143, 14, 64, 53, '2019-04-10 04:35:51', 'active'),
(154, 11, 64, 57, '2019-05-06 09:03:31', 'active'),
(155, 11, 64, 168, '2019-05-06 09:08:29', 'deactivated'),
(156, 13, 64, 165, '2019-05-06 09:10:46', 'active'),
(157, 15, 64, 166, '2019-05-06 09:10:53', 'active'),
(158, 11, 64, 165, '2019-05-07 03:32:40', 'active'),
(159, 11, 64, 167, '2019-05-07 03:36:02', 'deactivated'),
(160, 11, 64, 171, '2019-05-13 04:06:07', 'deactivated');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` varchar(45) NOT NULL,
  `teacher_name` varchar(45) NOT NULL,
  `teacher_password` varchar(45) DEFAULT NULL,
  `teacher_pk` int(11) NOT NULL,
  `teacher_status` varchar(45) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_password`, `teacher_pk`, `teacher_status`) VALUES
('teacher03', 'Mrs.Dixit', '', 4, 'active'),
('hbj', 'g', 'jknkjn', 5, 'deactivated'),
('rachit', 'rachit', '-938609921', 6, 'active'),
('simha', 'simha', '1450575459', 63, 'active'),
('lalitha', 'lalitha', '3314098', 64, 'active'),
('meera', 'meera', '103773372', 66, 'active'),
('teacher1', 'teacher1', '48690', 67, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_mapping`
--

CREATE TABLE `teacher_student_mapping` (
  `teacher_student_mapping_id` int(11) NOT NULL,
  `teacher_pk` int(11) DEFAULT NULL,
  `student_pk` int(11) DEFAULT NULL,
  `teacher_student_mapping_status` varchar(45) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_student_mapping`
--

INSERT INTO `teacher_student_mapping` (`teacher_student_mapping_id`, `teacher_pk`, `student_pk`, `teacher_student_mapping_status`) VALUES
(9, 6, 11, 'active'),
(10, 6, 12, 'active'),
(11, 63, 13, 'active'),
(12, 4, 14, 'active'),
(13, 63, 11, 'active'),
(14, 64, 15, 'active'),
(16, 66, 16, 'active'),
(17, 64, 13, 'active'),
(18, 64, 11, 'active'),
(19, 64, 14, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id_UNIQUE` (`admin_id`),
  ADD UNIQUE KEY `admin_username_UNIQUE` (`admin_username`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `fk_playlist_1_idx` (`teacher_pk`);

--
-- Indexes for table `recording`
--
ALTER TABLE `recording`
  ADD PRIMARY KEY (`recording_id`),
  ADD KEY `fk_recording_1_idx` (`song_id`);

--
-- Indexes for table `recording_playlist_mapping`
--
ALTER TABLE `recording_playlist_mapping`
  ADD PRIMARY KEY (`recording_playlist_mapping_id`),
  ADD KEY `fk_recording_playlist_mapping_1_idx` (`playlist_id`),
  ADD KEY `fk_recording_playlist_mapping_2_idx` (`recording_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_pk`),
  ADD UNIQUE KEY `student_id_UNIQUE` (`student_id`);

--
-- Indexes for table `student_activity`
--
ALTER TABLE `student_activity`
  ADD PRIMARY KEY (`student_activity_id`),
  ADD KEY `fk_student_activity_1_idx` (`student_pk`),
  ADD KEY `fk_student_activity_2_idx` (`recording_id`);

--
-- Indexes for table `student_playlist_assignment`
--
ALTER TABLE `student_playlist_assignment`
  ADD PRIMARY KEY (`student_playlist_assignment_id`),
  ADD KEY `fk_student_playlist_assignment_1_idx` (`student_pk`),
  ADD KEY `fk_student_playlist_assignment_2_idx` (`teacher_pk`),
  ADD KEY `fk_student_playlist_assignment_3_idx` (`playlist_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_pk`),
  ADD UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`);

--
-- Indexes for table `teacher_student_mapping`
--
ALTER TABLE `teacher_student_mapping`
  ADD PRIMARY KEY (`teacher_student_mapping_id`),
  ADD KEY `fk_teacher_student_mapping_1_idx` (`student_pk`),
  ADD KEY `fk_teacher_student_mapping_2_idx` (`teacher_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `recording`
--
ALTER TABLE `recording`
  MODIFY `recording_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `recording_playlist_mapping`
--
ALTER TABLE `recording_playlist_mapping`
  MODIFY `recording_playlist_mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_activity`
--
ALTER TABLE `student_activity`
  MODIFY `student_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `student_playlist_assignment`
--
ALTER TABLE `student_playlist_assignment`
  MODIFY `student_playlist_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `teacher_student_mapping`
--
ALTER TABLE `teacher_student_mapping`
  MODIFY `teacher_student_mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `fk_playlist_1` FOREIGN KEY (`teacher_pk`) REFERENCES `teacher` (`teacher_pk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recording`
--
ALTER TABLE `recording`
  ADD CONSTRAINT `fk_recording_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recording_playlist_mapping`
--
ALTER TABLE `recording_playlist_mapping`
  ADD CONSTRAINT `fk_recording_playlist_mapping_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_recording_playlist_mapping_2` FOREIGN KEY (`recording_id`) REFERENCES `recording` (`recording_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_activity`
--
ALTER TABLE `student_activity`
  ADD CONSTRAINT `fk_student_activity_1` FOREIGN KEY (`student_pk`) REFERENCES `student` (`student_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student_activity_2` FOREIGN KEY (`recording_id`) REFERENCES `recording` (`recording_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_playlist_assignment`
--
ALTER TABLE `student_playlist_assignment`
  ADD CONSTRAINT `fk_student_playlist_assignment_1` FOREIGN KEY (`student_pk`) REFERENCES `student` (`student_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student_playlist_assignment_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student_playlist_assignment_3` FOREIGN KEY (`teacher_pk`) REFERENCES `teacher` (`teacher_pk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_student_mapping`
--
ALTER TABLE `teacher_student_mapping`
  ADD CONSTRAINT `fk_teacher_student_mapping_1` FOREIGN KEY (`student_pk`) REFERENCES `student` (`student_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teacher_student_mapping_2` FOREIGN KEY (`teacher_pk`) REFERENCES `teacher` (`teacher_pk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
