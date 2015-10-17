-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2015 at 06:07 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gallerycms_kalai`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `uuid`, `name`, `published`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'f1bf1a10-4379-11e5-af57-005056c00008', 'Education', 1, 1, 1, '2015-08-16 09:25:11', '2015-08-16 09:25:11'),
(6, '3c0ded82-437b-11e5-af57-005056c00008', 'Placement', 1, 1, 1, '2015-08-16 09:24:52', '2015-08-16 09:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `album_config`
--

CREATE TABLE IF NOT EXISTS `album_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned DEFAULT NULL,
  `thumb_width` int(11) NOT NULL DEFAULT '100',
  `thumb_height` int(11) NOT NULL DEFAULT '100',
  `crop_thumbnails` tinyint(1) NOT NULL DEFAULT '0',
  `auto_publish` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `album_config`
--

INSERT INTO `album_config` (`id`, `album_id`, `thumb_width`, `thumb_height`, `crop_thumbnails`, `auto_publish`) VALUES
(5, 5, 100, 100, 0, 1),
(6, 6, 100, 100, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE IF NOT EXISTS `feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`id`, `name`, `created_by`, `uuid`, `created_at`) VALUES
(1, 'sam', 1, 'fae63ec2-4363-11e5-af57-005056c00008', '2015-08-15 17:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `feed_album`
--

CREATE TABLE IF NOT EXISTS `feed_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` int(10) unsigned DEFAULT NULL,
  `album_id` int(10) unsigned DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `caption` text,
  `raw_name` varchar(45) DEFAULT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL,
  `file_ext` varchar(45) DEFAULT NULL,
  `file_size` varchar(45) DEFAULT NULL,
  `path` varchar(45) DEFAULT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `album_id`, `uuid`, `name`, `order_num`, `caption`, `raw_name`, `file_type`, `file_name`, `file_ext`, `file_size`, `path`, `full_path`, `published`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(21, 5, 'fa722dcd-4379-11e5-af57-005056c00008', 'blog11.jpg', 1, '', 'blog11', 'image/jpeg', 'blog11.jpg', '.jpg', '58.1', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/blog11.jpg', 1, '2015-08-15 20:18:07', '2015-08-15 20:18:07', 1, NULL),
(22, 5, 'fafa54b3-4379-11e5-af57-005056c00008', 'blog21.jpg', 2, '', 'blog21', 'image/jpeg', 'blog21.jpg', '.jpg', '64.02', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/blog21.jpg', 1, '2015-08-15 20:18:08', '2015-08-15 20:18:08', 1, NULL),
(23, 5, 'fb7d6bc1-4379-11e5-af57-005056c00008', 'blog31.jpg', 3, '', 'blog31', 'image/jpeg', 'blog31.jpg', '.jpg', '65.65', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/blog31.jpg', 1, '2015-08-15 20:18:09', '2015-08-15 20:18:09', 1, NULL),
(24, 5, 'fbe229af-4379-11e5-af57-005056c00008', 'blog41.jpg', 4, '', 'blog41', 'image/jpeg', 'blog41.jpg', '.jpg', '69.17', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/blog41.jpg', 1, '2015-08-15 20:18:10', '2015-08-15 20:18:10', 1, NULL),
(29, 6, '4e2f726e-437b-11e5-af57-005056c00008', 'slide-3-11.jpg', 5, '', 'slide-3-11', 'image/jpeg', 'slide-3-11.jpg', '.jpg', '81.98', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/slide-3-11.jpg', 1, '2015-08-15 20:27:37', '2015-08-15 20:27:37', 1, NULL),
(30, 6, '4e8ef524-437b-11e5-af57-005056c00008', 'slider31.jpg', 6, '', 'slider31', 'image/jpeg', 'slider31.jpg', '.jpg', '83.74', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/slider31.jpg', 1, '2015-08-15 20:27:38', '2015-08-15 20:27:38', 1, NULL),
(31, 6, '4ef7d89c-437b-11e5-af57-005056c00008', 'stats2.jpg', 7, '', 'stats2', 'image/jpeg', 'stats2.jpg', '.jpg', '93.9', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/stats2.jpg', 1, '2015-08-15 20:27:38', '2015-08-15 20:27:38', 1, NULL),
(32, 6, '4faad8ad-437b-11e5-af57-005056c00008', 'testimonials2.jpg', 8, '', 'testimonials2', 'image/jpeg', 'testimonials2.jpg', '.jpg', '90.58', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/testimonials2.jpg', 1, '2015-08-15 20:27:40', '2015-08-15 20:27:40', 1, NULL),
(33, 6, '50507661-437b-11e5-af57-005056c00008', 'text_-_Copy2.jpg', 9, '', 'text_-_Copy2', 'image/jpeg', 'text_-_Copy2.jpg', '.jpg', '79.03', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/text_-_Copy2.jpg', 1, '2015-08-15 20:27:41', '2015-08-15 20:27:41', 1, NULL),
(34, 6, '50b5a45e-437b-11e5-af57-005056c00008', 'text2_-_Copy2.jpg', 10, '', 'text2_-_Copy2', 'image/jpeg', 'text2_-_Copy2.jpg', '.jpg', '89.78', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/text2_-_Copy2.jpg', 1, '2015-08-15 20:27:41', '2015-08-15 20:27:41', 1, NULL),
(35, 6, '5151425f-437b-11e5-af57-005056c00008', 'text2.jpg', 11, '', 'text2', 'image/jpeg', 'text2.jpg', '.jpg', '348.22', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/text2.jpg', 1, '2015-08-15 20:27:42', '2015-08-15 20:27:42', 1, NULL),
(36, 6, '5191e3d5-437b-11e5-af57-005056c00008', 'text3.jpg', 12, '', 'text3', 'image/jpeg', 'text3.jpg', '.jpg', '331.35', './uploads/', 'C:/xampp/htdocs/img-gallary/user/gallarycms/uploads/text3.jpg', 1, '2015-08-15 20:27:43', '2015-08-15 20:27:43', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_comment`
--

CREATE TABLE IF NOT EXISTS `image_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `last_ip` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uuid`, `email_address`, `password`, `is_active`, `is_admin`, `created_at`, `updated_at`, `last_logged_in`, `last_ip`) VALUES
(1, '8f539cc7-435e-11e5-af57-005056c00008', 'codeforcrack@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 1, '2015-08-15 17:01:51', '2015-08-15 17:01:51', '2015-10-14 12:02:16', '0.0.0.0'),
(2, '0132b532-435f-11e5-af57-005056c00008', 'codeforcrack1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 0, '2015-08-15 17:05:02', '2015-08-15 17:05:02', '2015-08-15 17:05:56', '0.0.0.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
