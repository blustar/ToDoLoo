-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 27, 2024 at 02:05 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allowance`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `badge_id` int(11) NOT NULL,
  `filename` varchar(120) NOT NULL,
  `video` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`badge_id`, `filename`, `video`, `status`) VALUES
(1, 'img/badge-1.jpg', '', 1),
(2, 'img/badge-2.jpg', 'img/purple-gem-butterfly.mp4', 1),
(3, 'img/badge-3.jpg', '', 1),
(4, 'img/badge-4.jpg', '', 1),
(5, 'img/badge-5.jpg', '', 0),
(6, 'img/badge-6.jpg', 'img/badge-6-video.mp4', 1),
(7, 'img/badge-7.jpg', '', 1),
(8, 'img/badge-8.jpg', '', 0),
(9, 'img/badge-9.jpg', '', 1),
(10, 'img/badge-10.jpg', '', 1),
(11, 'img/badge-11.jpg', 'img/badge-11-video.mp4', 1),
(12, 'img/badge-12.jpg', '', 1),
(13, 'img/badge-13.jpg', '', 1),
(14, 'img/badge-14.jpg', 'img/badge-14-video.mp4', 1),
(15, 'img/badge-15.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ProfilePhotos`
--

CREATE TABLE `ProfilePhotos` (
  `PhotoId` int(11) NOT NULL,
  `PhotoURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProfilePhotos`
--

INSERT INTO `ProfilePhotos` (`PhotoId`, `PhotoURL`) VALUES
(1, 'img/profile-avatar-1.png'),
(2, 'img/profile-avatar-2.png'),
(3, 'img/profile-avatar-9.png'),
(4, 'img/profile-avatar-10.png'),
(5, 'img/profile-avatar-5.png'),
(6, 'img/profile-avatar-6.png'),
(7, 'img/profile-avatar-7.png'),
(8, 'img/profile-avatar-8.png'),
(9, 'img/profile-avatar-13.png'),
(10, 'img/profile-avatar-14.png');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`) VALUES
(1, 'Mornings'),
(2, 'Evenings');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `fontSize` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `section_id`, `name`, `type`, `fontSize`) VALUES
(11, 1, 'Bed', 'make-bed', '2'),
(12, 1, 'Breakfast', 'brush-teeth', '2'),
(13, 2, 'Homework', 'homework', '2'),
(14, 1, 'Day Teeth', 'brush-teeth', '2'),
(15, 1, 'Dressed', 'get-dressed', '2'),
(16, 1, 'On-time', 'leave-on-time', '2'),
(17, 2, 'Dinner', 'get-dressed', '2'),
(18, 2, 'Tidy Up', 'tidy-up', '2'),
(19, 2, 'Night Teeth', 'brush-teeth-night', '2'),
(20, 2, 'Pajamas', 'pajamas', '2');

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_status`
--

INSERT INTO `task_status` (`id`, `task_name`, `status`, `timestamp`, `user_id`) VALUES
(14, 'Bed', 'done', '2023-11-27 15:28:48', 1),
(15, 'Breakfast', 'done', '2023-11-27 15:28:49', 1),
(16, 'Dressed', 'done', '2023-11-27 15:29:20', 2),
(17, 'Day Teeth', 'done', '2023-11-27 15:29:21', 2),
(18, 'Bed', 'not_done', '2023-11-27 15:33:19', 1),
(19, 'Bed', 'done', '2023-11-27 15:33:20', 1),
(20, 'Breakfast', 'not_done', '2023-11-27 15:33:22', 1),
(21, 'Breakfast', 'done', '2023-11-27 15:33:22', 1),
(22, 'Dressed', 'done', '2023-11-27 15:33:24', 1),
(23, 'Day Teeth', 'done', '2023-11-27 15:33:27', 1),
(24, 'Breakfast', 'done', '2023-11-27 15:38:57', 2),
(25, 'Bed', 'done', '2023-11-27 15:38:58', 2),
(26, 'Breakfast', 'not_done', '2023-11-27 15:39:40', 1),
(27, 'Breakfast', 'done', '2023-11-27 21:42:08', 1),
(28, 'Bed', 'done', '2024-03-27 10:57:25', 1),
(29, 'Breakfast', 'done', '2024-03-27 10:57:27', 1),
(30, 'Day Teeth', 'done', '2024-03-27 10:59:30', 1),
(31, 'Dressed', 'done', '2024-03-27 10:59:31', 1),
(32, 'Bed', 'done', '2024-03-27 11:08:27', 2),
(33, 'Breakfast', 'not_done', '2024-03-27 11:08:29', 1),
(34, 'Breakfast', 'done', '2024-03-27 11:08:30', 1),
(35, 'Bed', 'not_done', '2024-03-27 11:11:13', 1),
(36, 'Bed', 'done', '2024-03-27 11:11:14', 1),
(37, 'Breakfast', 'not_done', '2024-03-27 11:11:14', 1),
(38, 'Breakfast', 'done', '2024-03-27 11:11:15', 1),
(39, 'Breakfast', 'done', '2024-03-27 11:11:18', 2),
(40, 'Breakfast', 'not_done', '2024-03-27 11:11:18', 2),
(41, 'Dressed', 'done', '2024-03-27 11:11:19', 2),
(42, 'Dressed', 'not_done', '2024-03-27 11:11:19', 2),
(43, 'Breakfast', 'done', '2024-03-27 11:13:25', 2),
(44, 'Breakfast', 'not_done', '2024-03-27 11:13:26', 2),
(45, 'Bed', 'not_done', '2024-03-27 11:13:26', 2),
(46, 'Bed', 'done', '2024-03-27 11:13:27', 2),
(47, 'Bed', 'not_done', '2024-03-27 11:13:28', 2),
(48, 'Day Teeth', 'done', '2024-03-27 11:13:29', 2),
(49, 'Day Teeth', 'not_done', '2024-03-27 11:13:29', 2),
(50, 'Dressed', 'done', '2024-03-27 11:13:30', 2),
(51, 'Dressed', 'not_done', '2024-03-27 11:13:30', 2),
(52, 'Breakfast', 'done', '2024-03-27 11:16:27', 2),
(53, 'Breakfast', 'not_done', '2024-03-27 11:16:28', 2),
(54, 'Breakfast', 'done', '2024-03-27 11:18:02', 2),
(55, 'Breakfast', 'not_done', '2024-03-27 11:18:02', 2),
(56, 'Bed', 'done', '2024-03-27 11:18:03', 2),
(57, 'Breakfast', 'not_done', '2024-03-27 11:19:29', 1),
(58, 'Bed', 'not_done', '2024-03-27 11:19:29', 1),
(59, 'Day Teeth', 'not_done', '2024-03-27 11:19:30', 1),
(60, 'Dressed', 'not_done', '2024-03-27 11:19:30', 1),
(61, 'Breakfast', 'done', '2024-03-27 11:19:30', 1),
(62, 'Breakfast', 'not_done', '2024-03-27 11:19:31', 1),
(63, 'Bed', 'done', '2024-03-27 11:19:32', 1),
(64, 'Bed', 'not_done', '2024-03-27 11:19:32', 1),
(65, 'Dressed', 'done', '2024-03-27 11:19:33', 1),
(66, 'Dressed', 'not_done', '2024-03-27 11:19:33', 1),
(67, 'On-time', 'done', '2024-03-27 11:19:37', 1),
(68, 'Breakfast', 'done', '2024-03-27 11:21:08', 1),
(69, 'Dressed', 'done', '2024-03-27 11:21:09', 1),
(70, 'Day Teeth', 'done', '2024-03-27 11:21:11', 1),
(71, 'Bed', 'done', '2024-03-27 11:21:13', 1),
(72, 'Bed', 'not_done', '2024-03-27 11:21:13', 1),
(73, 'Breakfast', 'done', '2024-03-27 11:22:18', 2),
(74, 'Breakfast', 'not_done', '2024-03-27 11:22:19', 2),
(75, 'Dressed', 'done', '2024-03-27 11:22:20', 2),
(76, 'Dressed', 'not_done', '2024-03-27 11:22:20', 2),
(77, 'Dressed', 'done', '2024-03-27 11:22:21', 2),
(78, 'Bed', 'done', '2024-03-27 11:24:07', 1),
(79, 'Bed', 'not_done', '2024-03-27 11:24:07', 1),
(80, 'Breakfast', 'not_done', '2024-03-27 11:24:08', 1),
(81, 'Breakfast', 'done', '2024-03-27 11:24:08', 1),
(82, 'Breakfast', 'not_done', '2024-03-27 11:24:09', 1),
(83, 'Dressed', 'not_done', '2024-03-27 11:24:09', 1),
(84, 'Day Teeth', 'not_done', '2024-03-27 11:24:10', 1),
(85, 'Dressed', 'done', '2024-03-27 11:24:11', 1),
(86, 'On-time', 'not_done', '2024-03-27 11:24:12', 1),
(87, 'Night Teeth', 'done', '2024-03-27 11:24:15', 1),
(88, 'Dinner', 'done', '2024-03-27 11:24:15', 1),
(89, 'Homework', 'done', '2024-03-27 11:24:16', 1),
(90, 'Bed', 'done', '2024-03-27 11:33:44', 1),
(91, 'Breakfast', 'done', '2024-03-27 11:33:45', 1),
(92, 'Bed', 'not_done', '2024-03-27 11:33:46', 1),
(93, 'Breakfast', 'not_done', '2024-03-27 11:33:47', 1),
(94, 'Dressed', 'not_done', '2024-03-27 11:33:47', 1),
(95, 'Day Teeth', 'done', '2024-03-27 11:33:48', 1),
(96, 'Breakfast', 'done', '2024-03-27 11:33:49', 1),
(97, 'Bed', 'done', '2024-03-27 11:33:49', 1),
(98, 'Breakfast', 'not_done', '2024-03-27 11:34:39', 1),
(99, 'Breakfast', 'done', '2024-03-27 11:34:39', 1),
(100, 'Bed', 'not_done', '2024-03-27 11:34:40', 1),
(101, 'Bed', 'done', '2024-03-27 11:34:41', 1),
(102, 'Dressed', 'done', '2024-03-27 11:37:55', 1),
(103, 'Bed', 'not_done', '2024-03-27 11:37:58', 2),
(104, 'Dressed', 'not_done', '2024-03-27 11:37:58', 2),
(105, 'On-time', 'done', '2024-03-27 11:37:59', 2),
(106, 'Bed', 'not_done', '2024-03-27 11:39:40', 1),
(107, 'Breakfast', 'not_done', '2024-03-27 11:39:41', 1),
(108, 'Dressed', 'not_done', '2024-03-27 11:39:41', 1),
(109, 'Day Teeth', 'not_done', '2024-03-27 11:39:42', 1),
(110, 'On-time', 'not_done', '2024-03-27 11:39:46', 2),
(111, 'Bed', 'done', '2024-03-27 11:39:46', 2),
(112, 'Breakfast', 'done', '2024-03-27 11:39:47', 2),
(113, 'Dressed', 'done', '2024-03-27 11:39:47', 2),
(114, 'Day Teeth', 'done', '2024-03-27 11:39:48', 2),
(115, 'Bed', 'not_done', '2024-03-27 11:39:55', 2),
(116, 'Dressed', 'not_done', '2024-03-27 11:39:56', 2),
(117, 'Breakfast', 'done', '2024-03-27 11:40:00', 1),
(118, 'Day Teeth', 'done', '2024-03-27 11:40:01', 1),
(119, 'Bed', 'done', '2024-03-27 11:40:02', 1),
(120, 'Dressed', 'done', '2024-03-27 11:40:04', 1),
(121, 'Dressed', 'not_done', '2024-03-27 11:40:05', 1),
(122, 'Bed', 'not_done', '2024-03-27 11:40:05', 1),
(123, 'Breakfast', 'not_done', '2024-03-27 11:40:09', 2),
(124, 'Day Teeth', 'not_done', '2024-03-27 11:40:10', 2),
(125, 'Bed', 'done', '2024-03-27 11:40:10', 2),
(126, 'Dressed', 'done', '2024-03-27 11:40:11', 2),
(127, 'Bed', 'done', '2024-03-27 11:45:37', 1),
(128, 'Dressed', 'done', '2024-03-27 11:45:38', 1),
(129, 'Bed', 'not_done', '2024-03-27 11:45:41', 2),
(130, 'Dressed', 'not_done', '2024-03-27 11:45:41', 2),
(131, 'On-time', 'done', '2024-03-27 11:45:42', 2),
(132, 'Bed', 'done', '2024-03-27 11:49:40', 2),
(133, 'Dressed', 'done', '2024-03-27 11:49:41', 2),
(134, 'Breakfast', 'done', '2024-03-27 11:49:42', 2),
(135, 'Day Teeth', 'done', '2024-03-27 11:49:43', 2),
(136, 'On-time', 'not_done', '2024-03-27 11:49:44', 2),
(137, 'Pajamas', 'done', '2024-03-27 11:49:48', 2),
(138, 'Night Teeth', 'not_done', '2024-03-27 11:49:53', 1),
(139, 'Dinner', 'not_done', '2024-03-27 11:49:53', 1),
(140, 'Homework', 'not_done', '2024-03-27 11:49:54', 1),
(141, 'Bed', 'not_done', '2024-03-27 11:49:55', 1),
(142, 'Breakfast', 'not_done', '2024-03-27 11:49:55', 1),
(143, 'Dressed', 'not_done', '2024-03-27 11:49:56', 1),
(144, 'Day Teeth', 'not_done', '2024-03-27 11:49:56', 1),
(145, 'On-time', 'done', '2024-03-27 11:49:57', 1),
(146, 'Bed', 'done', '2024-03-27 12:00:57', 1),
(147, 'Breakfast', 'done', '2024-03-27 12:00:58', 1),
(148, 'Dressed', 'done', '2024-03-27 12:00:58', 1),
(149, 'Day Teeth', 'done', '2024-03-27 12:00:59', 1),
(150, 'On-time', 'not_done', '2024-03-27 12:01:00', 1),
(151, 'Bed', 'not_done', '2024-03-27 12:01:03', 2),
(152, 'Breakfast', 'not_done', '2024-03-27 12:01:03', 2),
(153, 'Pajamas', 'not_done', '2024-03-27 12:01:04', 2),
(154, 'Breakfast', 'not_done', '2024-03-27 13:25:47', 1),
(155, 'Breakfast', 'done', '2024-03-27 13:25:48', 1),
(156, 'Bed', 'not_done', '2024-03-27 13:26:05', 1),
(157, 'Bed', 'done', '2024-03-27 13:26:06', 1),
(158, '', 'done', '2024-03-27 13:26:36', 1),
(159, 'Breakfast', 'not_done', '2024-03-27 13:34:06', 1),
(160, 'Day Teeth', 'not_done', '2024-03-27 13:34:07', 1),
(161, 'Day Teeth', 'not_done', '2024-03-27 13:34:10', 2),
(162, 'Bed', 'done', '2024-03-27 13:34:10', 2),
(163, 'Bed', 'not_done', '2024-03-27 13:34:14', 2),
(164, 'Dressed', 'not_done', '2024-03-27 13:34:15', 2),
(165, 'Breakfast', 'done', '2024-03-27 13:34:15', 2),
(166, 'Day Teeth', 'done', '2024-03-27 13:34:16', 2),
(167, 'On-time', 'done', '2024-03-27 13:34:26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `UserProfile`
--

CREATE TABLE `UserProfile` (
  `UserId` int(11) NOT NULL,
  `PhotoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserProfile`
--

INSERT INTO `UserProfile` (`UserId`, `PhotoId`) VALUES
(1, 7),
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `profile_photo_url`) VALUES
(1, 'Mila', 'img/mila.png'),
(2, 'Lenna', 'img/lenna.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `user_badge_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`user_badge_id`, `user_id`, `badge_id`, `date_added`) VALUES
(1, 1, 11, '2023-12-01 04:19:27'),
(2, 2, 2, '2023-12-01 04:19:27'),
(3, 1, 14, '2023-12-08 20:19:27'),
(4, 2, 6, '2023-12-09 20:19:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`badge_id`);

--
-- Indexes for table `ProfilePhotos`
--
ALTER TABLE `ProfilePhotos`
  ADD PRIMARY KEY (`PhotoId`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `UserProfile`
--
ALTER TABLE `UserProfile`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `PhotoId` (`PhotoId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`user_badge_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `user_badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `task_status`
--
ALTER TABLE `task_status`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `UserProfile`
--
ALTER TABLE `UserProfile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`PhotoId`) REFERENCES `ProfilePhotos` (`PhotoId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
