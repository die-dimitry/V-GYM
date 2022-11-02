-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 08:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymnsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', '3cd257ab3cfbf97c950460f2771906d5', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `date`) VALUES
(11, 'Happy Guru Nanak Jayanti - On account of Guru Nanak Jayanti, V-Gym will be working from 6am -11am & ', '2022-11-08'),
(12, 'Happy Halloween \r\n\r\nFrom V-GYM', '2022-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `amount`, `quantity`, `vendor`, `description`, `address`, `contact`, `date`) VALUES
(3, 'Treadmill', 3636, 4, 'DnS', 'Edited Description', 'Mumbai', '8521479633', '2019-03-07'),
(4, 'Vertical Press Machine', 949, 3, 'SS Industries', 'For Biceps And Triceps, Upper Back, Chest', 'Nagpur', '1245558980', '2020-03-19'),
(5, 'Dumbell - Adjustable', 2652, 26, 'Uptown Suppliers', 'Material: Steel, Rubber Plastic, Concrete', 'Mumbai', '9875552100', '2020-03-29'),
(6, 'Multi Bench Press Machine', 438, 2, 'DnS Suppliers', '6 In 1 Multi Bench With Incline, Flat, Decline Ben', 'Mumbai', '7410001010', '2020-04-05'),
(7, 'Demo', 1325, 5, 'Demo', 'This is a demo test.', 'Nagpur', '8524445452', '2020-04-03'),
(10, 'RowWarrior Fitness Rowing Mach', 67392, 12, 'Roww Stores', 'HIGHEST QUALITY: This best of class air rowing mac', 'Pune', '7412585555', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count` int(100) NOT NULL,
  `ini_weight` int(100) NOT NULL DEFAULT 0,
  `curr_weight` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype` varchar(50) NOT NULL,
  `curr_bodytype` varchar(50) NOT NULL,
  `progress_date` date NOT NULL,
  `reminder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user_id`, `fullname`, `username`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`, `attendance_count`, `ini_weight`, `curr_weight`, `ini_bodytype`, `curr_bodytype`, `progress_date`, `reminder`) VALUES
(30, 'Arun', 'arun01', 'd41d8cd98f00b204e9800998ecf8427e', 'Male', '2000-01-01', 'Sauna', 35, '2022-11-02', 2022, '1', '156 The Heights, Ban', '8282828282', 'Active', 1, 0, 0, '', '', '0000-00-00', 0),
(31, 'Suhail Khan', 'suhail', '3cd257ab3cfbf97c950460f2771906d5', 'Male', '1999-12-03', 'Cardio', 300, '2022-11-01', 2022, '3', '203 Royal Residency,', '7666326641', 'Active', 0, 78, 75, 'Endomorph', 'Endomorph', '2022-11-01', 1),
(32, 'Aehtisham Geelani', 'aehtisham', '97698cdb39175b74775d750aeb24eed3', 'Male', '1997-09-18', 'Fitness', 720, '2022-11-01', 2022, '6', '561 Rudra Tower, GTB', '9191098761', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(33, 'Joel Fernandes', 'joel01', '39ef50f8c5912fda0ec8ad710da0f9e8', 'Male', '1991-02-14', 'Cardio', 1200, '2022-11-01', 2022, '12', '', '', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(34, 'Sunita Bambale', 'sunita', '270bc4393030fbfb947e9ec35b9c82e1', 'Female', '2002-08-15', 'Cardio', 240, '2022-11-01', 2022, '6', '802 Sunshine Tower, ', '82345689', 'Active', 0, 0, 0, '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `charge`) VALUES
(1, 'Fitness', '55'),
(2, 'Sauna', '35'),
(3, 'Cardio', '40');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `name`, `message`, `status`, `date`, `user_id`) VALUES
(12, 'staff', 'asd', 'unread', '2020-04-16 22:39:59', 0),
(13, 'staff', 'asdasdas', 'unread', '2020-04-16 22:40:49', 0),
(14, 'staff', 'ASasA', 'unread', '2020-04-16 22:41:59', 0),
(15, 'staff', 'asdasdasd', 'unread', '2020-04-16 22:42:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`user_id`, `username`, `password`, `email`, `fullname`, `address`, `designation`, `gender`, `contact`) VALUES
(5, 'nikhil', '350d89c1cd6592bbbd1ed2e8a4f3ddba', 'nikhil.dhangada@vgym.com', 'Nikhil Dhangada', '102, CHS Ltd, Chunab', 'Trainer', 'Male', 2147483647),
(6, 'pooja', '9cbb6aebcf5ae14a9248b4c08165212e', 'pooja.jaiswal@vgym.com', 'Pooja Singh', '409, Orchids, Wdala', 'Front Desk Staff', 'Female', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `task_status` varchar(50) NOT NULL,
  `task_desc` varchar(30) NOT NULL,
  `user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `task_status`, `task_desc`, `user_id`) VALUES
(20, 'In Progress', 'Test Completed', 14),
(21, 'Pending', 'Mastering Crunches', 6),
(22, 'In Progress', 'Standing Workouts For Flat Abs', 6),
(23, 'In Progress', 'Triceps Buildup - 3 set', 14),
(24, 'Pending', 'Decline dumbbell bench press', 6),
(30, 'In Progress', '60 Push Ups in 3 sets', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
