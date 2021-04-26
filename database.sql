-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4482
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_doors
CREATE DATABASE IF NOT EXISTS `db_doors` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_doors`;


-- Dumping structure for table db_doors.events
CREATE TABLE IF NOT EXISTS `events` (
  `events_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `n_railway` varchar(50) NOT NULL,
  `n_bus` varchar(50) NOT NULL,
  `n_air` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `f_date` date NOT NULL,
  `t_date` date NOT NULL,
  `e_type` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`events_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_doors.events: ~0 rows (approximately)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


-- Dumping structure for table db_doors.places
CREATE TABLE IF NOT EXISTS `places` (
  `places_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `Column 2` varchar(30) NOT NULL,
  `n_railway` varchar(50) NOT NULL,
  `n_bus` varchar(50) NOT NULL,
  `n_air` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` blob NOT NULL,
  `p_type` varchar(20) NOT NULL,
  PRIMARY KEY (`places_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_doors.places: ~0 rows (approximately)
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;


-- Dumping structure for table db_doors.tbl_gallery_image
CREATE TABLE IF NOT EXISTS `tbl_gallery_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(5000) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table db_doors.tbl_gallery_image: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_gallery_image` DISABLE KEYS */;
INSERT INTO `tbl_gallery_image` (`image_id`, `title`, `image`, `date`, `time`) VALUES
	(17, 'ds', '72c3d2cf0ceb28ee4ca54021ae4ae152_0.jpg', '2019-02-16', '22:30:08'),
	(18, 'ds', '9daaec174d9b8fd306e937a81b2a23ee_1.jpg', '2019-02-16', '22:30:08'),
	(19, 'ds', 'aee9489c6a628c6870ead0ea7c161c0c_2.jpg', '2019-02-16', '22:30:08'),
	(20, 'ds', '44160777956218f637ff85e38dcf6092_3.jpg', '2019-02-16', '22:30:09');
/*!40000 ALTER TABLE `tbl_gallery_image` ENABLE KEYS */;


-- Dumping structure for table db_doors.tbl_services
CREATE TABLE IF NOT EXISTS `tbl_services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `services_head` varchar(100) DEFAULT NULL,
  `services_small_description` mediumtext,
  `services_description` longtext,
  `services_date` date DEFAULT NULL,
  `services_time` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table db_doors.tbl_services: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_services` DISABLE KEYS */;
INSERT INTO `tbl_services` (`services_id`, `services_head`, `services_small_description`, `services_description`, `services_date`, `services_time`, `user_id`) VALUES
	(9, 'Research & Development', 'Rising healthcare costs are \r\nforcing modern consumers \r\nto search for different ways to \r\nreduce expenses and still get \r\nthe medical service they need.', '<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Yoga is a any of the methods or\r\ndisciplines prescribed, especially a series of postures and breathing exercises\r\npracticed to achieve control of the body and mind, tranquility Many studies\r\nhave tried to determine the effectiveness of yoga as a complementary\r\nintervention for</span> <a href="https://en.wikipedia.org/wiki/Cancer" title="Cancer">cancer</a><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,</span> <a href="https://en.wikipedia.org/wiki/Schizophrenia" title="Schizophrenia">schizophrenia</a><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,</span> <a href="https://en.wikipedia.org/wiki/Asthma" title="Asthma">asthma</a><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">, heart diseases and many other diseases <font color="#111111" face="Arial, sans-serif"><span style="font-size: 13pt;"><o:p></o:p></span></font></span></p>', '2017-07-25', '23:22:26', 1),
	(10, 'Consumer Electronics', 'Rising healthcare costs are \r\nforcing modern consumers \r\nto search for different ways to \r\nreduce expenses and still get \r\nthe medical service they need.', '<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">The holistic nature of homeopathy means each\r\nperson is treated as a unique individual and their body, mind, spirit and\r\nemotions are all considered in the management and prevention of disease.<font color="#111111" face="Arial, sans-serif"><span style="font-size: 13pt;"><o:p></o:p></span></font></span></p>', '2017-07-25', '23:22:42', 1),
	(11, 'Software Solution', 'Rising healthcare costs are \r\nforcing modern consumers \r\nto search for different ways to \r\nreduce expenses and still get \r\nthe medical service they need.', '<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;">Rising healthcare costs are forcing modern consumers to search for different ways to reduce expenses and still get the medical service they need. In recent years another solution has appeared. Medical tourism has people living in one country and traveling to another to seek medical, dental and surgical care…<span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"></span><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><font color="#111111" face="Arial, sans-serif"><span style="font-size: 13pt;"><o:p></o:p></span></font></span></p>', '2017-07-25', '23:23:05', 1);
/*!40000 ALTER TABLE `tbl_services` ENABLE KEYS */;


-- Dumping structure for table db_doors.tbl_settings
CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings_name` varchar(100) DEFAULT NULL,
  `settings_value` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table db_doors.tbl_settings: ~15 rows (approximately)
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` (`id`, `settings_name`, `settings_value`) VALUES
	(2, 'name', 'Conserve Technologies'),
	(3, 'addressL1', '14/228-A, Kollezhathu building,'),
	(4, 'addressL2', 'MLA Road, Thycatussery, Cherthala,'),
	(5, 'addressL3', 'Alappuzha-688528, Kerala'),
	(6, 'email', 'conservetech@gmail.com'),
	(7, 'url', 'www.conservetechnologies.com'),
	(8, 'phone', '+91 964 5753 423'),
	(9, 'mobile', '+91 964 5753 423 0'),
	(10, 'facebook', 'https://www.facebook.com/Santhitheeram-Holistic-Health-Center-260161437721189/?ref=aymt_homepage_panel'),
	(11, 'googlep', 'gp'),
	(12, 'youtube', 'you'),
	(13, 'facebookiframe', ''),
	(14, 'mapiframe', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1031.9965437317983!2d76.48764756016585!3d9.710517372144018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b07d5d96eeafa23%3A0x8e96d0c12b076c24!2sKolathukara+Road%2C+Kallara%2C+Kerala+686603!5e0!3m2!1sen!2sin!4v1501321951531'),
	(15, 'noreplyemail', 'noreply@gmail.com'),
	(16, 'title', 'HOW WE CAN HELP YOU ?');
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;


-- Dumping structure for table db_doors.tbl_users
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `phno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `guide` tinyint(4) NOT NULL,
  `user_status` varchar(100) NOT NULL,
  `user_date` date NOT NULL,
  `user_time` time NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_doors.tbl_users: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_email`, `user_password`, `phno`, `address`, `guide`, `user_status`, `user_date`, `user_time`, `role_id`) VALUES
	(1, 'admin', 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3', '', '', 0, 'active', '2016-11-16', '10:13:00', 1),
	(2, 'name', 'email@gmail.com', '53e8254b3222a33f42b5a6b3d156056c', '99888878787', 'address1\r\naddress\r\n2', 1, 'active', '0000-00-00', '00:00:00', 0),
	(5, 'name11144444', 'email1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '9999999666', 'address', 1, 'active', '0000-00-00', '00:00:00', 0);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
