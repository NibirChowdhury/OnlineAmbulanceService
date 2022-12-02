-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 08:05 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bachao`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_ambulance`
--

CREATE TABLE IF NOT EXISTS `add_ambulance` (
`amb_id` int(50) NOT NULL,
  `ambulance_number` varchar(50) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dr_p_nu` varchar(50) NOT NULL,
  `ambulance_type` varchar(50) NOT NULL,
  `ambulance_area` varchar(50) NOT NULL,
  `am_discrip` varchar(50) NOT NULL,
  `amb_photo` varchar(50) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `add_ambulance`
--

INSERT INTO `add_ambulance` (`amb_id`, `ambulance_number`, `driver_name`, `dr_p_nu`, `ambulance_type`, `ambulance_area`, `am_discrip`, `amb_photo`, `district_name`) VALUES
(1, '456825', 'Abdur Razzak', '0175963552', 'high class', 'shamoli', 'it is a high class ambulance.', 'img/ambulance6.jpg', 'coxs bazar'),
(2, '45852-d', 'sabbir', '01985466552', '2nd class', 'songshod', 'valo na', 'img/ambulance6.jpg', 'Borishal'),
(3, '54564', 'tomal', '012556655658', '1st', 'dhaka', 'well', 'img/ambulance9.jpg', 'dhaka'),
(5, 'dha-4456', 'michal khalid', '012546895', 'frist class', 'shamoli', 'good ', 'img/ambulance12.jpg', 'dhaka'),
(6, 'cha-45863', 'jhonson', '0125864823', '2nd class', 'hatirjheel', 'good', 'img/ambulance10.jpg', 'sirajgonj');

-- --------------------------------------------------------

--
-- Table structure for table `add_district`
--

CREATE TABLE IF NOT EXISTS `add_district` (
`district_id` int(100) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `police_num` varchar(50) NOT NULL,
  `fire_num` varchar(50) NOT NULL,
  `hospital_num` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `add_district`
--

INSERT INTO `add_district` (`district_id`, `district_name`, `police_num`, `fire_num`, `hospital_num`) VALUES
(1, 'dhaka', '', '', ''),
(6, 'jamalpur', '01256565556', '1011125451', '0524521215'),
(7, 'narail', '01255865986', '35456451', '45185451');

-- --------------------------------------------------------

--
-- Table structure for table `add_medicine`
--

CREATE TABLE IF NOT EXISTS `add_medicine` (
`medi_id` int(50) NOT NULL,
  `medi_name` varchar(50) NOT NULL,
  `medi_brand` text NOT NULL,
  `medi_pow` varchar(50) NOT NULL,
  `mfg.lic` varchar(50) NOT NULL,
  `dar_no` varchar(50) NOT NULL,
  `batch_no` int(50) NOT NULL,
  `mfg_date` date NOT NULL,
  `exp_date` date NOT NULL,
  `medi_descp` varchar(50) NOT NULL,
  `medi_photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_msg`
--

CREATE TABLE IF NOT EXISTS `ambulance_msg` (
`id_am_msg` int(50) NOT NULL,
  `msg_am` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `ambulance_msg`
--

INSERT INTO `ambulance_msg` (`id_am_msg`, `msg_am`, `email`) VALUES
(2, 'dsafdsf', 'teacher@gmail.com'),
(18, 'adsfhsdjkg', 'samiul@gmail.com'),
(20, 'ok ,we will call you soon', 'razzak@gmail.com'),
(21, 'sir you have a phone call.', 'samiul@gmail.com'),
(22, 'sir you have a phone call.', 'samiul@gmail.com'),
(23, 'valo', 'teacher@gmail.com'),
(24, '', 'razzak@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book_ambulance`
--

CREATE TABLE IF NOT EXISTS `book_ambulance` (
`book_id` int(11) NOT NULL,
  `ambulance_type` varchar(50) NOT NULL,
  `pickup` varchar(50) NOT NULL,
  `dropoff` varchar(50) NOT NULL,
  `pickup_time` varchar(50) NOT NULL,
  `dropoff_time` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `patient_location` varchar(50) NOT NULL,
  `emergency_type` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `book_ambulance`
--

INSERT INTO `book_ambulance` (`book_id`, `ambulance_type`, `pickup`, `dropoff`, `pickup_time`, `dropoff_time`, `name`, `mobile`, `email`, `patient_location`, `emergency_type`, `age`, `gender`, `time`) VALUES
(22, 'non ac', 'ullapara', 'nobogram', '00:00:10.3', '00:00:12.0', 'murad', '01556332545', 'sabbir@gmail.com', 'mohammadpur', 'Accident', 2, 'male', ' 05:52:26pm'),
(23, 'ac', 'mohammadupr', 'nobogram', '10.30', '12.30', 'sabbir', '01556331358', 'rayhan@gmail.com', 'dhaka', 'Accident', 8, 'female', ' 2019-04-22 06:04:13pm'),
(24, 'freezer', 'mohammadupr', 'hatirjhil', '10:20', '16:30', 'mithun', '01556331359', 'admin@gmail.com', 'mohammadpur', 'Accident', 4, 'female', ' 2019-04-22 06:05:59pm'),
(25, 'ac', 'ullapara', 'nobogram', '18:06', '18:06', 'sabbir', '01556332588', 'teacher@gmail.com', 'mohammadpur', 'Accident', 88, 'male', ' 2019-04-22 06:29:42pm'),
(27, 'icu', 'bonani', 'nobogram', '00:23', '16:34', 'mithun', '01556332548', 'mithun@gmail.com', 'dhaka', 'Heart attack', 17, 'male', ' 2019-04-25 09:30:43pm'),
(28, 'freezer', 'hatibandha', 'dhaka,dhanmondi', '09:30', '16:20', 'razzak', '01556331354', 'razzak@gmail.com', 'dhaka', 'Brain stroke', 70, 'male', ' 2019-04-27 12:32:03am'),
(29, 'freezer', 'mohammadupr', 'hatirjhil', '17:04', '10:30', 'mithun', '01556331', 'razzak@gmail.com', 'dhaka', 'Breathing', 2, 'male', ' 2019-04-29 11:24:58pm'),
(30, 'non ac', 'mohammadupr', 'dhaka', '02:02', '14:03', 'sabbir', '01555426556', 'razzak@gmail.com', 'dhaka', 'Pregnancy', 1, 'male', '2019-04-29 11:35:34pm'),
(31, 'icu', 'dhanmondi', 'bonani', '10:20', '15:30', 'sabbir bi', '0198549649478', 'samiul@gmail.com', 'hospital', 'Others', 1, 'female', '2019-04-29 11:36:57pm');

-- --------------------------------------------------------

--
-- Table structure for table `medi_msg`
--

CREATE TABLE IF NOT EXISTS `medi_msg` (
`id_medi_msg` int(50) NOT NULL,
  `medi_msg` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `medi_msg`
--

INSERT INTO `medi_msg` (`id_medi_msg`, `medi_msg`, `email`) VALUES
(1, 'apni ki chan?', 'razzak@gmail.com'),
(2, 'assa pathaiya dissi.', 'razzak@gmail.com'),
(3, 'assa sir', 'samiul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_medicine`
--

CREATE TABLE IF NOT EXISTS `order_medicine` (
`med_id` int(50) NOT NULL,
  `medi1` varchar(50) NOT NULL,
  `quant1` int(50) NOT NULL,
  `medi2` varchar(50) NOT NULL,
  `quant2` int(50) NOT NULL,
  `medi3` varchar(50) NOT NULL,
  `quant3` int(50) NOT NULL,
  `medi4` varchar(50) NOT NULL,
  `quant4` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping_loca` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `order_medicine`
--

INSERT INTO `order_medicine` (`med_id`, `medi1`, `quant1`, `medi2`, `quant2`, `medi3`, `quant3`, `medi4`, `quant4`, `name`, `mobile`, `email`, `shipping_loca`, `time`, `photo`) VALUES
(1, 'napa', 1, 'emoti', 1, 'cop', 1, 'lol', 1, 'sabbir', '01556331358', 'razzak@gmail.com', 'mohammadput', ' 2019-04-29 12:08:20am', ''),
(2, 'napa', 1, 'emoti', 1, 'cop', 1, 'lol', 1, 'rayhan', '015554265', 'razzak@gmail.com', 'mohammadpur', ' 2019-04-29 09:35:04pm', 'img/sabbir.jpg'),
(3, 'napa', 1, 'emoti', 1, 'cop', 1, 'lol', 1, 'murad', '01556331359', 'razzak@gmail.com', 'mohammadpur', ' 2019-04-29 11:22:22pm', 'img/Screenshot_3.png'),
(4, 'napa', 2, 'nampi', 1, 'clofenuck', 2, 'civit', 1, 'sabbir ali', '0125566581', 'samiul@gmail.com', 'kadirabad', '2019-04-29 11:39:49pm', 'img/form_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
`reg_id` int(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` int(50) NOT NULL,
  `nid` varchar(200) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `type` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `first_name`, `last_name`, `address`, `city`, `state`, `zip`, `nid`, `age`, `gender`, `date`, `phone`, `email`, `blood`, `photo`, `pass`, `type`) VALUES
(2, 'samiul', 'siddique', 'nobogram', 'dhaka', '125', 1207, '546453434354354354', 15, 'male', '2017-02-22', '016958548512', 'samiul@gmail.com', 'AB+', 'img/7.jpg', 'samiul', 2),
(3, 'soaib bin', 'reza', 'thakurga,dinajpur', 'dhaka', '12', 1207, '6546464645646565', 26, 'male', '1994-01-06', '01727389748', 'soaib@gmail.com', 'A-', 'img/sohel1.jpg', 'soaib', 2),
(4, 'abdur ', 'razzak', 'lalmonirhat', 'hatibandha ', 'hat', 17896, '01255668952168623526', 25, 'male', '1995-12-01', '01622150390', 'razzak@gmail.com', 'B+', 'img/20170106_155847.jpg', 'razzak', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `pass`, `email`, `type`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 1),
(2, 'samiul', 'samiul', 'samiul@gmail.com', 2),
(3, 'soaib bin', 'soaib', 'soaib@gmail.com', 2),
(4, 'abdur ', 'razzak', 'razzak@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ambulance`
--
ALTER TABLE `add_ambulance`
 ADD PRIMARY KEY (`amb_id`);

--
-- Indexes for table `add_district`
--
ALTER TABLE `add_district`
 ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `add_medicine`
--
ALTER TABLE `add_medicine`
 ADD PRIMARY KEY (`medi_id`);

--
-- Indexes for table `ambulance_msg`
--
ALTER TABLE `ambulance_msg`
 ADD PRIMARY KEY (`id_am_msg`);

--
-- Indexes for table `book_ambulance`
--
ALTER TABLE `book_ambulance`
 ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `medi_msg`
--
ALTER TABLE `medi_msg`
 ADD PRIMARY KEY (`id_medi_msg`);

--
-- Indexes for table `order_medicine`
--
ALTER TABLE `order_medicine`
 ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ambulance`
--
ALTER TABLE `add_ambulance`
MODIFY `amb_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `add_district`
--
ALTER TABLE `add_district`
MODIFY `district_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `add_medicine`
--
ALTER TABLE `add_medicine`
MODIFY `medi_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance_msg`
--
ALTER TABLE `ambulance_msg`
MODIFY `id_am_msg` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `book_ambulance`
--
ALTER TABLE `book_ambulance`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `medi_msg`
--
ALTER TABLE `medi_msg`
MODIFY `id_medi_msg` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_medicine`
--
ALTER TABLE `order_medicine`
MODIFY `med_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
MODIFY `reg_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
