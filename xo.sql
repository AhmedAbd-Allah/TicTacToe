-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2018 at 10:02 AM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Library`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add book', 7, 'add_book'),
(20, 'Can change book', 7, 'change_book'),
(21, 'Can delete book', 7, 'delete_book'),
(22, 'Can add author', 8, 'add_author'),
(23, 'Can change author', 8, 'change_author'),
(24, 'Can delete author', 8, 'delete_author');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'newApp', 'author'),
(7, 'newApp', 'book'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-01-31 13:05:39'),
(2, 'auth', '0001_initial', '2018-01-31 13:05:40'),
(3, 'admin', '0001_initial', '2018-01-31 13:05:40'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-01-31 13:05:40'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-01-31 13:05:40'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-01-31 13:05:40'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-01-31 13:05:40'),
(8, 'auth', '0004_alter_user_username_opts', '2018-01-31 13:05:40'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-01-31 13:05:40'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-01-31 13:05:40'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-01-31 13:05:40'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-01-31 13:05:40'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-01-31 13:05:40'),
(14, 'newApp', '0001_initial', '2018-01-31 13:05:40'),
(15, 'sessions', '0001_initial', '2018-01-31 13:05:40'),
(16, 'newApp', '0002_auto_20180131_1359', '2018-01-31 13:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newApp_author`
--

CREATE TABLE IF NOT EXISTS `newApp_author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `DOD` date DEFAULT NULL,
  `contact` int(11) NOT NULL,
  `Bio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newApp_author`
--

INSERT INTO `newApp_author` (`id`, `name`, `DOB`, `DOD`, `contact`, `Bio`) VALUES
(1, 'Naguib Mahfouz', '1910-01-02', '2012-02-03', 101255478, 'he is not a good writer'),
(2, 'Naguib Mahfouz', '1910-01-02', '2012-02-03', 101255478, 'he is not a good writer'),
(3, 'J K Rowling', '1930-05-08', '2015-02-03', 216162638, 'he is a good writer');

-- --------------------------------------------------------

--
-- Table structure for table `newApp_book`
--

CREATE TABLE IF NOT EXISTS `newApp_book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `date_of_publish` date NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `summary` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `newApp_author`
--
ALTER TABLE `newApp_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newApp_book`
--
ALTER TABLE `newApp_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newApp_book_author_id_cf657fa6` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `newApp_author`
--
ALTER TABLE `newApp_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `newApp_book`
--
ALTER TABLE `newApp_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `newApp_book`
--
ALTER TABLE `newApp_book`
  ADD CONSTRAINT `newApp_book_author_id_cf657fa6_fk_newApp_author_id` FOREIGN KEY (`author_id`) REFERENCES `newApp_author` (`id`);
--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add author', 7, 'add_author'),
(20, 'Can change author', 7, 'change_author'),
(21, 'Can delete author', 7, 'delete_author'),
(22, 'Can add book', 8, 'add_book'),
(23, 'Can change book', 8, 'change_book'),
(24, 'Can delete book', 8, 'delete_book'),
(25, 'Can add category', 9, 'add_category'),
(26, 'Can change category', 9, 'change_category'),
(27, 'Can delete category', 9, 'delete_category'),
(28, 'Can add profile', 10, 'add_profile'),
(29, 'Can change profile', 10, 'change_profile'),
(30, 'Can delete profile', 10, 'delete_profile'),
(31, 'Can add user book', 11, 'add_userbook'),
(32, 'Can change user book', 11, 'change_userbook'),
(33, 'Can delete user book', 11, 'delete_userbook'),
(34, 'Can add profile book', 12, 'add_profilebook'),
(35, 'Can change profile book', 12, 'change_profilebook'),
(36, 'Can delete profile book', 12, 'delete_profilebook'),
(37, 'Can add profile category', 13, 'add_profilecategory'),
(38, 'Can change profile category', 13, 'change_profilecategory'),
(39, 'Can delete profile category', 13, 'delete_profilecategory');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$BzErmRhjYl0P$5+MymbaT7VbbAXnh29WfPz2xhzHkzhgssWODkoajgA4=', '2018-02-09 22:12:57', 1, 'admin', '', '', '', 1, 1, '2018-02-06 03:47:44'),
(2, 'pbkdf2_sha256$100000$gJjnZTBSQLOT$Iwo0mzZdqV4XZ+UVEKLkDcSxsL6fAKgzXP6RBisk/wc=', NULL, 0, 'user', '', '', '', 0, 1, '2018-02-06 21:23:54'),
(3, 'pbkdf2_sha256$100000$pPYEuWc6tcBO$/+OdHIaXFPsJWq0NHpTnrpFPnmkP7D1Txj68DIa3n4M=', NULL, 0, 'user2', '', '', '', 0, 1, '2018-02-06 21:24:19'),
(4, 'pbkdf2_sha256$100000$IaFXZuQDrInj$aCrzpD/hUbljA+oLBY14+M8EV9p2PwWOMhJN9hj7PzY=', '2018-02-07 20:06:50', 1, 'mhassan', '', '', '', 1, 1, '2018-02-07 20:04:36'),
(5, 'pbkdf2_sha256$100000$29djmmJjZrMu$IUOnQh5Ik67OKCzd1ywG7cyz4Lx95Qm/GXsSy94fAnQ=', NULL, 0, 'username', '', '', 'email', 0, 1, '2018-02-07 22:12:51'),
(6, 'pbkdf2_sha256$100000$SfFA1cvObsxr$s/ObxLviN5q3Vgg1tPZA0Zyxv8hnCTUBj/8ioCXTp/g=', '2018-02-07 22:16:21', 0, 'mohamed', '', '', 'mohamed.hassan.pet@gmail.com', 0, 1, '2018-02-07 22:16:08'),
(8, 'pbkdf2_sha256$100000$Aw6ecZU76GUj$pSIWnQePdhP1e3aPt3laPMhyJL84KSr625EC6V4rk0Y=', NULL, 0, 'ahmed', '', '', 'ffffvf@efef.efef', 0, 1, '2018-02-07 22:35:12'),
(9, 'pbkdf2_sha256$100000$jA4XcUIDKbPn$xqo5UxyxN3lfy7fpQwVev8JpZgSgwxdYmGfkC6JAex0=', NULL, 0, 'yoyo', '', '', 'mmmm@mmm.mmm', 0, 1, '2018-02-07 22:37:30'),
(10, 'pbkdf2_sha256$100000$igjzIYMbTLtF$HNKQiMf0M1d3zCZzc+iq2AwfhFcJvJ2SaPnO3LD9pTE=', NULL, 0, 'efef', '', '', 'rgrg@rferfe.efrerf', 0, 1, '2018-02-07 22:38:40'),
(11, 'pbkdf2_sha256$100000$QSj0oQsmJysX$KWPf+vfJ79COvNJFK9Ea1xtkWY7Z+9u7WTdmZ1+SGYc=', NULL, 0, 'wdwd', '', '', 'mmmm@mmm.mmm', 0, 1, '2018-02-07 22:43:25'),
(12, 'pbkdf2_sha256$100000$vI7CmTwThS8c$QhuoiEoZYgIXQ0Kx4Jc4dljeKtpjBCUpuACtoln6rDc=', NULL, 0, 'medo', '', '', 'wdwd@eef.eeffd', 0, 1, '2018-02-07 22:44:28'),
(13, 'pbkdf2_sha256$100000$ZXnzCYLOmUZD$XyH21imHIJ/MTHewlm68auVyHee/79oXDEomx+SUmoQ=', NULL, 0, 'momo', '', '', 'wdwd@wd.wdwd', 0, 1, '2018-02-07 22:46:04'),
(14, 'pbkdf2_sha256$100000$AyIGNVl6C92b$KqSwIKLO1klIcDfh3OEhphVjq2eMwHNDZAaVN0mp1Qo=', NULL, 0, 'efefefef', '', '', 'efef@edefe.rfrf', 0, 1, '2018-02-07 23:12:56'),
(15, 'pbkdf2_sha256$100000$qIZQQ8Qu4WBh$TNWMRxeK/19gPi7UwoeDOSqnT/Wi5LbUvxY9wUyASd4=', NULL, 0, 'hamed', '', '', 'hhh@hhh.hhhhhhh', 0, 1, '2018-02-07 23:14:09'),
(16, 'pbkdf2_sha256$100000$IbP2T2cwsGzk$I2Q5yHegYPF/HKY5/twOxJAHkgtZ6Kf5o/4tt/398rE=', NULL, 0, 'wdfwe', '', '', 'wdwdwd@rfsrfw.adfed', 0, 1, '2018-02-07 23:26:47'),
(17, 'pbkdf2_sha256$100000$j5iz7gU6eeZN$HJwjqj3RxkAXL5m9SxXEq83ajuWAmsY0XsLag/PZkK4=', NULL, 0, 'mome', '', '', 'nkhkk@knknk.kjnkjnj', 0, 1, '2018-02-08 06:01:44'),
(19, 'pbkdf2_sha256$100000$XA6xTNPObTP3$BQ6Syc2NEGmenCkr7wSkiADrQ1/sFeRiuvvolp0rUo8=', NULL, 0, 'momy', '', '', 'nkhkk@knknk.kjnkjnj', 0, 1, '2018-02-08 06:03:47'),
(20, 'pbkdf2_sha256$100000$dAwyc3KyimqY$A9AddIRraTFQsubiZUFE2rDN65sUFrqMj4QCcfuJLHE=', '2018-02-08 14:38:43', 0, 'mohamed assamhaa', '', '', 'mmmm@mmm.mmm', 0, 1, '2018-02-08 14:38:08'),
(21, 'pbkdf2_sha256$100000$TzzTv1m3QShv$3Md9UNcYy/P/WiZ/VGXF6Wo2SH/FOraKgF9gmnFDlkI=', '2018-02-08 20:08:00', 0, 'adminnnnnn', '', '', 'wdwdwd@efef.wdw', 0, 1, '2018-02-08 18:58:29'),
(22, 'pbkdf2_sha256$100000$16kEjjDZpJYU$ewXcX4VHBLsJ6yh+WIZ29j9jHa8g/ebPpE7P5wrk36c=', NULL, 0, 'hahahahah', '', '', 'daasdas@wdwd.weff', 0, 1, '2018-02-09 18:22:52'),
(23, 'pbkdf2_sha256$100000$ky3zqL76Wm7s$6I87XtyVu9xCWupKUVkve/QKKXfMAyskAKNL/Fl0ZWk=', '2018-02-09 22:16:07', 0, 'gemy', '', '', '', 0, 1, '2018-02-09 22:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_author`
--

CREATE TABLE IF NOT EXISTS `books_author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_death` date DEFAULT NULL,
  `bio` longtext NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_author`
--

INSERT INTO `books_author` (`id`, `first_name`, `last_name`, `date_of_birth`, `date_of_death`, `bio`, `picture`) VALUES
(1, 'mihamed', 'hassan', '2018-02-06', '2018-02-06', 'fvfv', 'images/authors/Screenshot_from_2018-01-11_13-59-15.png'),
(2, 'vfvf', 'vvfvf', '2018-02-01', '2018-02-08', 'fvfvf', 'images/authors/Screenshot_from_2017-12-03_20-45-09.png');

-- --------------------------------------------------------

--
-- Table structure for table `books_book`
--

CREATE TABLE IF NOT EXISTS `books_book` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `summary` longtext NOT NULL,
  `date_of_publish` date NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_book`
--

INSERT INTO `books_book` (`id`, `title`, `summary`, `date_of_publish`, `image`) VALUES
(1, 'fvfvfv', 'drvfv', '2018-02-06', 'images/books/Screenshot_from_2017-12-06_22-19-55.png'),
(2, 'fvfveefrf', 'vr', '2018-02-14', 'images/books/Screenshot_from_2017-12-03_20-45-09.png');

-- --------------------------------------------------------

--
-- Table structure for table `books_book_author`
--

CREATE TABLE IF NOT EXISTS `books_book_author` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_book_author`
--

INSERT INTO `books_book_author` (`id`, `book_id`, `author_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `books_book_category`
--

CREATE TABLE IF NOT EXISTS `books_book_category` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE IF NOT EXISTS `books_category` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_profile`
--

CREATE TABLE IF NOT EXISTS `books_profile` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_profile`
--

INSERT INTO `books_profile` (`id`, `profile_picture`, `user_id`) VALUES
(1, '', 1),
(2, '', 2),
(3, '', 3),
(4, '', 4),
(5, '', 5),
(6, '', 6),
(7, '', 8),
(9, '', 9),
(11, '', 10),
(13, '', 11),
(14, '', 12),
(15, 'Screenshot from 2018-02-06 21-35-51.png', 13),
(16, '', 14),
(17, 'Screenshot from 2018-01-01 20-24-07.png', 15),
(18, 'Screenshot from 2018-01-29 22-44-23.png', 16),
(19, 'Screenshot from 2018-02-06 21-35-51.png', 17),
(20, 'Screenshot from 2018-02-06 21-35-51.png', 19),
(21, 'Screenshot from 2018-02-06 21-35-51.png', 20),
(22, 'images/users/Screenshot_from_2018-02-06_21-35-51.png', 21),
(23, 'images/users/Screenshot_from_2018-02-06_21-35-51.png', 22),
(24, 'images/users/Screenshot_from_2018-02-06_21-35-51.png', 23);

-- --------------------------------------------------------

--
-- Table structure for table `books_profilebook`
--

CREATE TABLE IF NOT EXISTS `books_profilebook` (
  `id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `book_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_profilebook`
--

INSERT INTO `books_profilebook` (`id`, `status`, `rate`, `comment`, `book_id`, `profile_id`) VALUES
(1, 'wishlist', 3, 'dwfewefe', 1, 3),
(7, 'reading', 3, '', 1, 1),
(9, 'reading', 4, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_profilecategory`
--

CREATE TABLE IF NOT EXISTS `books_profilecategory` (
  `id` int(11) NOT NULL,
  `fav` tinyint(1) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-02-06 03:48:35', '1', 'mihamed hassan', 1, '[{"added": {}}]', 7, 1),
(2, '2018-02-06 03:48:51', '2', 'vfvf vvfvf', 1, '[{"added": {}}]', 7, 1),
(3, '2018-02-06 03:57:05', '1', 'fvfvfv', 1, '[{"added": {}}]', 8, 1),
(4, '2018-02-06 03:57:08', '1', 'fvfvfv', 2, '[]', 8, 1),
(5, '2018-02-06 03:57:23', '2', 'fvfveefrf', 1, '[{"added": {}}]', 8, 1),
(6, '2018-02-06 21:23:54', '2', 'user', 1, '[{"added": {}}]', 4, 1),
(7, '2018-02-06 21:24:07', '2', 'user', 2, '[]', 4, 1),
(8, '2018-02-06 21:24:19', '3', 'user2', 1, '[{"added": {}}]', 4, 1),
(9, '2018-02-08 06:13:07', '20', 'mkj', 1, '[{"added": {}}]', 4, 1),
(10, '2018-02-08 06:13:55', '20', 'mkj', 3, '', 4, 1),
(11, '2018-02-09 22:15:22', '23', 'gemy', 1, '[{"added": {}}]', 4, 1),
(12, '2018-02-09 22:15:29', '24', '', 1, '[{"added": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'books', 'author'),
(8, 'books', 'book'),
(9, 'books', 'category'),
(10, 'books', 'profile'),
(12, 'books', 'profilebook'),
(13, 'books', 'profilecategory'),
(11, 'books', 'userbook'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-02-04 18:25:45'),
(2, 'auth', '0001_initial', '2018-02-04 18:25:46'),
(3, 'admin', '0001_initial', '2018-02-04 18:25:46'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-02-04 18:25:46'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-02-04 18:25:46'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-02-04 18:25:46'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-02-04 18:25:46'),
(8, 'auth', '0004_alter_user_username_opts', '2018-02-04 18:25:46'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-02-04 18:25:46'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-02-04 18:25:46'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-02-04 18:25:46'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-02-04 18:25:46'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-02-04 18:25:46'),
(14, 'books', '0001_initial', '2018-02-04 18:25:46'),
(15, 'books', '0002_auto_20180204_1622', '2018-02-04 18:25:46'),
(16, 'sessions', '0001_initial', '2018-02-04 18:25:46'),
(17, 'books', '0003_auto_20180205_1109', '2018-02-07 19:41:46'),
(18, 'books', '0004_auto_20180206_2128', '2018-02-07 19:41:46'),
(19, 'books', '0005_auto_20180206_2237', '2018-02-07 19:41:46'),
(20, 'books', '0006_auto_20180209_1804', '2018-02-09 21:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2yr30bz1d7u48posh578pdmymzp4ia7w', 'MmJjZjgzZGZmNzEzNWVlOGYwYTNmNWU5NWUyNGY3ZmU5NmUwZjg4YTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q3M2FkM2JmN2VmOTJjYzY3NTVmNmJiNWJiMGM5YzQ4YmVhNmMwZiJ9', '2018-02-22 20:08:00'),
('65s14pp6peom96n2ohycss9aq5wsepzu', 'YTM0YWJhMWE2YmFiOWExZGJjOTZiM2JhODNhZDI3YzhkYTEzMjRkNjp7fQ==', '2018-02-23 20:23:57'),
('8kkzjq40v0mzvrs58676wf3dh2sjopme', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-20 23:55:19'),
('ad3rfdpx87amjdvzvfl4eksw3oy51vi9', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-23 22:12:57'),
('cd5urklp2hq4ohdvdf9rd6is6ui1kisr', 'YTM0YWJhMWE2YmFiOWExZGJjOTZiM2JhODNhZDI3YzhkYTEzMjRkNjp7fQ==', '2018-02-23 22:12:20'),
('f3dtzgmxr95o5otc69dxzc6zh5xurzg5', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-23 15:42:41'),
('ibplz2gweomq2l8xqiu9n0v88oovc8gk', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-22 22:14:30'),
('j43k9lm95nf188ox6h6l4y59yz3gmwqe', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-22 20:23:59'),
('ppkjfaupq42moqo61hl3lyauxi7zvk8c', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-22 20:25:06'),
('rsiyntyv6hau4ceeuveu6z0jywbzlp2b', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-23 19:28:20'),
('sk0f30juortywwiw31l203qbpfafjr19', 'MmJjZjgzZGZmNzEzNWVlOGYwYTNmNWU5NWUyNGY3ZmU5NmUwZjg4YTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q3M2FkM2JmN2VmOTJjYzY3NTVmNmJiNWJiMGM5YzQ4YmVhNmMwZiJ9', '2018-02-22 19:03:19'),
('tpre0tuhhi3j6vlgtg4ufvlm274art6m', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-22 20:21:13'),
('u1zd0x4rsxs2bkwnwqr18zwz3kh4rfl3', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-23 01:14:18'),
('uqj2ssb58ipf8z1pnsglmdtpmsdekpr2', 'MmJjZjgzZGZmNzEzNWVlOGYwYTNmNWU5NWUyNGY3ZmU5NmUwZjg4YTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q3M2FkM2JmN2VmOTJjYzY3NTVmNmJiNWJiMGM5YzQ4YmVhNmMwZiJ9', '2018-02-22 19:45:50'),
('v7hujpo7am8aoizy6oeoluw8k3myuwsq', 'MmJjZjgzZGZmNzEzNWVlOGYwYTNmNWU5NWUyNGY3ZmU5NmUwZjg4YTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q3M2FkM2JmN2VmOTJjYzY3NTVmNmJiNWJiMGM5YzQ4YmVhNmMwZiJ9', '2018-02-22 19:09:32'),
('vg3byr78agi735hvvo6eg2soykvuc7gd', 'ZmYzNWU5YWNkY2M5NGU4NDdhOThmNjE2NmE0MzViYzVjN2I4OWRmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjZjMjgzYzc0NjdmYTk5MTIyNTNiMmZmZTZmMWNjNTMxM2QwOTVjIn0=', '2018-02-23 00:16:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `books_author`
--
ALTER TABLE `books_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_book`
--
ALTER TABLE `books_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_book_author`
--
ALTER TABLE `books_book_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_author_book_id_author_id_bbdeac5e_uniq` (`book_id`,`author_id`),
  ADD KEY `books_book_author_author_id_42f6f1be_fk_books_author_id` (`author_id`);

--
-- Indexes for table `books_book_category`
--
ALTER TABLE `books_book_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_category_book_id_category_id_366b4d90_uniq` (`book_id`,`category_id`),
  ADD KEY `books_book_category_category_id_f94af53f_fk_books_category_id` (`category_id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_profile`
--
ALTER TABLE `books_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `books_profilebook`
--
ALTER TABLE `books_profilebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_profilebook_book_id_2a1f3d99_fk_books_book_id` (`book_id`),
  ADD KEY `books_profilebook_profile_id_adeee258_fk_books_profile_id` (`profile_id`);

--
-- Indexes for table `books_profilecategory`
--
ALTER TABLE `books_profilecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_profilecategory_category_id_8af5f9a2_fk_books_category_id` (`category_id`),
  ADD KEY `books_profilecategory_profile_id_10ede380_fk_books_profile_id` (`profile_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_author`
--
ALTER TABLE `books_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books_book`
--
ALTER TABLE `books_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books_book_author`
--
ALTER TABLE `books_book_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books_book_category`
--
ALTER TABLE `books_book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_profile`
--
ALTER TABLE `books_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `books_profilebook`
--
ALTER TABLE `books_profilebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `books_profilecategory`
--
ALTER TABLE `books_profilecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `books_book_author`
--
ALTER TABLE `books_book_author`
  ADD CONSTRAINT `books_book_author_author_id_42f6f1be_fk_books_author_id` FOREIGN KEY (`author_id`) REFERENCES `books_author` (`id`),
  ADD CONSTRAINT `books_book_author_book_id_4f4a76dd_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`);

--
-- Constraints for table `books_book_category`
--
ALTER TABLE `books_book_category`
  ADD CONSTRAINT `books_book_category_book_id_93f0cbfc_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`),
  ADD CONSTRAINT `books_book_category_category_id_f94af53f_fk_books_category_id` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`);

--
-- Constraints for table `books_profile`
--
ALTER TABLE `books_profile`
  ADD CONSTRAINT `books_profile_user_id_9c3ff544_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_profilebook`
--
ALTER TABLE `books_profilebook`
  ADD CONSTRAINT `books_profilebook_book_id_2a1f3d99_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`),
  ADD CONSTRAINT `books_profilebook_profile_id_adeee258_fk_books_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `books_profile` (`id`);

--
-- Constraints for table `books_profilecategory`
--
ALTER TABLE `books_profilecategory`
  ADD CONSTRAINT `books_profilecategory_category_id_8af5f9a2_fk_books_category_id` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`),
  ADD CONSTRAINT `books_profilecategory_profile_id_10ede380_fk_books_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `books_profile` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `cafeteria`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `checks`(IN `startDate` DATE, IN `endDate` DATE)
    NO SQL
BEGIN
SELECT users.UID, users.userName, sum(order_contents.number*all_products_and_deleted.price) as "total_amount"
FROM order_contents, all_products_and_deleted, orders, users
WHERE orders.OID=order_contents.oc_OID
AND all_products_and_deleted.PID=order_contents.oc_PID
AND users.UID=orders.o_UID

AND date(orders.date)>=startDate
AND date(orders.date)<=endDate
Group BY users.UID;
END$$

CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `home_orders`()
    NO SQL
BEGIN
SELECT orders.OID,orders.date, users.userName, orders.room, users.extension, orders.notes, sum(order_contents.number*all_products_and_deleted.price) as "total_amount"
FROM order_contents, all_products_and_deleted, orders, users
WHERE orders.OID=order_contents.oc_OID
AND all_products_and_deleted.PID=order_contents.oc_PID
AND users.UID=orders.o_UID
AND orders.status='processing'

Group BY orders.OID;
END$$

CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `my_order`(IN `uid` INT, IN `startdate` DATE, IN `enddate` DATE)
    NO SQL
BEGIN
SELECT orders.OID, orders.date, orders.status, sum(order_contents.number*all_products_and_deleted.price) as "total_amount"
FROM order_contents, all_products_and_deleted, orders, users
WHERE orders.OID=order_contents.oc_OID
AND all_products_and_deleted.PID=order_contents.oc_PID
AND users.UID=orders.o_UID
AND UID=userId
AND date(orders.date)>=startDate
AND date(orders.date)<=endDate
Group BY orders.OID;
END$$

CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `my_orders`(IN `userId` INT, IN `startDate` DATE, IN `endDate` DATE)
    DETERMINISTIC
    SQL SECURITY INVOKER
BEGIN
SELECT orders.OID, orders.date, orders.status, sum(order_contents.number*all_products_and_deleted.price) as "total_amount"
FROM order_contents, all_products_and_deleted, orders, users
WHERE orders.OID=order_contents.oc_OID
AND all_products_and_deleted.PID=order_contents.oc_PID
AND users.UID=orders.o_UID
AND UID=userId
AND date(orders.date)>=startDate
AND date(orders.date)<=endDate
Group BY orders.OID;
end$$

CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `order_expand`(IN `curOID` BIGINT)
    NO SQL
BEGIN
SELECT all_products_and_deleted.pname, all_products_and_deleted.price, all_products_and_deleted.PID, order_contents.number
FROM order_contents, all_products_and_deleted
WHERE all_products_and_deleted.PID=order_contents.oc_PID
AND order_contents.oc_OID=curOID;
END$$

CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `order_status1`(IN `OID` BIGINT)
    NO SQL
BEGIN
UPDATE orders
SET orders.status='out for delivery'
where orders.OID=OID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_admins`
--
CREATE TABLE IF NOT EXISTS `all_admins` (
`UID` int(11)
,`userName` varchar(50)
,`email` varchar(40)
,`room` int(50)
,`extension` int(11)
,`password` char(40)
,`picture` varchar(255)
,`admin` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_products`
--
CREATE TABLE IF NOT EXISTS `all_products` (
`PID` int(11)
,`pname` varchar(50)
,`price` float
,`picture` varchar(255)
,`availability` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_products_and_deleted`
--
CREATE TABLE IF NOT EXISTS `all_products_and_deleted` (
`PID` int(11)
,`pname` varchar(50)
,`p_CID` int(11)
,`price` float
,`picture` varchar(255)
,`availability` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_users`
--
CREATE TABLE IF NOT EXISTS `all_users` (
`UID` int(11)
,`name` varchar(50)
,`room` int(50)
,`picture` varchar(255)
,`extension` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `CID` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CID`, `cname`) VALUES
(1, 'Hot Drinks'),
(2, 'Fresh Juice'),
(3, 'Soda'),
(4, 'hot'),
(5, 'jjjj'),
(6, 'test'),
(7, 'gemy'),
(8, ''),
(9, 'edde');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_products`
--

CREATE TABLE IF NOT EXISTS `deleted_products` (
  `PID` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `p_CID` int(11) NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(255) DEFAULT '',
  `availability` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_contents`
--

CREATE TABLE IF NOT EXISTS `order_contents` (
  `oc_OID` bigint(11) NOT NULL,
  `oc_PID` int(11) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_contents`
--

INSERT INTO `order_contents` (`oc_OID`, `oc_PID`, `number`) VALUES
(111, 1, 2),
(555, 1, 2),
(1013, 1, 2),
(1014, 1, 2),
(1015, 1, 2),
(1016, 1, 2),
(1017, 1, 2),
(1018, 1, 2),
(1021, 1, 1),
(1026, 1, 1),
(1027, 1, 1),
(1029, 1, 1),
(1030, 1, 1),
(1031, 1, 1),
(1032, 1, 1),
(1033, 1, 1),
(1034, 1, 1),
(1035, 1, 1),
(1036, 1, 1),
(1037, 1, 1),
(1038, 1, 1),
(1039, 1, 1),
(1040, 1, 1),
(1041, 1, 1),
(1042, 1, 1),
(1043, 1, 1),
(1044, 1, 1),
(1045, 1, 1),
(1046, 1, 1),
(1047, 1, 2),
(1048, 1, 1),
(1049, 1, 2),
(1050, 1, 1),
(1051, 1, 1),
(111, 2, 4),
(333, 2, 2),
(444, 2, 3),
(666, 2, 2),
(1012, 2, 1),
(1013, 2, 2),
(1014, 2, 2),
(1015, 2, 2),
(1016, 2, 2),
(1017, 2, 2),
(1018, 2, 2),
(1020, 2, 1),
(1021, 2, 1),
(1022, 2, 1),
(1023, 2, 1),
(1024, 2, 1),
(1026, 2, 1),
(1028, 2, 2),
(1051, 2, 1),
(222, 3, 1),
(333, 3, 6),
(444, 3, 1),
(555, 3, 3),
(1051, 3, 1),
(1052, 3, 1),
(222, 4, 2),
(555, 4, 1),
(1013, 5, 1),
(1014, 5, 1),
(1015, 5, 1),
(1019, 5, 1),
(1022, 5, 1),
(1023, 5, 1),
(1024, 5, 1),
(1051, 5, 1),
(1052, 5, 1),
(1012, 15, 3),
(1013, 15, 1),
(1014, 15, 1),
(1015, 15, 1),
(1019, 15, 1),
(1020, 15, 1),
(1021, 15, 1),
(1023, 15, 3),
(1024, 15, 1),
(1026, 15, 1),
(1027, 15, 1),
(1051, 15, 1),
(1012, 26, 1),
(1026, 26, 1),
(1027, 26, 1),
(1051, 26, 1),
(1012, 37, 1),
(1013, 37, 1),
(1014, 37, 1),
(1015, 37, 1),
(1023, 37, 1),
(1025, 37, 1),
(1051, 37, 1),
(1012, 39, 1),
(1025, 39, 1),
(1051, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OID` bigint(20) NOT NULL,
  `o_UID` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `room` varchar(50) NOT NULL DEFAULT 'in place',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('processing','out for delivery','done') NOT NULL DEFAULT 'processing'
) ENGINE=InnoDB AUTO_INCREMENT=1053 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OID`, `o_UID`, `notes`, `room`, `date`, `status`) VALUES
(111, 1, NULL, 'in place', '2018-01-26 13:21:29', 'out for delivery'),
(222, 2, NULL, 'in place', '2018-01-19 13:47:29', 'out for delivery'),
(333, 3, NULL, 'in place', '2018-01-19 13:47:29', 'out for delivery'),
(444, 4, NULL, 'in place', '2018-01-19 13:47:29', 'out for delivery'),
(555, 1, NULL, 'in place', '2018-01-26 18:31:49', 'out for delivery'),
(777, 2, NULL, 'in place', '2018-01-19 13:47:56', 'processing'),
(778, 3, NULL, 'in place', '2018-01-19 21:06:40', 'processing'),
(888, 1, NULL, 'in place', '2018-01-26 13:22:59', 'processing'),
(999, 1, NULL, 'in place', '2018-01-26 15:38:46', 'processing'),
(1000, 1, '', '1', '2018-01-27 00:38:17', 'processing'),
(1001, 1, '', '1', '2018-01-27 00:39:25', 'processing'),
(1002, 1, '', '1', '2018-01-27 00:43:43', 'processing'),
(1003, 1, '', '1', '2018-01-27 00:44:22', 'processing'),
(1004, 1, '', '1', '2018-01-27 00:44:40', 'processing'),
(1005, 1, '', '1', '2018-01-27 00:44:42', 'processing'),
(1006, 1, '', '1', '2018-01-27 00:53:20', 'processing'),
(1007, 1, '', '1', '2018-01-27 00:53:44', 'processing'),
(1008, 1, '', '1', '2018-01-27 00:54:08', 'processing'),
(1009, 1, 'more sugar', '1', '2018-01-27 00:57:06', 'processing'),
(1010, 1, 'more sugar', '1', '2018-01-27 00:57:16', 'processing'),
(1011, 1, 'more sugar', '1', '2018-01-27 00:57:29', 'processing'),
(1013, 1, 'more sugar', '1', '2018-01-27 01:00:22', 'out for delivery'),
(1014, 1, 'more sugar', '1', '2018-01-27 01:01:10', 'processing'),
(1015, 1, 'more sugar', '1', '2018-01-27 01:01:34', 'processing'),
(1016, 1, 'more sugar', '1', '2018-01-27 01:01:53', 'processing'),
(1017, 1, 'more sugar', '1', '2018-01-27 01:03:32', 'processing'),
(1018, 1, 'more sugar', '1', '2018-01-27 01:03:34', 'processing'),
(1019, 1, 'more sugar', '1', '2018-01-27 01:17:24', 'processing'),
(1020, 1, 'more sugar', '1', '2018-01-27 01:17:33', 'processing'),
(1021, 1, '', '1', '2018-01-27 01:23:01', 'processing'),
(1022, 1, '', '1', '2018-01-27 01:23:33', 'processing'),
(1023, 1, '', '1', '2018-01-27 01:23:53', 'processing'),
(1024, 1, '', '1', '2018-01-27 01:32:07', 'processing'),
(1025, 1, '', '1', '2018-01-27 01:32:47', 'processing'),
(1026, 1, '', '1', '2018-01-27 01:34:03', 'processing'),
(1027, 1, '', '1', '2018-01-27 01:40:14', 'processing'),
(1028, 20, '', '2', '2018-01-28 11:56:57', 'processing'),
(1029, 20, '', '2', '2018-01-28 11:57:12', 'processing'),
(1030, 23, '', '2', '2018-01-28 15:05:31', 'processing'),
(1031, 23, '', '2', '2018-01-28 15:08:44', 'processing'),
(1032, 23, '', '2', '2018-01-28 15:16:12', 'processing'),
(1033, 23, '', '2', '2018-01-28 15:16:53', 'processing'),
(1037, 1, '', '1', '2018-01-28 15:31:29', 'processing'),
(1038, 1, '', '1', '2018-01-28 15:31:31', 'processing'),
(1039, 2, '', '2005', '2018-01-28 15:32:12', 'processing'),
(1040, 2, '', '2005', '2018-01-28 15:32:16', 'processing'),
(1041, 1, '', '1', '2018-01-28 15:32:59', 'processing'),
(1042, 2, '', '2005', '2018-01-28 15:33:19', 'processing'),
(1043, 3, '', '2006', '2018-01-28 15:34:32', 'processing'),
(1044, 2, '', '2005', '2018-01-28 15:36:56', 'processing'),
(1045, 2, '', '2005', '2018-01-28 15:37:21', 'processing'),
(1046, 1, '', '1', '2018-01-28 15:39:54', 'processing'),
(1047, 8, '', '1515', '2018-01-28 15:41:09', 'processing'),
(1048, 3, '', '2006', '2018-01-28 15:42:33', 'processing'),
(1049, 1, '', '1', '2018-01-28 15:45:17', 'processing'),
(1050, 1, '', '1', '2018-01-28 20:14:11', 'processing'),
(1051, 1, '', '1', '2018-01-28 20:14:48', 'processing'),
(1052, 1, '', '1', '2018-02-16 14:28:37', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `PID` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `p_CID` int(11) NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(255) DEFAULT '',
  `availability` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PID`, `pname`, `p_CID`, `price`, `picture`, `availability`) VALUES
(1, 'tea', 1, 5, '', 1),
(2, 'coffee', 2, 8, '', 1),
(3, 'orange', 2, 12, '', 1),
(4, 'Soda', 3, 6, '', 0),
(5, 'nescafe', 1, 20, '', 1),
(15, '', 1, 4, '', 1),
(26, 'assd', 1, 1, '', 1),
(37, 'dcd', 1, 2, '', 1),
(39, 'jbjb', 1, 1.5, '', 1),
(55, 'wd', 1, 3.5, '', 1),
(60, 'mon', 1, 4, '', 1),
(63, 'ert', 1, 1.5, '', 1),
(64, 'coffeeeee', 1, 1.5, '', 1),
(66, 'aDD', 1, 0.5, '', 1),
(68, 'hyy', 3, 1.5, '', 1),
(69, 'dffffg', 1, 3.5, '/tmp/phph2uxhs', 1),
(70, 'wfwf', 1, 2.5, '', 1),
(71, 'dwd', 1, 1.5, '/tmp/phpULwo8h', 1),
(72, 'efef', 1, 1, '/tmp/phpRpqgf6', 1),
(73, 'efefwd', 1, 1, '/tmp/phpq34WrK', 1),
(74, 'wdwdwd', 1, 2.5, '', 1),
(75, 'wwr', 1, 1.5, '', 1),
(76, 'wdw', 1, 111, '/tmp/phptOsUqw', 1),
(77, 'ww', 1, 1, '/tmp/phpljxHHA', 1),
(78, 'fefo', 6, 3.5, '/tmp/phpRSaeSW', 1),
(79, 'edee', 2, 3, '/tmp/php8Qkomm', 1),
(80, 'mirinda', 3, 7, '/tmp/phpbTOpRS', 1),
(81, 'pepsi', 3, 8, '/tmp/phprChWLS', 1),
(82, 'pepsiy', 1, 3, '/tmp/phpAAutxD', 1),
(84, 'yty', 3, 3, '/tmp/phpgNgaJd', 1),
(85, 'cola', 3, 2, '/tmp/phpZbEVP7', 1),
(86, 'pepsicola', 3, 5, '/tmp/phpiJZ87f', 1),
(87, 'ahh', 3, 2, '/tmp/phpGQFrko', 1),
(88, 'rgrg', 1, 2, '/tmp/php720Mud', 1),
(89, 'wefwef', 3, 2.5, '/tmp/phpMAU0vX', 1),
(90, 'gely', 4, 3, '/tmp/php7SNwwD', 1),
(91, 'gelyed', 4, 3, '/tmp/phpYbI2If', 1),
(92, 'wdwdc', 1, 1.5, '/tmp/phpSefFQM', 1),
(93, 'wdwdy', 2, 1.5, '/tmp/phpxY1Jc8', 1),
(94, 'ddwd', 1, 2.5, '/tmp/php0zXF7n', 1);

--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `after_products_delete` AFTER DELETE ON `products`
 FOR EACH ROW INSERT into deleted_products(PID,pname,p_CID,price)
VALUES(old.PID,old.pname,old.p_CID,old.price)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL DEFAULT 'sdsd',
  `room` int(50) NOT NULL,
  `extension` int(11) DEFAULT NULL,
  `password` char(40) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `userName`, `email`, `room`, `extension`, `password`, `picture`, `admin`) VALUES
(1, 'omran11', 'sdsd@sdsd.com', 1, 0, '12975910c3e6352b5b2bdee81fa2fc4653a5bd59', '', 0),
(2, 'ahmed@', 'sdsdd', 2005, 12545, '123456', NULL, 0),
(3, 'mina@', 'd', 2006, 15485, '123456789', NULL, 0),
(4, 'omran@', '55', 2008, 124587, '124578', NULL, 0),
(5, 'email', '66', 0, 0, 'password', 'picture', 0),
(8, 'ahmed', '77', 1515, 0, '125', '', 0),
(9, 'mohamed', 'sds55', 1515, 0, '125', '', 0),
(11, 'sds', '4dcd', 0, 0, 'swssd', '', 0),
(13, 'sfv', 'sdsdfvfv ', 0, 0, 'swssd', '', 0),
(17, 'ahmeddcd', 'dvcd', 0, 0, 'swssd', '', 0),
(18, 'gemy', 'sdsddvd', 0, 0, 'swssd', '', 0),
(19, 'omran', 'sdsddc', 0, 0, 'swssd', '', 0),
(20, 'admin', 'admin@admin.com', 2, 3, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'aaa', 1),
(21, 'ad', 'adn@ad.com', 2, 3, 'e9d2c4d7f41e32de0588a042036896d067b31c74', 'aaa', 1),
(22, 'qsq', 'efefe@wdwd', 0, 0, 'efefe@wdwd', '', 0),
(23, 'omran', 'omran@omran.com', 2, 3, 'e9d2c4d7f41e32de0588a042036896d067b31c74', 'aaa', 0),
(24, 'mohamed', 'aaa@aaa.aaa', 12345, 12345, '7c222fb2927d828af22f592134e8932480637c0d', '', 0),
(25, 'mohamed', 'omran@omran.come', 123, 154, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(26, 'ahmed', 'ahmed@ahmed.com', 12, 12, '4cc19aaff82f60ac4097f935ab4a06ad4f0891cc', '/tmp/phpMUMNA7', 0),
(27, 'hassan', 'hassan@hassan.com', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpzqqOfl', 0),
(28, 'hassan', 'hassan@hassan.come', 12345, 14597, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpafPFzO', 0),
(29, 'hassan', 'hassan@hassan.comewq', 12345, 14597, '345120426285ff8b1d43653a4d078170b4761f75', '/tmp/phpLmJTWF', 0),
(30, 'ahmed', 'aaa@aaa.com', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpHoNaMT', 0),
(31, 'ahmed', 'aab@aaa.com', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpb3VOlX', 0),
(32, 'ahmed', 'aaaa@aaa.com', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpSuyKSK', 0),
(33, 'hassan', 'hassan@hassan.comewqw', 12345, 14597, '345120426285ff8b1d43653a4d078170b4761f75', '/tmp/phptUjTqm', 0),
(34, 'ahmed', 'adaaa@aaa.com', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpIi44JV', 0),
(35, 'hassan', 'hassan@hassan.comewqww', 12345, 14597, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpt3Qw3u', 0),
(36, 'ahmed', 'adaada@aaa.com', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpvxka6y', 0),
(37, 'ahmed', 'adaadfa@aaa.com', 12, 12, '4cc19aaff82f60ac4097f935ab4a06ad4f0891cc', '/tmp/phpLc805D', 0),
(38, 'asd', 'aa@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/php5dazKU', 0),
(39, 'asd', 'adda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpcTA3y4', 0),
(40, 'asd', 'adzzzda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpmIEuRU', 0),
(41, 'medo', 'mhassan@sssf.com', 14725836, 1475, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpAj8Ez4', 0),
(42, 'asd', 'adzzzcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpx9pUmu', 0),
(43, 'medoqq', 'mhassan@sssf.com14', 14725836, 1475, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpBIZEQV', 0),
(44, 'asd', 'adzczzcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpjUlXvn', 0),
(45, 'asd', 'adzffczzcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpMPuY6G', 0),
(46, 'medoqq', 'mhassan@sssf.com14w', 14725836, 1475, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpmrz7zG', 0),
(47, 'mohamed', 'admin@admin.com15', 123, 1452, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpDJmQXc', 0),
(48, 'sxscs', 'efeefe@efef.wefwede', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpDND4yJ', 0),
(49, 'asd', 'adzffczczcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpFfrocj', 0),
(51, 'asd', 'adccczffczcczcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpUZJQtK', 0),
(52, 'asd', 'adccczffczcczvcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/php5PN29f', 0),
(53, 'asd', 'adcccczffczcczvcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpag2hRP', 0),
(54, 'asd', 'adccvcczffczcczvcda@aa.com', 132, 11, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpf3zJyq', 0),
(55, 'afcsdfc', 'sdafsdf@sdf.csdf', 12, 12, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpM7015V', 0),
(57, 'sdf', 'asd@sdaf.sdf', 12, 23, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpXZp8Ft', 0),
(58, 'Mohamed Abdelmeged', 'mohamed@mohamd.com', 123, 123, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpNAy4Df', 0),
(59, 'Mohamed Abdelmeged', 'm@m.m', 123, 123, '7c222fb2927d828af22f592134e8932480637c0d', '/tmp/phpMGBd8E', 0),
(60, 'wfwfefew', 'wefwef@wefwef.wefew', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpY8Yz0I', 0),
(61, 'mohamedhassan', 'aaaaaaaa@aaaaaaa.asdas', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpT6IXC2', 0),
(62, 'mohamedhassan', 'mmmm@mmmmm.mmmmmm', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpdDuzxW', 0),
(63, 'mohamedhassan', 'mmmm@mmmmm.mmm', 123, 456, 'd396f232a5ca1f7a0ad8f1b59975515123780553', '/tmp/phpxox75R', 0),
(64, 'mohamedhassan', 'mmmm@mmm.mmm', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(65, 'mohamedhassan', 'nnn@nnn.com', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpqxvIyJ', 0),
(66, 'wdcswcd', 'mmm@nnn.ccc', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpvScMzS', 0),
(67, 'wdcswcd', 'mmm@nnn.sss', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpUqwBwQ', 0),
(68, 'wdwew', 'hhh@hhh.ddd', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpX1rrfu', 0),
(69, 'wdwew', 'hhh@hhh.dddws', 123, 456, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpux8oYR', 0),
(70, 'eefefef', 'wdwdwd@efef.wdw', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(71, 'asasdsd', 'amm@mmm.mmm', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpgi0kAy', 0),
(72, 'sefsfesf', 'esfef@efwsef.ada', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/php2sn1Xz', 0),
(73, 'qwdqwd', 'srfgs@efef.afe', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpGNO8A6', 0),
(74, 'wddedef', 'wdwddw@wefsef.adae', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phptTac62', 0),
(75, 'mohamed', 'hhh@hhh.hhhhhhh', 147, 258, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(76, 'gggggggg', 'ggg@ggg.ggg', 123, 123, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(77, 'gthjk', 'hkjn@kmklml.wdd', 147, 258, '2ac7952c305b644020aba14f687cada2c3b40d2e', '/tmp/phpeqLhNG', 0),
(78, 'gthjkwdwd', 'hkjn@kmklml.wdds', 147, 258, '2ac7952c305b644020aba14f687cada2c3b40d2e', '/tmp/phpBuOOwj', 0),
(79, 'wdwdd', 'wd@effe.eded', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(80, 'wdwdd', 'wdwd@eef.eef', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(81, 'wdwdd', 'wdwd@eef.eeffd', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(82, 'rfgdrg', 'efe@efef.ffe', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(83, 'gggggggg', 'ggg@ggg.gggd', 123, 123, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(84, 'rfgdrg', 'efe@efef.ffes', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '/tmp/phpJGkEok', 0),
(85, 'efef', 'jjnjkn@njkk.hjbh', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(86, 'wefef', 'wdwd@eef.eeffde', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(87, 'mohamed abdelmeged', 'mohamed@mohamed.medo', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0),
(88, 'yyyyyyyy', 'yyyyy@yyyy.yyyyy', 0, 0, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 0);

-- --------------------------------------------------------

--
-- Structure for view `all_admins`
--
DROP TABLE IF EXISTS `all_admins`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Otlobly`@`%` SQL SECURITY DEFINER VIEW `all_admins` AS select `users`.`UID` AS `UID`,`users`.`userName` AS `userName`,`users`.`email` AS `email`,`users`.`room` AS `room`,`users`.`extension` AS `extension`,`users`.`password` AS `password`,`users`.`picture` AS `picture`,`users`.`admin` AS `admin` from `users` where (`users`.`admin` = 1);

-- --------------------------------------------------------

--
-- Structure for view `all_products`
--
DROP TABLE IF EXISTS `all_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mhassan`@`localhost` SQL SECURITY DEFINER VIEW `all_products` AS select `products`.`PID` AS `PID`,`products`.`pname` AS `pname`,`products`.`price` AS `price`,`products`.`picture` AS `picture`,`products`.`availability` AS `availability` from `products` WITH CASCADED CHECK OPTION;

-- --------------------------------------------------------

--
-- Structure for view `all_products_and_deleted`
--
DROP TABLE IF EXISTS `all_products_and_deleted`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mhassan`@`localhost` SQL SECURITY DEFINER VIEW `all_products_and_deleted` AS select `products`.`PID` AS `PID`,`products`.`pname` AS `pname`,`products`.`p_CID` AS `p_CID`,`products`.`price` AS `price`,`products`.`picture` AS `picture`,`products`.`availability` AS `availability` from `products` union select `deleted_products`.`PID` AS `PID`,`deleted_products`.`pname` AS `pname`,`deleted_products`.`p_CID` AS `p_CID`,`deleted_products`.`price` AS `price`,`deleted_products`.`picture` AS `picture`,`deleted_products`.`availability` AS `availability` from `deleted_products`;

-- --------------------------------------------------------

--
-- Structure for view `all_users`
--
DROP TABLE IF EXISTS `all_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mhassan`@`localhost` SQL SECURITY DEFINER VIEW `all_users` AS select `users`.`UID` AS `UID`,`users`.`userName` AS `name`,`users`.`room` AS `room`,`users`.`picture` AS `picture`,`users`.`extension` AS `extension` from `users` WITH CASCADED CHECK OPTION;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CID`),
  ADD UNIQUE KEY `CID` (`CID`);

--
-- Indexes for table `deleted_products`
--
ALTER TABLE `deleted_products`
  ADD PRIMARY KEY (`PID`) USING BTREE,
  ADD UNIQUE KEY `pname` (`pname`),
  ADD KEY `category` (`p_CID`);

--
-- Indexes for table `order_contents`
--
ALTER TABLE `order_contents`
  ADD PRIMARY KEY (`oc_PID`,`oc_OID`),
  ADD KEY `oc_OID` (`oc_OID`,`oc_PID`),
  ADD KEY `oc_OID_2` (`oc_OID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `o_UID` (`o_UID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`) USING BTREE,
  ADD UNIQUE KEY `pname` (`pname`),
  ADD KEY `category` (`p_CID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `deleted_products`
--
ALTER TABLE `deleted_products`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1053;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`o_UID`) REFERENCES `users` (`UID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category` FOREIGN KEY (`p_CID`) REFERENCES `categories` (`CID`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `a5a6d922bbbcf0` ON SCHEDULE AT '2018-01-28 11:14:43' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `orders` SET status = 'done' WHERE OID = '333'$$

CREATE DEFINER=`root`@`localhost` EVENT `a5a6d9232817cd` ON SCHEDULE AT '2018-01-28 11:14:50' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `orders` SET status = 'done' WHERE OID = '444'$$

CREATE DEFINER=`root`@`localhost` EVENT `a5a6d92b3650a3` ON SCHEDULE AT '2018-01-28 11:16:59' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `orders` SET status = 'done' WHERE OID = '555'$$

CREATE DEFINER=`root`@`localhost` EVENT `a5a6d92b51fe3a` ON SCHEDULE AT '2018-01-28 11:17:01' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `orders` SET status = 'done' WHERE OID = '1013'$$

DELIMITER ;
--
-- Database: `django_badreads`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add author', 7, 'add_author'),
(20, 'Can change author', 7, 'change_author'),
(21, 'Can delete author', 7, 'delete_author'),
(22, 'Can add book', 8, 'add_book'),
(23, 'Can change book', 8, 'change_book'),
(24, 'Can delete book', 8, 'delete_book'),
(25, 'Can add category', 9, 'add_category'),
(26, 'Can change category', 9, 'change_category'),
(27, 'Can delete category', 9, 'delete_category'),
(28, 'Can add user books', 10, 'add_userbooks'),
(29, 'Can change user books', 10, 'change_userbooks'),
(30, 'Can delete user books', 10, 'delete_userbooks');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$S2DxvX7KnrqY$lVeOMDeT+1NJWJ1fjzz6xGIwci73PxBue9EmgiWRAaA=', '2018-02-05 10:44:16', 1, 'admin', '', '', '', 1, 1, '2018-02-04 20:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-02-04 20:45:06', '1', 'mohamed', 1, '[{"added": {}}]', 7, 1),
(2, '2018-02-04 20:45:27', '2', 'ahemd', 1, '[{"added": {}}]', 7, 1),
(3, '2018-02-04 20:46:27', '1', 'horror', 1, '[{"added": {}}]', 9, 1),
(4, '2018-02-04 20:46:33', '2', 'romance', 1, '[{"added": {}}]', 9, 1),
(5, '2018-02-04 20:46:58', '1', 'book1', 1, '[{"added": {}}]', 8, 1),
(6, '2018-02-04 20:47:29', '2', 'book2', 1, '[{"added": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'library', 'author'),
(8, 'library', 'book'),
(9, 'library', 'category'),
(10, 'library', 'userbooks'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-02-04 20:41:09'),
(2, 'auth', '0001_initial', '2018-02-04 20:41:10'),
(3, 'admin', '0001_initial', '2018-02-04 20:41:10'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-02-04 20:41:10'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-02-04 20:41:10'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-02-04 20:41:10'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-02-04 20:41:10'),
(8, 'auth', '0004_alter_user_username_opts', '2018-02-04 20:41:10'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-02-04 20:41:10'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-02-04 20:41:10'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-02-04 20:41:10'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-02-04 20:41:10'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-02-04 20:41:10'),
(14, 'library', '0001_initial', '2018-02-04 20:41:10'),
(15, 'library', '0002_auto_20170430_1217', '2018-02-04 20:41:11'),
(16, 'sessions', '0001_initial', '2018-02-04 20:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1cm5p3orrg2yyf63y9f0wieo4ow3wrvl', 'ZDYxZjgyMTM4MGRiMGYwOGVlMzIwNWRiZmUwNDNkNmQ1OTc1OTgwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzJjM2RiYWE4MGFjYjg0Zjc2Y2ZjNjk3NDNjY2ViM2M3ZGZhMTVmIn0=', '2018-02-19 06:09:59'),
('togj9deww5vzupy73uer7l8ffjn75e8x', 'ZDYxZjgyMTM4MGRiMGYwOGVlMzIwNWRiZmUwNDNkNmQ1OTc1OTgwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzJjM2RiYWE4MGFjYjg0Zjc2Y2ZjNjk3NDNjY2ViM2M3ZGZhMTVmIn0=', '2018-02-19 10:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `library_author`
--

CREATE TABLE IF NOT EXISTS `library_author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `born_at` date NOT NULL,
  `died_at` date NOT NULL,
  `bio` longtext,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_author`
--

INSERT INTO `library_author` (`id`, `name`, `born_at`, `died_at`, `bio`, `img`) VALUES
(1, 'mohamed', '2018-02-06', '2018-02-28', 'bio\r\nbio\r\nbio\r\no\r\nbio\r\nbio', 'images/authors/Screenshot_from_2018-01-29_22-44-23.png'),
(2, 'ahemd', '2018-02-06', '2018-02-09', 'o\r\nbio\r\nbioo\r\nbio\r\nbioo\r\nbio\r\nbioo\r\nbio\r\nbio', 'images/authors/Screenshot_from_2018-02-03_20-32-11.png');

-- --------------------------------------------------------

--
-- Table structure for table `library_author_users`
--

CREATE TABLE IF NOT EXISTS `library_author_users` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE IF NOT EXISTS `library_book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `summary` longtext,
  `published_at` date DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `title`, `summary`, `published_at`, `img`, `author_id`, `category_id`) VALUES
(1, 'book1', 'book1book1book1book1book1book1book1book1book1book1\r\nbook1book1book1book1book1book1book1book1book1\r\nbook1book1book1book1book1book1', '2018-02-06', 'images/books/Screenshot_from_2018-01-01_20-24-07.png', 1, 1),
(2, 'book2', 'book2book2book2book2book2book2book2\r\nbook2book2vbook2book2book2book2book2\r\nbook2book2book2book2\r\nbook2book2book2', '2018-02-06', 'images/books/Screenshot_from_2017-12-06_22-19-55.png', 2, 2),
(3, 'dfff', NULL, NULL, '', 1, 1),
(4, 'berr', NULL, NULL, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_category`
--

CREATE TABLE IF NOT EXISTS `library_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_category`
--

INSERT INTO `library_category` (`id`, `name`, `desc`) VALUES
(1, 'horror', 'desc desc'),
(2, 'romance', 'fvfvfv');

-- --------------------------------------------------------

--
-- Table structure for table `library_category_users`
--

CREATE TABLE IF NOT EXISTS `library_category_users` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_category_users`
--

INSERT INTO `library_category_users` (`id`, `category_id`, `user_id`) VALUES
(2, 1, 1),
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_userbooks`
--

CREATE TABLE IF NOT EXISTS `library_userbooks` (
  `id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `wish` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `library_author`
--
ALTER TABLE `library_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_author_users`
--
ALTER TABLE `library_author_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_author_users_author_id_user_id_a34df5c3_uniq` (`author_id`,`user_id`),
  ADD KEY `library_author_users_user_id_ee9b7320_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_book_category_id_c90a2d6d_fk_library_category_id` (`category_id`),
  ADD KEY `library_book_author_id_d9a3b67e_fk_library_author_id` (`author_id`);

--
-- Indexes for table `library_category`
--
ALTER TABLE `library_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_category_users`
--
ALTER TABLE `library_category_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_category_users_category_id_user_id_fe1700ae_uniq` (`category_id`,`user_id`),
  ADD KEY `library_category_users_user_id_313bd9ff_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `library_userbooks`
--
ALTER TABLE `library_userbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_userbooks_user_id_book_id_cdbe8a88_uniq` (`user_id`,`book_id`),
  ADD KEY `library_userbooks_book_id_6783c854_fk_library_book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `library_author`
--
ALTER TABLE `library_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_author_users`
--
ALTER TABLE `library_author_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `library_category`
--
ALTER TABLE `library_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_category_users`
--
ALTER TABLE `library_category_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_userbooks`
--
ALTER TABLE `library_userbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `library_author_users`
--
ALTER TABLE `library_author_users`
  ADD CONSTRAINT `library_author_users_author_id_7b7e27da_fk_library_author_id` FOREIGN KEY (`author_id`) REFERENCES `library_author` (`id`),
  ADD CONSTRAINT `library_author_users_user_id_ee9b7320_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `library_book`
--
ALTER TABLE `library_book`
  ADD CONSTRAINT `library_book_author_id_d9a3b67e_fk_library_author_id` FOREIGN KEY (`author_id`) REFERENCES `library_author` (`id`),
  ADD CONSTRAINT `library_book_category_id_c90a2d6d_fk_library_category_id` FOREIGN KEY (`category_id`) REFERENCES `library_category` (`id`);

--
-- Constraints for table `library_category_users`
--
ALTER TABLE `library_category_users`
  ADD CONSTRAINT `library_category_users_user_id_313bd9ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `library_category_use_category_id_d87e4c04_fk_library_c` FOREIGN KEY (`category_id`) REFERENCES `library_category` (`id`);

--
-- Constraints for table `library_userbooks`
--
ALTER TABLE `library_userbooks`
  ADD CONSTRAINT `library_userbooks_book_id_6783c854_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_userbooks_user_id_52f491ea_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `gradingSystem`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`mhassan`@`localhost` PROCEDURE `full_result`(in StNo int, out result int)
begin
select sum(std_assesement.grade) into result
from student
left join std_assesement
on student.st_No=std_assesement.st_No
where student.st_No=stNo
group by student.first_name, student.last_name;
end$$

--
-- Functions
--
CREATE DEFINER=`mhassan`@`localhost` FUNCTION `count_failed_students`(testId int) RETURNS int(11)
return (select count(*) from std_assesement
where asses_id=testId and grade <50)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `assesment`
--

CREATE TABLE IF NOT EXISTS `assesment` (
  `asses_id` int(11) NOT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `co_No` mediumint(9) DEFAULT NULL,
  `asses_weight` tinyint(4) NOT NULL,
  `asses_Date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='assessement of each student_assignments in each course';

--
-- Dumping data for table `assesment`
--

INSERT INTO `assesment` (`asses_id`, `type_id`, `co_No`, `asses_weight`, `asses_Date`) VALUES
(1, 1, 123, 50, '2018-01-02 09:38:30'),
(2, 1, 123, 40, '2018-01-02 09:38:52'),
(3, 2, 133, 60, '2018-01-04 05:29:11'),
(4, 3, 133, 45, '2018-01-04 05:29:46'),
(5, 2, 123, 5, '2018-01-04 05:30:13'),
(6, 3, 133, 70, '2018-01-04 05:30:46'),
(7, 1, 211, 30, '2018-01-04 05:36:09'),
(8, 2, 211, 50, '2018-01-04 05:36:32'),
(9, 1, 243, 30, '2018-01-04 05:37:17'),
(10, 3, 243, 60, '2018-01-04 05:37:35'),
(11, 4, 224, 70, '2018-01-04 05:38:15'),
(12, 2, 224, 20, '2018-01-04 05:38:36'),
(13, 3, 224, 10, '2018-01-04 05:39:02'),
(14, 3, 231, 30, '2018-01-04 05:39:33'),
(15, 2, 231, 50, '2018-01-04 05:39:51'),
(16, 1, 231, 60, '2018-01-04 05:40:24'),
(20, 3, 123, 25, '2018-01-08 22:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_type`
--

CREATE TABLE IF NOT EXISTS `assignment_type` (
  `type_id` tinyint(4) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='assignment types';

--
-- Dumping data for table `assignment_type`
--

INSERT INTO `assignment_type` (`type_id`, `name`) VALUES
(3, 'project'),
(2, 'quiz'),
(1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `changeInfo`
--

CREATE TABLE IF NOT EXISTS `changeInfo` (
  `stId` int(11) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changeInfo`
--

INSERT INTO `changeInfo` (`stId`, `phone`) VALUES
(1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseList`
--

CREATE TABLE IF NOT EXISTS `courseList` (
  `co_No` mediumint(9) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `semster` tinyint(4) NOT NULL,
  `year` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='courselist';

--
-- Dumping data for table `courseList`
--

INSERT INTO `courseList` (`co_No`, `title`, `semster`, `year`) VALUES
(123, 'oop', 1, 127),
(133, 'HTML', 2, 127),
(211, 'php', 2, 127),
(224, 'python', 1, 127),
(231, 'java', 2, 127),
(243, 'cloud', 3, 127);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_Id` tinyint(4) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='departments';

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_Id`, `name`) VALUES
(1, 'open source'),
(2, 'iot'),
(3, 'telecom');

-- --------------------------------------------------------

--
-- Table structure for table `dept_course`
--

CREATE TABLE IF NOT EXISTS `dept_course` (
  `co_No` mediumint(9) NOT NULL DEFAULT '0',
  `dept_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='courses related to departments';

--
-- Dumping data for table `dept_course`
--

INSERT INTO `dept_course` (`co_No`, `dept_id`) VALUES
(123, 1),
(133, 2);

-- --------------------------------------------------------

--
-- Table structure for table `std_assesement`
--

CREATE TABLE IF NOT EXISTS `std_assesement` (
  `st_No` mediumint(9) NOT NULL DEFAULT '0',
  `asses_id` int(11) NOT NULL DEFAULT '0',
  `grade` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='students grades is assesements';

--
-- Dumping data for table `std_assesement`
--

INSERT INTO `std_assesement` (`st_No`, `asses_id`, `grade`) VALUES
(1, 1, 30),
(1, 2, 40),
(1, 3, 33),
(1, 7, 45),
(2, 2, 44),
(2, 9, 20),
(2, 10, 56),
(2, 11, 36),
(3, 8, 54),
(3, 13, 39),
(4, 12, 55),
(4, 16, 45),
(5, 1, 50),
(5, 3, 30),
(5, 15, 15),
(6, 2, 33),
(6, 5, 63),
(6, 7, 52);

-- --------------------------------------------------------

--
-- Table structure for table `std_course`
--

CREATE TABLE IF NOT EXISTS `std_course` (
  `st_No` mediumint(9) NOT NULL DEFAULT '0',
  `co_No` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `std_course`
--

INSERT INTO `std_course` (`st_No`, `co_No`) VALUES
(1, 123),
(2, 123),
(2, 133);

-- --------------------------------------------------------

--
-- Table structure for table `std_phone`
--

CREATE TABLE IF NOT EXISTS `std_phone` (
  `st_No` mediumint(9) NOT NULL DEFAULT '0',
  `tel1` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='student contact info';

--
-- Dumping data for table `std_phone`
--

INSERT INTO `std_phone` (`st_No`, `tel1`) VALUES
(1, '01115558845'),
(2, '124654646'),
(3, '2323565');

--
-- Triggers `std_phone`
--
DELIMITER $$
CREATE TRIGGER `after_contactInfo_up_del_ins` AFTER UPDATE ON `std_phone`
 FOR EACH ROW insert into changeInfo values (old.st_No,phone)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `st_No` mediumint(9) NOT NULL DEFAULT '0',
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) NOT NULL,
  `major` char(20) NOT NULL,
  `st_email` char(30) DEFAULT NULL,
  `gender` set('male','female') DEFAULT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='students info';

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_No`, `first_name`, `last_name`, `major`, `st_email`, `gender`, `birthdate`) VALUES
(1, 'mohamed', '', 'open source', 'mohamed@iti.org', 'male', '1991-05-06'),
(2, 'ahmed', '', 'iot', 'ahmed@iti.org', 'male', '0000-00-00'),
(3, 'mina', '', 'telecom', 'mina@iti.org', 'male', '0000-00-00'),
(4, 'ahmed', 'ali', 'java', 'ahmed@iti.org', 'male', '1992-01-30'),
(5, 'enas', 'maher', 'telecom', 'enas@iti.org', 'female', '1994-05-11'),
(6, 'sarah', 'ali', 'java', 'sarah@iti.org', 'female', '1994-02-05'),
(7, 'mohamed', 'abdelmeged', 'java', 'mmm@iti.org', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwStudentsGrades`
--
CREATE TABLE IF NOT EXISTS `vwStudentsGrades` (
`first_name` varchar(15)
,`last_name` varchar(15)
,`total points` decimal(25,0)
);

-- --------------------------------------------------------

--
-- Structure for view `vwStudentsGrades`
--
DROP TABLE IF EXISTS `vwStudentsGrades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mhassan`@`localhost` SQL SECURITY DEFINER VIEW `vwStudentsGrades` AS select `student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,sum(`std_assesement`.`grade`) AS `total points` from (`student` left join `std_assesement` on((`student`.`st_No` = `std_assesement`.`st_No`))) group by `student`.`first_name`,`student`.`last_name`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assesment`
--
ALTER TABLE `assesment`
  ADD PRIMARY KEY (`asses_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `co_No` (`co_No`);

--
-- Indexes for table `assignment_type`
--
ALTER TABLE `assignment_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `courseList`
--
ALTER TABLE `courseList`
  ADD PRIMARY KEY (`co_No`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_Id`);

--
-- Indexes for table `dept_course`
--
ALTER TABLE `dept_course`
  ADD PRIMARY KEY (`co_No`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `std_assesement`
--
ALTER TABLE `std_assesement`
  ADD PRIMARY KEY (`st_No`,`asses_id`),
  ADD KEY `asses_id` (`asses_id`);

--
-- Indexes for table `std_course`
--
ALTER TABLE `std_course`
  ADD PRIMARY KEY (`st_No`,`co_No`),
  ADD KEY `co_No` (`co_No`);

--
-- Indexes for table `std_phone`
--
ALTER TABLE `std_phone`
  ADD PRIMARY KEY (`st_No`,`tel1`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assesment`
--
ALTER TABLE `assesment`
  MODIFY `asses_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `assignment_type`
--
ALTER TABLE `assignment_type`
  MODIFY `type_id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_Id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_course`
--
ALTER TABLE `dept_course`
  ADD CONSTRAINT `dept_course_ibfk_1` FOREIGN KEY (`co_No`) REFERENCES `courseList` (`co_No`),
  ADD CONSTRAINT `dept_course_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_Id`);

--
-- Constraints for table `std_assesement`
--
ALTER TABLE `std_assesement`
  ADD CONSTRAINT `std_assesement_ibfk_1` FOREIGN KEY (`st_No`) REFERENCES `student` (`st_No`),
  ADD CONSTRAINT `std_assesement_ibfk_2` FOREIGN KEY (`asses_id`) REFERENCES `assesment` (`asses_id`),
  ADD CONSTRAINT `std_assesement_ibfk_3` FOREIGN KEY (`st_No`) REFERENCES `student` (`st_No`);

--
-- Constraints for table `std_course`
--
ALTER TABLE `std_course`
  ADD CONSTRAINT `std_course_ibfk_1` FOREIGN KEY (`st_No`) REFERENCES `student` (`st_No`),
  ADD CONSTRAINT `std_course_ibfk_2` FOREIGN KEY (`co_No`) REFERENCES `courseList` (`co_No`);

--
-- Constraints for table `std_phone`
--
ALTER TABLE `std_phone`
  ADD CONSTRAINT `std_phone_ibfk_1` FOREIGN KEY (`st_No`) REFERENCES `student` (`st_No`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`mhassan`@`localhost` EVENT `delete_data_48hrs` ON SCHEDULE EVERY 48 HOUR STARTS '2018-01-09 00:23:13' ON COMPLETION NOT PRESERVE ENABLE DO delete from changeInfo$$

DELIMITER ;
--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE IF NOT EXISTS `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_meals`
--

CREATE TABLE IF NOT EXISTS `order_meals` (
  `o_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_meals`
--
ALTER TABLE `order_meals`
  ADD PRIMARY KEY (`o_id`,`m_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);
--
-- Database: `test`
--
--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) DEFAULT NULL,
  `moves` varchar(20) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(8) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `high_score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `high_score`) VALUES
(1, '676', '12345', 0),
(2, 'ahmed', '12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userData`
--

CREATE TABLE IF NOT EXISTS `userData` (
  `Id` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Country` varchar(15) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` char(40) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Skills` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userData`
--

INSERT INTO `userData` (`Id`, `fName`, `lName`, `Address`, `Country`, `Gender`, `Username`, `Password`, `Department`, `Skills`) VALUES
(1, '', '', '', '', '', '', '', '', NULL),
(2, 'sfv', 'wdw', 'asca', 'adada', 'sdscsd', 'male', 'efce', 'efece', 'efefefe'),
(3, 'sfv', 'wdw', 'asca', 'adada', 'sdscsd', 'male', 'efce', 'efece', 'efefefe'),
(4, 'sfv', 'wdw', 'asca', 'adada', 'sdscsd', 'male', 'efce', 'efece', 'efefefe'),
(5, '', '', '', '', '', '', '', '', NULL),
(6, 'ahb', '', '', '', '', '', '', '', NULL),
(7, 'ahb', '', '', '', '', '', '', '', NULL),
(8, '', '', '', '', '', '', '', '', NULL),
(13, 'mohamed', 'hassan', '', '', '', '', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_id` (`game_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `userData`
--
ALTER TABLE `userData`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `userData`
--
ALTER TABLE `userData`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-31 22:28:54', '2018-01-31 22:28:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Ahly', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mohamed.hassan.pet@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:28:"social-share/SocialShare.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'newTheme', 'yes'),
(41, 'stylesheet', 'newTheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'nonce_key', 'I{OMTh$DsY;B=XyO-J0*:akGJkL!S)|&g=;PE_rEuZ|AyIRpQ%iZ(|:P5Fk6s8ir', 'no'),
(107, 'nonce_salt', '>gE{DHdWy,>@61?R}R*e3oY_liWr8^CBv?0x-CIG!;y>5lD;f6K]JKkUx.NsY%Nz', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1517610535;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1517610556;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1517611193;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517601647;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1517601161;s:15:"version_checked";s:5:"4.9.2";s:12:"translations";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1517601622;s:7:"checked";a:7:{s:20:"Mohamed hassan Theme";s:3:"1.0";s:7:"MyTheme";s:0:"";s:6:"arabum";s:3:"1.5";s:8:"newTheme";s:1:"1";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(122, 'auth_key', '1QIJ#Y(y+_xftt@NunB9<fF#E+k0AnX,8bbrEEF3RmQ#r}R5vqHKs:Q?mC!)3* 2', 'no'),
(123, 'auth_salt', '  (pc^H#:[;j6P`-ExZo~d,fzsUDi/[]6x4`G%oqUY^5hm~6^vEB|nHUBnG>:F}u', 'no'),
(124, 'logged_in_key', 'lW_EgqCt_qnJZQ~yx!=_p.fPI5t}_T~Nx~w;C-jElD@&o2aDpVG-[$m47~Jx$Z@|', 'no'),
(125, 'logged_in_salt', 'y>F?N+7AADMw%7`8tb/(,D]L=w[H,[t!b8Gav+Ya]+9,0~nAV+Qm>#ET=%GM+`|K', 'no'),
(126, '_site_transient_timeout_browser_9b9ac2d5dc9332a559f9964c7caae790', '1518042550', 'no'),
(127, '_site_transient_browser_9b9ac2d5dc9332a559f9964c7caae790', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.119";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'My first Theme', 'yes'),
(144, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517580975;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(149, '_transient_twentyfifteen_categories', '1', 'yes'),
(156, '_site_transient_timeout_browser_bc0aac3569031babbd73e069947a4b12', '1518183362', 'no'),
(157, '_site_transient_browser_bc0aac3569031babbd73e069947a4b12', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"52.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:1;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(158, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1517621765', 'no'),
(159, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(160, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1517621770', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(161, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"\n	Fri, 02 Feb 2018 08:10:18 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-alpha-42637";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"The Month in WordPress: January 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2018/02/the-month-in-wordpress-january-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Feb 2018 08:10:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5541";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:339:"Things got off to a gradual start in 2018 with momentum starting to pick up over the course of the month. There were some notable developments in January, including a new point release and work being done on other important areas of the WordPress project. WordPress 4.9.2 Security and Maintenance Release On January 16, WordPress [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3863:"\n<p>Things got off to a gradual start in 2018 with momentum starting to pick up over the course of the month. There were some notable developments in January, including a new point release and work being done on other important areas of the WordPress project.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordPress 4.9.2 Security and Maintenance Release</h2>\n\n\n\n<p>On January 16, <a href="https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/">WordPress 4.9.2 was released</a> to fix an important security issue with the media player, as well as a number of other smaller bugs. This release goes a long way to smoothing out the 4.9 release cycle with the next point release, v4.9.3, <a href="https://make.wordpress.org/core/2018/01/31/wordpress-4-9-3-release-pushed-to-february-5th/">due in early February</a>.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and follow<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>\n\n\n\n<h2>Updated Plugin Directory Guidelines</h2>\n\n\n\n<p>At the end of 2017, <a href="https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/">the guidelines for the Plugin Directory</a> received a significant update to make them clearer and expanded to address certain situations. This does not necessarily make these guidelines complete, but rather more user-friendly and practical; they govern how developers build plugins for the Plugin Directory, so they need to evolve with the global community that the Directory serves.</p>\n\n\n\n<p>If you would like to contribute to these guidelines, you can make a pull request to <a href="https://github.com/WordPress/wporg-plugin-guidelines">the GitHub repository</a> or email <a href="mailto:plugins@wordpress.org">plugins@wordpress.org</a>. You can also jump into the #pluginreview channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>Near the end of last year a lot of work was put into improving the standards in the WordPress core codebase and now <a href="https://make.wordpress.org/core/2017/11/30/wordpress-php-now-mostly-conforms-to-wordpress-coding-standards/">the entire platform is at nearly 100% compliance with the WordPress coding standards</a>.</li>\n    <li>Gutenberg, the new editor coming to WordPress core in the next major release, <a href="https://make.wordpress.org/core/2018/01/25/whats-new-in-gutenberg-25th-january/">was updated to v2.1 this month</a> with some great usability and technical improvements.</li>\n    <li>The Global Community Team is <a href="https://make.wordpress.org/community/2018/01/16/2018-goals-for-the-global-community-team-suggestions-time/">taking suggestions for the goals of the Community program in 2018</a>.</li>\n    <li><a href="https://online.wpcampus.org/">WPCampus Online</a>, a digital conference focused on WordPress in higher education, took place on January 30. The videos of the event sessions will be online soon.</li>\n    <li>A WordPress community member <a href="https://wptavern.com/new-toolkit-simplifies-the-process-of-creating-gutenberg-blocks">has released a toolkit</a> to help developers build blocks for Gutenberg.</li>\n    <li>The community team that works to improve the WordPress hosting experience is relatively young, but <a href="https://make.wordpress.org/hosting/2018/01/25/hosting-meeting-notes-january-10-2018/">they have been making some great progress recently</a>.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5541";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.9.2 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Jan 2018 23:00:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5376";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:360:"WordPress 4.9.2 is now available. This is a security and maintenance release for all versions since WordPress 3.7﻿. We strongly encourage you to update your sites immediately. An XSS vulnerability was discovered in the Flash fallback files in MediaElement, a library that is included with WordPress. Because the Flash files are no longer needed for [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Ian Dunn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3965:"\n<p>WordPress 4.9.2 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7﻿. We strongly encourage you to update your sites immediately.</p>\n\n\n\n<p>An XSS vulnerability was discovered in the Flash fallback files in MediaElement, a library that is included with WordPress. Because the Flash files are no longer needed for most use cases, they have been removed from WordPress.</p>\n\n\n\n<p>MediaElement has released a new version that contains a fix for the bug, and <a href="https://wordpress.org/plugins/mediaelement-flash-fallbacks/">a WordPress plugin containing the fixed files</a> is available in the plugin repository.</p>\n\n\n\n<p>Thank you to the reporters of this issue for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible security disclosure</a>: <a href="https://opnsec.com">Enguerran Gillier</a> and <a href="https://widiz.com/">Widiz﻿</a>.</p>\n\n\n\n<p>21 other bugs were fixed in WordPress 4.9.2. Particularly of note were:</p>\n\n\n\n<ul>\n    <li>JavaScript errors that prevented saving posts in Firefox have been fixed.</li>\n    <li>The previous taxonomy-agnostic behavior of <code>get_category_link()</code> and <code>category_description()</code> was restored.</li>\n    <li>Switching themes will now attempt to restore previous widget assignments, even when there are no sidebars to map.<br /></li>\n</ul>\n\n\n\n<p>The Codex has <a href="https://codex.wordpress.org/Version_4.9.2">more information about all of the issues fixed in 4.9.2</a>, if you&#x27;d like to learn more.</p>\n\n\n\n<p>﻿<a href="https://wordpress.org/download/"></a><a href="https://wordpress.org/download/">Download WordPress 4.9.2</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 4.9.2:</p>\n\n\n\n<p><a href="https://profiles.wordpress.org/0x6f0/">0x6f0</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/aduth/">Andrew Duthie</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/icaleb/">Caleb Burks</a>, <a href="https://profiles.wordpress.org/poena/">Carolina Nymark</a>, <a href="https://profiles.wordpress.org/chasewg/">chasewg</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/hardik-amipara/">Hardik Amipara</a>, <a href="https://profiles.wordpress.org/ionvv/">ionvv</a>, <a href="https://profiles.wordpress.org/jaswrks/">Jason Caldwell</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnschulz/">johnschulz</a>, <a href="https://profiles.wordpress.org/juiiee8487/">Juhi Patel</a>, <a href="https://profiles.wordpress.org/obenland/">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/markjaquith/">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/rabmalin/">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rinkuyadav999/">Rinku Y</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.﻿<strong></strong><br /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5376";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"The Month in WordPress: December 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2018/01/the-month-in-wordpress-december-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jan 2018 10:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5424";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:311:"Activity slowed down in December in the WordPress community, particularly in the last two weeks. However, the month started off with a big event and work pushed forward in a number of key areas of the project. Read on to find out more about what transpired in the WordPress community as 2017 came to a [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4744:"\n<p>Activity slowed down in December in the WordPress community, particularly in the last two weeks. However, the month started off with a big event and work pushed forward in a number of key areas of the project. Read on to find out more about what transpired in the WordPress community as 2017 came to a close.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordCamp US 2017 Brings the Community Together</h2>\n\n\n\n<p>The latest edition of <a href="https://2017.us.wordcamp.org/">WordCamp US</a> took place last month in Nashville on December 1-3. The event brought together over 1,400 WordPress enthusiasts from around the world, fostering a deeper, more engaged global community.</p>\n\n\n\n<p>While attending a WordCamp is always a unique experience, you can catch up on <a href="https://wordpress.tv/event/wordcamp-us-2017/">the sessions on WordPress.tv</a> and look through <a href="https://www.facebook.com/pg/WordCampUSA/photos/?tab=albums">the event photos on Facebook</a> to get a feel for how it all happened. Of course, <a href="https://wordpress.tv/2017/12/04/matt-mullenweg-state-of-the-word-2017/">Matt Mullenweg’s State of the Word</a> talk is always one of the highlights at this event.</p>\n\n\n\n<p>The next WordCamp US will be held in Nashville again in 2018, but if you would like to see it hosted in your city in 2019 and 2020, then <a href="https://make.wordpress.org/community/2017/12/19/apply-to-host-wordcamp-us-2019-2020/">you have until February 2 to apply</a>.</p>\n\n\n\n<h2>WordPress User Survey Data Is Published</h2>\n\n\n\n<p>Over the last few years, tens of thousands of WordPress users all over the world have filled out the annual WordPress user survey. The results of that survey are used to improve the WordPress project, but that data has mostly remained private. This has changed now and <a href="https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/">the results from the last three surveys are now publicly available</a> for everyone to analyze.</p>\n\n\n\n<p>The data will be useful to anyone involved in WordPress since it provides a detailed look at who uses WordPress and what they do with it — information that can help inform product development decisions across the board.</p>\n\n\n\n<h2>New WordPress.org Team for the Tide Project</h2>\n\n\n\n<p>As announced at WordCamp US, <a href="https://make.wordpress.org/tide/2017/12/02/new-home/">the Tide project is being brought under the WordPress.org umbrella</a> to be managed and developed by the community.</p>\n\n\n\n<p>Tide is a series of automated tests run against every plugin and theme in the directory to help WordPress users make informed decisions about the plugins and themes that they choose to install.</p>\n\n\n\n<p>To get involved in developing Tide, jump into the #tide channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/tide/">the Tide team blog</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>If you’re following the development of Gutenberg, or if you want a primer on where it’s headed, then <a href="https://wordpress.tv/2017/12/10/morten-rand-hendriksen-gutenberg-and-the-wordpress-of-tomorrow/">Morten Rand-Hendriksen’s talk from WordCamp US</a> is a must watch.</li>\n    <li>The annual surveys for WordPress <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-member-survey">meetup members</a> and <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-organizer-survey">meetup organizers</a> are available for people to fill out — if you’re involved in or attend your local meetup group then be sure to complete those.</li>\n    <li>10up has <a href="https://distributorplugin.com/">a brand new plugin in beta</a> that will assist with powerful and flexible content publishing and syndication across WordPress sites.</li>\n    <li><a href="https://make.wordpress.org/community/2017/12/07/should-we-change-the-default-wordcamp-theme-to-campsite-2017/">The Community Team is exploring a move</a> to make the recently developed CampSite theme the default theme for all new WordCamp websites. This is the theme that was developed and employed for <a href="https://2017.europe.wordcamp.org">WordCamp Europe 2017</a>.</li>\n    <li>The team working on the multisite features of WordPress Core has recently published <a href="https://make.wordpress.org/core/2017/12/19/multisite-roadmap-published/">their planned roadmap for development</a>.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5424";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"WordPress User Survey Data for 2015-2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Dec 2017 21:40:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"WrapUp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:6:"survey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5310";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:321:"For many years, we&#8217;ve invited folks to tell us how they use WordPress by filling out an annual survey. In the past, interesting results from this survey have been shared in the annual State of the Word address. This year, for the first time, the results of the 2017 survey are being published on WordPress [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:64131:"<p>For many years, we&#8217;ve invited folks to tell us how they use WordPress by filling out an annual survey. In the past, interesting results from this survey have been shared in the annual <a href="https://ma.tt/2017/12/state-of-the-word-2017/">State of the Word</a> address. This year, for the first time, the results of the 2017 survey are being published on WordPress News, along with the results of the 2015 and 2016 survey.</p>\n<p>So that information from the survey doesn&#8217;t reveal anything that respondents might consider private, we do not publish a full export of the raw data. We’d love to make this information as accessible as possible, though, so if you have a suggestion for an OS project or tool we can put the data into that allows people to play with it that still protects individual response privacy, please leave a comment on this post!</p>\n<h4>Major Groups</h4>\n<p>This survey features multiple groups, dividing respondents at the first question:</p>\n<blockquote><p>Which of the following best describes how you use WordPress? (<em>Mandatory</em>)</p></blockquote>\n<p>Those who selected &#8220;I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, or other custom work.)&#8221; were served questions from what we&#8217;ll call the &#8220;WordPress Professionals&#8221; group.</p>\n<p>This &#8220;WordPress Professionals&#8221; group is further divided into WordPress Company and WordPress Freelancer/Hobbyist groups, based on how the respondent answered the question, &#8220;Which of the following best describes your involvement with WordPress? (2015) / Do you work for a company, or on your own? (2016-17).&#8221;</p>\n<p>Those who selected &#8220;I own, run, or contribute to a blog or website that is built with WordPress.&#8221; were served questions in what we&#8217;re calling the &#8220;WordPress Users&#8221; group.</p>\n<p>The relevant survey group is noted in each table below. In the case of questions that were served to different groups in 2015 but then served to all respondents in 2016 and 2017, the group responses from 2015 have been consolidated into one set of data for easier comparison between years.</p>\n<h4>Survey results</h4>\n<p><a href="#pro">Jump to answers from WordPress Professionals</a></p>\n<p><a href="#user">Jump to answers from WordPress Users</a></p>\n<p><a href="#all">Jump to answers from All Respondents</a></p>\n<p><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></p>\n<h3>Which of the following best describes how you use WordPress? (Mandatory)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td>Number of responses (since this question was mandatory, the number of responses here is the total number for the survey)</td>\n<td>45,995</td>\n<td></td>\n<td>15,585</td>\n<td></td>\n<td>16,029</td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, other custom work.)</td>\n<td>26,662</td>\n<td>58%</td>\n<td>8,838</td>\n<td>57%</td>\n<td>9,099</td>\n<td>57%</td>\n</tr>\n<tr>\n<td>I own, run, or contribute to a blog or website that is built with WordPress.</td>\n<td>16,130</td>\n<td>35%</td>\n<td>5,293</td>\n<td>34%</td>\n<td>5,625</td>\n<td>35%</td>\n</tr>\n<tr>\n<td>Neither of the above.</td>\n<td>3,204</td>\n<td>7%</td>\n<td>1,460</td>\n<td>9%</td>\n<td>1,306</td>\n<td>8%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="pro">WordPress Professionals</h2>\n<h3><strong>Which of the following best describes your involvement with WordPress? (Mandatory, 2015) / Do you work for a company, or on your own? (Mandatory, 2016-17)</strong></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>26,699</td>\n<td></td>\n<td>8,838</td>\n<td></td>\n<td>9,101</td>\n<td></td>\n</tr>\n<tr>\n<td>My primary job is working for a company or organization that uses WordPress.</td>\n<td>9,505</td>\n<td>36%</td>\n<td>3,529</td>\n<td>40%</td>\n<td>3,660</td>\n<td>40%</td>\n</tr>\n<tr>\n<td>My primary job is as a self-employed designer or developer that uses WordPress.</td>\n<td>9,310</td>\n<td>35%</td>\n<td>3,188</td>\n<td>36%</td>\n<td>3,440</td>\n<td>38%</td>\n</tr>\n<tr>\n<td>I earn money from part-time or occasional freelance work involving WordPress.</td>\n<td>5,954</td>\n<td>22%</td>\n<td>1,633</td>\n<td>18%</td>\n<td>1,590</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>Work that I do involving WordPress is just a hobby, I don&#8217;t make money from it.</td>\n<td>1,930</td>\n<td>7%</td>\n<td>491</td>\n<td>6%</td>\n<td>411</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>How does your company or organization work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,342</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations.</td>\n<td>7,772</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or customize themes.</td>\n<td>5,404</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for my own use.</td>\n<td>4,733</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Host websites for customers.</td>\n<td>4,397</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or distribute plugins.</td>\n<td>3,181</td>\n<td>11%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress.</td>\n<td>1,349</td>\n<td>5%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps.</td>\n<td>1,127</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core.</td>\n<td>914</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>182</td>\n<td> 1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,457</td>\n<td></td>\n<td>3,598</td>\n<td></td>\n</tr>\n<tr>\n<td>We make websites for others.</td>\n<td></td>\n<td></td>\n<td>2,695</td>\n<td>24%</td>\n<td>2,722</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>We make websites for ourselves.</td>\n<td></td>\n<td></td>\n<td>2,355</td>\n<td>21%</td>\n<td>2,470</td>\n<td>21%</td>\n</tr>\n<tr>\n<td>We develop or customize themes.</td>\n<td></td>\n<td></td>\n<td>1,866</td>\n<td>16%</td>\n<td>1,910</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>We host websites for others.</td>\n<td></td>\n<td></td>\n<td>1,564</td>\n<td>14%</td>\n<td>1,595</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>We develop or distribute plugins.</td>\n<td></td>\n<td></td>\n<td>1,283</td>\n<td>11%</td>\n<td>1,342</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>We provide educational resources to help others to use WordPress.</td>\n<td></td>\n<td></td>\n<td>581</td>\n<td>5%</td>\n<td>631</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We sponsor and/or attend WordCamps.</td>\n<td></td>\n<td></td>\n<td>561</td>\n<td>5%</td>\n<td>579</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We contribute bug reports and/or patches to WordPress core.</td>\n<td></td>\n<td></td>\n<td>444</td>\n<td>4%</td>\n<td>468</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>98</td>\n<td>1%</td>\n<td>96</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How would you describe the business of your typical client(s)? (2015) / How would you describe the business of your typical client/customer? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,154</td>\n<td></td>\n<td>3,317</td>\n<td></td>\n<td>3,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>6,893</td>\n<td>32%</td>\n<td>2,398</td>\n<td>31%</td>\n<td>2,510</td>\n<td>31%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>3,635</td>\n<td>17%</td>\n<td>1,361</td>\n<td>18%</td>\n<td>1,447</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>2,644</td>\n<td>12%</td>\n<td>934</td>\n<td>12%</td>\n<td>992</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>2,600</td>\n<td>12%</td>\n<td>888</td>\n<td>12%</td>\n<td>1,022</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>2,344</td>\n<td>11%</td>\n<td>854</td>\n<td>11%</td>\n<td>966</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>2,065</td>\n<td>10%</td>\n<td>637</td>\n<td>8%</td>\n<td>677</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,410</td>\n<td>6%</td>\n<td>524</td>\n<td>7%</td>\n<td>552</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>127</td>\n<td>1%</td>\n<td>66</td>\n<td>1%</td>\n<td>64</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How does your company or organization use WordPress when developing websites? (2015) / When making websites, how does your company or organization use WordPress? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,078</td>\n<td></td>\n<td>3,369</td>\n<td></td>\n<td>3,552</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>6,361</td>\n<td>70%</td>\n<td>2,482</td>\n<td>74%</td>\n<td>2,640</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>1,222</td>\n<td>13%</td>\n<td>370</td>\n<td>11%</td>\n<td>383</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>721</td>\n<td>8%</td>\n<td>137</td>\n<td>4%</td>\n<td>129</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>629</td>\n<td>7%</td>\n<td>303</td>\n<td>9%</td>\n<td>303</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>145</td>\n<td>2%</td>\n<td>78</td>\n<td>2%</td>\n<td>97</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,054</td>\n<td></td>\n<td>3,302</td>\n<td></td>\n<td>3,473</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>5,651</td>\n<td>62%</td>\n<td>2,025</td>\n<td>61%</td>\n<td>2,105</td>\n<td>61%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>2,230</td>\n<td>25%</td>\n<td>799</td>\n<td>24%</td>\n<td>905</td>\n<td>26%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>756</td>\n<td>8%</td>\n<td>302</td>\n<td>9%</td>\n<td>298</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>417</td>\n<td>5%</td>\n<td>177</td>\n<td>5%</td>\n<td>165</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly how many currently active WordPress sites has your company or organization built?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,801</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>1,074</td>\n<td>12%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,721</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>1,718</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>1,284</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>1,109</td>\n<td>13%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>1,418</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>390</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>87</td>\n<td>1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,358</td>\n<td></td>\n<td>3,540</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>291</td>\n<td>9%</td>\n<td>331</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>770</td>\n<td>23%</td>\n<td>894</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>1,144</td>\n<td>34%</td>\n<td>1,177</td>\n<td>33%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>926</td>\n<td>28%</td>\n<td>896</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>228</td>\n<td>7%</td>\n<td>242</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many person-hours (of your company&#8217;s work) does the typical site take to complete?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,091</td>\n<td></td>\n<td>3,353</td>\n<td></td>\n<td>3,522</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>939</td>\n<td>10%</td>\n<td>309</td>\n<td>9%</td>\n<td>325</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>1080</td>\n<td>12%</td>\n<td>329</td>\n<td>10%</td>\n<td>367</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>1541</td>\n<td>17%</td>\n<td>527</td>\n<td>16%</td>\n<td>513</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>1854</td>\n<td>20%</td>\n<td>583</td>\n<td>17%</td>\n<td>620</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>2066</td>\n<td>23%</td>\n<td>691</td>\n<td>21%</td>\n<td>685</td>\n<td>19%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>1611</td>\n<td>18%</td>\n<td>479</td>\n<td>14%</td>\n<td>519</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>Prefer not to answer (2016, 2017)</td>\n<td></td>\n<td></td>\n<td>436</td>\n<td>13%</td>\n<td>493</td>\n<td>14%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your company or organization&#8217;s output is based around WordPress (as opposed to other platforms or software)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,950</td>\n<td></td>\n<td>3,345</td>\n<td></td>\n<td>3,503</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>1,089</td>\n<td>12%</td>\n<td>438</td>\n<td>13%</td>\n<td>480</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,043</td>\n<td>12%</td>\n<td>417</td>\n<td>12%</td>\n<td>459</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>955</td>\n<td>11%</td>\n<td>367</td>\n<td>11%</td>\n<td>424</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>831</td>\n<td>9%</td>\n<td>305</td>\n<td>9%</td>\n<td>344</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>534</td>\n<td>6%</td>\n<td>246</td>\n<td>7%</td>\n<td>226</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>973</td>\n<td>11%</td>\n<td>335</td>\n<td>10%</td>\n<td>338</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>613</td>\n<td>7%</td>\n<td>245</td>\n<td>7%</td>\n<td>202</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>877</td>\n<td>10%</td>\n<td>335</td>\n<td>10%</td>\n<td>310</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>806</td>\n<td>9%</td>\n<td>242</td>\n<td>7%</td>\n<td>280</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,039</td>\n<td>12%</td>\n<td>344</td>\n<td>10%</td>\n<td>348</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>190</td>\n<td>2%</td>\n<td>72</td>\n<td>2%</td>\n<td>92</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>In which of the following ways do you work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>17,009</td>\n<td></td>\n<td>5,221</td>\n<td></td>\n<td>5,425</td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations</td>\n<td>15,342</td>\n<td>34%</td>\n<td>4,795</td>\n<td>34%</td>\n<td>5,064</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Develop or customize themes</td>\n<td>10,549</td>\n<td>24%</td>\n<td>2,997</td>\n<td>21%</td>\n<td>3,021</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Host websites for customers</td>\n<td>8,142</td>\n<td>18%</td>\n<td>2,466</td>\n<td>17%</td>\n<td>2,728</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Develop or distribute plugins</td>\n<td>4,125</td>\n<td>9%</td>\n<td>1,395</td>\n<td>10%</td>\n<td>1,416</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress</td>\n<td>3,276</td>\n<td>7%</td>\n<td>1,187</td>\n<td>8%</td>\n<td>1,308</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps</td>\n<td>1,559</td>\n<td>4%</td>\n<td>648</td>\n<td>5%</td>\n<td>724</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core</td>\n<td>1,107</td>\n<td>2%</td>\n<td>381</td>\n<td>3%</td>\n<td>393</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>389</td>\n<td>1%</td>\n<td>243</td>\n<td>2%</td>\n<td>299</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How would you describe the business of your typical client(s)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,863</td>\n<td></td>\n<td>5,151</td>\n<td></td>\n<td>5,353</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>14,185</td>\n<td>35%</td>\n<td>4,342</td>\n<td>35%</td>\n<td>4,622</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>8,513</td>\n<td>21%</td>\n<td>2,581</td>\n<td>21%</td>\n<td>2,583</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>6,585</td>\n<td>16%</td>\n<td>2,004</td>\n<td>16%</td>\n<td>2,113</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>4,301</td>\n<td>11%</td>\n<td>1,258</td>\n<td>10%</td>\n<td>1,216</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>3,458</td>\n<td>8%</td>\n<td>1,049</td>\n<td>8%</td>\n<td>1,139</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>2,391</td>\n<td>6%</td>\n<td>805</td>\n<td>6%</td>\n<td>857</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,150</td>\n<td>3%</td>\n<td>300</td>\n<td>2%</td>\n<td>329</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>173</td>\n<td>0%</td>\n<td>101</td>\n<td>1%</td>\n<td>99</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How do you use WordPress in your development?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,768</td>\n<td></td>\n<td>5,145</td>\n<td></td>\n<td>5,372</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>11,754</td>\n<td>70%</td>\n<td>3,641</td>\n<td>71%</td>\n<td>3,959</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>2,825</td>\n<td>17%</td>\n<td>812</td>\n<td>16%</td>\n<td>721</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>1,012</td>\n<td>6%</td>\n<td>343</td>\n<td>7%</td>\n<td>344</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>992</td>\n<td>6%</td>\n<td>246</td>\n<td>5%</td>\n<td>226</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>185</td>\n<td>1%</td>\n<td>105</td>\n<td>2%</td>\n<td>122</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,699</td>\n<td></td>\n<td>5,131</td>\n<td></td>\n<td>5,317</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>9,457</td>\n<td>57%</td>\n<td>2,837</td>\n<td>55%</td>\n<td>2,998</td>\n<td>56%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>5,526</td>\n<td>33%</td>\n<td>1,694</td>\n<td>33%</td>\n<td>1,781</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>977</td>\n<td>6%</td>\n<td>341</td>\n<td>7%</td>\n<td>310</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>739</td>\n<td>4%</td>\n<td>261</td>\n<td>5%</td>\n<td>228</td>\n<td>4%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many currently active WordPress sites have you built? (2015) / Roughly how many currently active WordPress sites have you built? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,690</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>514</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,728</td>\n<td>10%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>3,000</td>\n<td>18%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>3,146</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>3,405</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>3,838</td>\n<td>23%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>698</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>361</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,165</td>\n<td></td>\n<td>5367</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>110</td>\n<td>2%</td>\n<td>104</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>603</td>\n<td>12%</td>\n<td>713</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>2,264</td>\n<td>44%</td>\n<td>2,457</td>\n<td>46%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>1,871</td>\n<td>36%</td>\n<td>1,813</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>319</td>\n<td>6%</td>\n<td>280</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your working time is spent working with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,658</td>\n<td></td>\n<td>5,039</td>\n<td></td>\n<td>5,241</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>949</td>\n<td>6%</td>\n<td>459</td>\n<td>9%</td>\n<td>461</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,300</td>\n<td>8%</td>\n<td>527</td>\n<td>10%</td>\n<td>540</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>1,784</td>\n<td>11%</td>\n<td>637</td>\n<td>13%</td>\n<td>711</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>1,850</td>\n<td>11%</td>\n<td>608</td>\n<td>12%</td>\n<td>627</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>1,313</td>\n<td>8%</td>\n<td>438</td>\n<td>9%</td>\n<td>465</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>2,095</td>\n<td>13%</td>\n<td>612</td>\n<td>12%</td>\n<td>639</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>1,438</td>\n<td>9%</td>\n<td>391</td>\n<td>8%</td>\n<td>384</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>2,076</td>\n<td>12%</td>\n<td>530</td>\n<td>11%</td>\n<td>511</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>1,743</td>\n<td>10%</td>\n<td>445</td>\n<td>9%</td>\n<td>429</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,819</td>\n<td>11%</td>\n<td>342</td>\n<td>7%</td>\n<td>419</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>291</td>\n<td>2%</td>\n<td>52</td>\n<td>1%</td>\n<td>55</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many hours of your work does the typical site take to complete? (2015) / How many hours of work does your typical WordPress project take to launch? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,670</td>\n<td></td>\n<td>5,164</td>\n<td></td>\n<td>5,378</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>503</td>\n<td>3%</td>\n<td>222</td>\n<td>4%</td>\n<td>245</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>973</td>\n<td>6%</td>\n<td>386</td>\n<td>7%</td>\n<td>393</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>2,277</td>\n<td>14%</td>\n<td>788</td>\n<td>15%</td>\n<td>815</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>3,896</td>\n<td>23%</td>\n<td>1,153</td>\n<td>22%</td>\n<td>1,216</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>6,068</td>\n<td>36%</td>\n<td>1,487</td>\n<td>29%</td>\n<td>1,582</td>\n<td>29%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>2,953</td>\n<td>18%</td>\n<td>712</td>\n<td>14%</td>\n<td>751</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>418</td>\n<td>8%</td>\n<td>376</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which of the following have you done with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" /> </colgroup>\n</table>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional (Company/Freelancer/Hobbyist)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>20,687</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a theme from scratch.</td>\n<td>11,894</td>\n<td>25%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a plugin.</td>\n<td>9,719</td>\n<td>21%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve answered a question in the WordPress forum.</td>\n<td>8,805</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordPress meetup.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve submitted a WordPress bug report.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordCamp.</td>\n<td>3,571</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed to WordPress documentation.</td>\n<td>1,778</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1,739</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed a WordPress core patch.</td>\n<td>1,055</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>22,718</td>\n<td></td>\n<td>7,891</td>\n<td></td>\n<td>8,267</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>9,450</td>\n<td>42%</td>\n<td>3,454</td>\n<td>44%</td>\n<td>3,852</td>\n<td>47%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>8,601</td>\n<td>38%</td>\n<td>3,116</td>\n<td>39%</td>\n<td>3,555</td>\n<td>43%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>3,806</td>\n<td>17%</td>\n<td>1,211</td>\n<td>15%</td>\n<td>1,340</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>2,291</td>\n<td>10%</td>\n<td>802</td>\n<td>10%</td>\n<td>908</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>249</td>\n<td>1%</td>\n<td>86</td>\n<td>1%</td>\n<td>187</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3> What&#8217;s the most frustrating thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>21,144</td>\n<td></td>\n<td>7,294</td>\n<td></td>\n<td>7,691</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>6,122</td>\n<td>29%</td>\n<td>2,194</td>\n<td>30%</td>\n<td>2,187</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilities/hacks</td>\n<td>2,321</td>\n<td>11%</td>\n<td>712</td>\n<td>10%</td>\n<td>829</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>1,544</td>\n<td>7%</td>\n<td>422</td>\n<td>6%</td>\n<td>508</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Nothing/I don&#8217;t know/can&#8217;t think of anything</td>\n<td>1,276</td>\n<td>6%</td>\n<td>344</td>\n<td>5%</td>\n<td>476</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Speed/performance/slow/heavy</td>\n<td>1,196</td>\n<td>6%</td>\n<td>644</td>\n<td>9%</td>\n<td>516</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not asked in the 2015 survey)</td>\n<td></td>\n<td></td>\n<td>8,672</td>\n<td></td>\n<td>9,059</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>7551</td>\n<td>87%</td>\n<td>7836</td>\n<td>87%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>754</td>\n<td>9%</td>\n<td>795</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>370</td>\n<td>4%</td>\n<td>428</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="user">WordPress Users</h2>\n<h3>Which of the following describes how you use WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,169</td>\n<td></td>\n<td>5,043</td>\n<td></td>\n<td>5,521</td>\n<td></td>\n</tr>\n<tr>\n<td>My personal blog (or blogs) uses WordPress.</td>\n<td>9,395</td>\n<td>36%</td>\n<td>3,117</td>\n<td>36%</td>\n<td>3,424</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>My company or organization&#8217;s website is built with WordPress software.</td>\n<td>7,480</td>\n<td>29%</td>\n<td>2,519</td>\n<td>29%</td>\n<td>2,841</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>I have a hobby or side project that has a website built with WordPress.</td>\n<td>6,112</td>\n<td>23%</td>\n<td>1,973</td>\n<td>23%</td>\n<td>2,200</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>I write (or otherwise work) for an online publication that uses WordPress.</td>\n<td>2,329</td>\n<td>9%</td>\n<td>806</td>\n<td>9%</td>\n<td>821</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>872</td>\n<td>3%</td>\n<td>234</td>\n<td>3%</td>\n<td>288</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>Who installed your WordPress website?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,055</td>\n<td></td>\n<td>5,020</td>\n<td></td>\n<td>5,523</td>\n<td></td>\n</tr>\n<tr>\n<td>I did.</td>\n<td>11,216</td>\n<td>66%</td>\n<td>3,659</td>\n<td>73%</td>\n<td>4,129</td>\n<td>75%</td>\n</tr>\n<tr>\n<td>My hosting provider</td>\n<td>2,236</td>\n<td>13%</td>\n<td>667</td>\n<td>13%</td>\n<td>767</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>An external company</td>\n<td>909</td>\n<td>5%</td>\n<td>182</td>\n<td>4%</td>\n<td>178</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>An internal web person/team or a colleague</td>\n<td>874</td>\n<td>5%</td>\n<td>178</td>\n<td>4%</td>\n<td>191</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>A friend or family member</td>\n<td>787</td>\n<td>5%</td>\n<td>192</td>\n<td>4%</td>\n<td>172</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>I don&#8217;t know</td>\n<td>502</td>\n<td>3%</td>\n<td>145</td>\n<td>3%</td>\n<td>87</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>345</td>\n<td>2%</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n</tr>\n</tbody>\n</table>\n<h3>How much has the site been customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,789</td>\n<td></td>\n<td>4,997</td>\n<td></td>\n<td>5,494</td>\n<td></td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>7,465</td>\n<td>50%</td>\n<td>2,337</td>\n<td>47%</td>\n<td>2,660</td>\n<td>48%</td>\n</tr>\n<tr>\n<td>A lot of work has been done, the site itself is unrecognizable from the original theme, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>4,715</td>\n<td>32%</td>\n<td>1,707</td>\n<td>34%</td>\n<td>1,872</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as it was when I started out.</td>\n<td>1,841</td>\n<td>12%</td>\n<td>635</td>\n<td>13%</td>\n<td>673</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything has been customized.</td>\n<td>768</td>\n<td>5%</td>\n<td>321</td>\n<td>6%</td>\n<td>290</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,328</td>\n<td></td>\n<td>4,613</td>\n<td></td>\n<td>5,076</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>7,391</td>\n<td>52%</td>\n<td>2,276</td>\n<td>49%</td>\n<td>2,511</td>\n<td>49%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>4,219</td>\n<td>29%</td>\n<td>1,569</td>\n<td>34%</td>\n<td>1,632</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>1,586</td>\n<td>11%</td>\n<td>493</td>\n<td>11%</td>\n<td>538</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>1,085</td>\n<td>8%</td>\n<td>388</td>\n<td>8%</td>\n<td>458</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>223</td>\n<td>2%</td>\n<td>74</td>\n<td>2%</td>\n<td>48</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the most frustrating thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>13,681</td>\n<td></td>\n<td>4,287</td>\n<td></td>\n<td>4,758</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>2,531</td>\n<td>19%</td>\n<td>1,183</td>\n<td>28%</td>\n<td>1,300</td>\n<td>27%</td>\n</tr>\n<tr>\n<td>Customization/design/look/template</td>\n<td>1,273</td>\n<td>9%</td>\n<td>381</td>\n<td>9%</td>\n<td>408</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Code/coding/PHP</td>\n<td>931</td>\n<td>7%</td>\n<td>306</td>\n<td>7%</td>\n<td>277</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>926</td>\n<td>7%</td>\n<td>209</td>\n<td>5%</td>\n<td>296</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilites/hacks</td>\n<td>785</td>\n<td>6%</td>\n<td>255</td>\n<td>6%</td>\n<td>292</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,026</td>\n<td></td>\n<td>5,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>4,038</td>\n<td>80%</td>\n<td>4,462</td>\n<td>81%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>737</td>\n<td>15%</td>\n<td>782</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>5%</td>\n<td>255</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="all">All Respondents</h2>\n<h3>Can you (truthfully!) say &#8220;I make my living from WordPress&#8221;?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,236</td>\n<td></td>\n<td>14,906</td>\n<td></td>\n<td>15,616</td>\n<td></td>\n</tr>\n<tr>\n<td>Not really, but I do get some or all of my income as a result of working with WordPress.</td>\n<td>16,607</td>\n<td>39%</td>\n<td>5,408</td>\n<td>36%</td>\n<td>5,702</td>\n<td>37%</td>\n</tr>\n<tr>\n<td>Yes.</td>\n<td>9,635</td>\n<td>23%</td>\n<td>4,791</td>\n<td>32%</td>\n<td>5,033</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>No.</td>\n<td>15,995</td>\n<td>38%</td>\n<td>4,713</td>\n<td>32%</td>\n<td>4,882</td>\n<td>31%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which devices do you access WordPress on?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,433</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Web</td>\n<td>40,503</td>\n<td>95%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android phone</td>\n<td>15,396</td>\n<td>36%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPhone</td>\n<td>12,353</td>\n<td>29%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPad</td>\n<td>11,748</td>\n<td>28%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android tablet</td>\n<td>9,223</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Desktop app, like MarsEdit</td>\n<td>6,018</td>\n<td>14%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1837</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not broken out by group in 2016-2017)</td>\n<td></td>\n<td></td>\n<td>14,840</td>\n<td></td>\n<td>15,597</td>\n<td></td>\n</tr>\n<tr>\n<td>Web browser on a desktop or laptop</td>\n<td></td>\n<td></td>\n<td>14,160</td>\n<td>54%</td>\n<td>15,052</td>\n<td>55%</td>\n</tr>\n<tr>\n<td>Web browser on a mobile device (tablet or phone)</td>\n<td></td>\n<td></td>\n<td>7,952</td>\n<td>30%</td>\n<td>8,248</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>An app on a mobile device (table or phone)</td>\n<td></td>\n<td></td>\n<td>3,309</td>\n<td>13%</td>\n<td>3,311</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>A desktop app like MarsEdit</td>\n<td></td>\n<td></td>\n<td>517</td>\n<td>2%</td>\n<td>498</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>282</td>\n<td>1%</td>\n<td>240</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress now updates minor &amp; security releases automatically for you. Check all that apply: (question not asked in 2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups)</td>\n<td>39,726</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I love auto-updates.</td>\n<td>17,367</td>\n<td>44%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for plugins.</td>\n<td>12,796</td>\n<td>32%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Initially, I was nervous about auto updates.</td>\n<td>11,868</td>\n<td>30%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates still make me nervous.</td>\n<td>10,809</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates don&#8217;t make me nervous now.</td>\n<td>10,708</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for themes.</td>\n<td>10,449</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto updates for major versions of WordPress.</td>\n<td>10,225</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>This is the first I&#8217;ve heard of auto-updates.</td>\n<td>8,660</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I hate auto-updates.</td>\n<td>3,293</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What is your gender?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>13,953</td>\n<td></td>\n<td>14,680</td>\n<td></td>\n</tr>\n<tr>\n<td>Male</td>\n<td></td>\n<td></td>\n<td>10,978</td>\n<td>78.68%</td>\n<td>11,570</td>\n<td>78.81%</td>\n</tr>\n<tr>\n<td>Female</td>\n<td></td>\n<td></td>\n<td>2,340</td>\n<td>16.77%</td>\n<td>2,511</td>\n<td>21.70%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>601</td>\n<td>4.31%</td>\n<td>562</td>\n<td>3.83%</td>\n</tr>\n<tr>\n<td>Transgender</td>\n<td></td>\n<td></td>\n<td>11</td>\n<td>0.08%</td>\n<td>8</td>\n<td>0.05%</td>\n</tr>\n<tr>\n<td>Nonbinary</td>\n<td></td>\n<td></td>\n<td>8</td>\n<td>0.06%</td>\n<td>17</td>\n<td>0.12%</td>\n</tr>\n<tr>\n<td>Genderqueer</td>\n<td></td>\n<td></td>\n<td>4</td>\n<td>0.03%</td>\n<td>3</td>\n<td>0.02%</td>\n</tr>\n<tr>\n<td>Androgynous</td>\n<td></td>\n<td></td>\n<td>6</td>\n<td>0.04%</td>\n<td>5</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Fluid</td>\n<td></td>\n<td></td>\n<td>3</td>\n<td>0.02%</td>\n<td>4</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Demimale</td>\n<td></td>\n<td></td>\n<td>2</td>\n<td>0.01%</td>\n<td>0</td>\n<td>0</td>\n</tr>\n</tbody>\n</table>\n<h3>Where are you located?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>14,562</td>\n<td></td>\n<td>15,343</td>\n<td></td>\n</tr>\n<tr>\n<td>United States</td>\n<td></td>\n<td></td>\n<td>3,770</td>\n<td>25.89%</td>\n<td>4,067</td>\n<td>26.51%</td>\n</tr>\n<tr>\n<td>India</td>\n<td></td>\n<td></td>\n<td>1,456</td>\n<td>10.00%</td>\n<td>1,424</td>\n<td>9.28%</td>\n</tr>\n<tr>\n<td>United Kingdom</td>\n<td></td>\n<td></td>\n<td>810</td>\n<td>5.56%</td>\n<td>900</td>\n<td>5.87%</td>\n</tr>\n<tr>\n<td>Germany</td>\n<td></td>\n<td></td>\n<td>555</td>\n<td>3.81%</td>\n<td>729</td>\n<td>4.75%</td>\n</tr>\n<tr>\n<td>Canada</td>\n<td></td>\n<td></td>\n<td>511</td>\n<td>3.51%</td>\n<td>599</td>\n<td>3.90%</td>\n</tr>\n<tr>\n<td>Australia</td>\n<td></td>\n<td></td>\n<td>389</td>\n<td>2.67%</td>\n<td>460</td>\n<td>3.00%</td>\n</tr>\n<tr>\n<td>Italy</td>\n<td></td>\n<td></td>\n<td>298</td>\n<td>2.05%</td>\n<td>356</td>\n<td>2.32%</td>\n</tr>\n<tr>\n<td>Netherlands</td>\n<td></td>\n<td></td>\n<td>343</td>\n<td>2.36%</td>\n<td>350</td>\n<td>2.28%</td>\n</tr>\n<tr>\n<td>France</td>\n<td></td>\n<td></td>\n<td>232</td>\n<td>1.59%</td>\n<td>283</td>\n<td>1.84%</td>\n</tr>\n<tr>\n<td>Bangladesh</td>\n<td></td>\n<td></td>\n<td>257</td>\n<td>1.76%</td>\n<td>263</td>\n<td>1.71%</td>\n</tr>\n<tr>\n<td>Spain</td>\n<td></td>\n<td></td>\n<td>271</td>\n<td>1.86%</td>\n<td>252</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Brazil</td>\n<td></td>\n<td></td>\n<td>239</td>\n<td>1.64%</td>\n<td>251</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Pakistan</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>1.74%</td>\n<td>240</td>\n<td>1.56%</td>\n</tr>\n<tr>\n<td>Indonesia</td>\n<td></td>\n<td></td>\n<td>230</td>\n<td>1.58%</td>\n<td>226</td>\n<td>1.47%</td>\n</tr>\n<tr>\n<td>Iran, Islamic Republic of</td>\n<td></td>\n<td></td>\n<td>190</td>\n<td>1.30%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Sweden</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Nigeria</td>\n<td></td>\n<td></td>\n<td>196</td>\n<td>1.35%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>South Africa</td>\n<td></td>\n<td></td>\n<td>193</td>\n<td>1.33%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>Russian Federation</td>\n<td></td>\n<td></td>\n<td>181</td>\n<td>1.24%</td>\n<td>151</td>\n<td>0.98%</td>\n</tr>\n<tr>\n<td>Poland</td>\n<td></td>\n<td></td>\n<td>129</td>\n<td>0.89%</td>\n<td>137</td>\n<td>0.89%</td>\n</tr>\n<tr>\n<td>Romania</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>132</td>\n<td>0.86%</td>\n</tr>\n<tr>\n<td>Switzerland</td>\n<td></td>\n<td></td>\n<td>122</td>\n<td>0.84%</td>\n<td>130</td>\n<td>0.85%</td>\n</tr>\n<tr>\n<td>Philippines</td>\n<td></td>\n<td></td>\n<td>92</td>\n<td>0.63%</td>\n<td>125</td>\n<td>0.81%</td>\n</tr>\n<tr>\n<td>China</td>\n<td></td>\n<td></td>\n<td>136</td>\n<td>0.93%</td>\n<td>123</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Austria</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>122</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Ukraine</td>\n<td></td>\n<td></td>\n<td>105</td>\n<td>0.72%</td>\n<td>118</td>\n<td>0.77%</td>\n</tr>\n<tr>\n<td>Denmark</td>\n<td></td>\n<td></td>\n<td>107</td>\n<td>0.73%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Greece</td>\n<td></td>\n<td></td>\n<td>120</td>\n<td>0.82%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Portugal</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>109</td>\n<td>0.71%</td>\n</tr>\n<tr>\n<td>Vietnam</td>\n<td></td>\n<td></td>\n<td>101</td>\n<td>0.69%</td>\n<td>108</td>\n<td>0.70%</td>\n</tr>\n<tr>\n<td>Mexico</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>105</td>\n<td>0.68%</td>\n</tr>\n<tr>\n<td>Nepal</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>97</td>\n<td>0.63%</td>\n</tr>\n<tr>\n<td>Ireland</td>\n<td></td>\n<td></td>\n<td>72</td>\n<td>0.49%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>Israel</td>\n<td></td>\n<td></td>\n<td>78</td>\n<td>0.54%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>New Zealand</td>\n<td></td>\n<td></td>\n<td>77</td>\n<td>0.53%</td>\n<td>91</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Finland</td>\n<td></td>\n<td></td>\n<td>63</td>\n<td>0.43%</td>\n<td>90</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Turkey</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>86</td>\n<td>0.56%</td>\n</tr>\n<tr>\n<td>Malaysia</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>81</td>\n<td>0.53%</td>\n</tr>\n<tr>\n<td>Belgium</td>\n<td></td>\n<td></td>\n<td>84</td>\n<td>0.58%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Norway</td>\n<td></td>\n<td></td>\n<td>66</td>\n<td>0.45%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Argentina</td>\n<td></td>\n<td></td>\n<td>65</td>\n<td>0.45%</td>\n<td>76</td>\n<td>0.50%</td>\n</tr>\n<tr>\n<td>Bulgaria</td>\n<td></td>\n<td></td>\n<td>74</td>\n<td>0.51%</td>\n<td>72</td>\n<td>0.47%</td>\n</tr>\n<tr>\n<td>Japan</td>\n<td></td>\n<td></td>\n<td>61</td>\n<td>0.42%</td>\n<td>68</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Thailand</td>\n<td></td>\n<td></td>\n<td>69</td>\n<td>0.47%</td>\n<td>67</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Czech Republic</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>66</td>\n<td>0.43%</td>\n</tr>\n<tr>\n<td>Serbia</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>63</td>\n<td>0.41%</td>\n</tr>\n<tr>\n<td>Kenya</td>\n<td></td>\n<td></td>\n<td>58</td>\n<td>0.40%</td>\n<td>62</td>\n<td>0.40%</td>\n</tr>\n<tr>\n<td>Colombia</td>\n<td></td>\n<td></td>\n<td>39</td>\n<td>0.27%</td>\n<td>59</td>\n<td>0.38%</td>\n</tr>\n<tr>\n<td>Egypt</td>\n<td></td>\n<td></td>\n<td>40</td>\n<td>0.27%</td>\n<td>52</td>\n<td>0.34%</td>\n</tr>\n</tbody>\n</table>\n<h3>What is your age?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (This question was not asked in 2015.)</td>\n<td></td>\n<td></td>\n<td>14,944</td>\n<td></td>\n<td>15,636</td>\n<td></td>\n</tr>\n<tr>\n<td>60 and over</td>\n<td></td>\n<td></td>\n<td>1,139</td>\n<td>8%</td>\n<td>1,641</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>50-59</td>\n<td></td>\n<td></td>\n<td>1,537</td>\n<td>10%</td>\n<td>1,996</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>40-49</td>\n<td></td>\n<td></td>\n<td>2,205</td>\n<td>15%</td>\n<td>2,643</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>30-39</td>\n<td></td>\n<td></td>\n<td>3,914</td>\n<td>26%</td>\n<td>3,972</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>20-29</td>\n<td></td>\n<td></td>\n<td>5,013</td>\n<td>34%</td>\n<td>4,444</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Under 20</td>\n<td></td>\n<td></td>\n<td>1142</td>\n<td>8%</td>\n<td>941</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<p>Thank you to everyone who made time to fill out the survey &#8212; we&#8217;re so happy you use WordPress, and we&#8217;re very grateful that you&#8217;re willing to share your experiences with us! Thanks also to everyone who spread the word about this survey, and to those of you who read all the way to the bottom of this post. <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<p><small><a id="text"></a>*Text Field Questions: Each survey included some questions that could be answered only by filling out a text field. In the case of the questions &#8220;What is the best thing about WordPress?&#8221; and &#8220;What is the most frustrating thing about WordPress?&#8221; we listed the five most common responses, aggregated when applicable. In the case of the question “What is your gender?” in the 2016 and 2017 surveys, we aggregated responses as best we could. Responses meant to obscure respondents’ gender entirely are aggregated in “prefer not to answer.”</small></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5310";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"The Month in WordPress: November 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2017/12/the-month-in-wordpress-november-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Dec 2017 11:00:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5290";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:354:"The WordPress project recently released WordPress 4.9, “Tipton” — a new major release named in honor of musician and band leader Billy Tipton. Read on to find out more about this and other interesting news from around the WordPress world in November. WordPress 4.9 “Tipton” On November 16, WordPress 4.9 was released with new features [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4234:"\n<p>The WordPress project recently released WordPress 4.9, “Tipton” — a new major release named in honor of musician and band leader Billy Tipton. Read on to find out more about this and other interesting news from around the WordPress world in November.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordPress 4.9 “Tipton”</h2>\n\n\n\n<p>On November 16, <a href="https://wordpress.org/news/2017/11/tipton/">WordPress 4.9 was released</a> with new features for publishers and developers alike. Release highlights include design locking, scheduling, and previews in the Customizer, an even more secure and usable code editing experience, a new gallery widget, and text widget improvements.</p>\n\n\n\n<p>The follow up security and maintenance, v4.9.1, <a href="https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/">has now been released</a> to tighten up the security of WordPress as a whole.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and follow<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>\n\n\n\n<h2>Apply to Speak At WordCamp Europe 2018</h2>\n\n\n\n<p>The next edition of WordCamp Europe takes place in June, 2018. While the organizing team is still in the early stages of planning, <a href="https://2018.europe.wordcamp.org/2017/11/15/are-you-ready-to-speak-at-the-largest-wordpress-event-in-europe/">they are accepting speaker applications</a>.</p>\n\n\n\n<p>WordCamp Europe is the largest WordCamp in the world and, along with WordCamp US, one of the flagship events of the WordCamp program — speaking at this event is a great way to give back to the global WordPress community by sharing your knowledge and expertise with thousands of WordPress enthusiasts.</p>\n\n\n\n<h2>Diversity Outreach Speaker Training Initiative</h2>\n\n\n\n<p>To help WordPress community organizers offer diverse speaker lineups, <a href="https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/">a new community initiative has kicked off</a> to use existing <a href="https://make.wordpress.org/training/handbook/speaker-training/">speaker training workshops</a> to demystify speaking requirements and help participants gain confidence in their ability to share their WordPress knowledge in a WordCamp session.</p>\n\n\n\n<p>The working group behind this initiative will be meeting regularly to discuss and plan how they can help local communities to train speakers for WordCamps and other events.</p>\n\n\n\n<p>To get involved in this initiative, you can join the meetings at 5pm UTC every other Wednesday in the #community-team channel of the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li><a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a> is happening on December 1-3 in Nashville, with the annual State of the Word talk happening on Saturday afternoon — <a href="https://2017.us.wordcamp.org/live-stream/">the live stream of the entire event is available to view for free</a>.</li>\n    <li><a href="https://xwp.co/tide-a-path-to-better-code-across-the-wordpress-ecosystem/">Tide</a>, a new service from XWP designed to help users make informed plugin choices, is due to launch at WordCamp US.</li>\n    <li>Gutenberg development is continuing rapidly, with <a href="https://make.wordpress.org/core/2017/11/28/whats-new-in-gutenberg-28th-november/">a packed new release</a> and a focus on <a href="https://make.wordpress.org/test/2017/11/22/testing-flow-in-gutenberg/">usability testing</a>.</li>\n    <li>After some discussion among the community, <a href="https://make.wordpress.org/community/2017/11/10/discussion-micro-regional-wordcamps/">a new type of micro-regional WordCamp</a> is going to be introduced into the global WordCamp program.</li>\n</ul>\n\n\n\n<p><em></em></p>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n\n\n\n<p><em></em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5290";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.9.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 20:33:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5215";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"WordPress 4.9.1 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9 and earlier are affected by four security issues which could potentially be exploited as part of a multi-vector attack. As part of the core team&#x27;s [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"John Blackbourn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4287:"\n<p>WordPress 4.9.1 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n\n\n<p>WordPress versions 4.9 and earlier are affected by four security issues which could potentially be exploited as part of a multi-vector attack. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.1:</p>\n\n\n\n<ol>\n    <li>Use a properly generated hash for the <code>newbloguser</code> key instead of a determinate substring.</li>\n    <li>Add escaping to the language attributes used on <code>html</code> elements.</li>\n    <li>Ensure the attributes of enclosures are correctly escaped in RSS and Atom feeds.</li>\n    <li>Remove the ability to upload JavaScript files for users who do not have the <code>unfiltered_html</code> capability.</li>\n</ol>\n\n\n\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible security disclosure</a>: <a href="https://twitter.com/0x62626262">Rahul Pratap Singh</a> and John Blackbourn.</p>\n\n\n\n<p>Eleven other bugs were fixed in WordPress 4.9.1. Particularly of note were:</p>\n\n\n\n<ul>\n    <li>Issues relating to the caching of theme template files.</li>\n    <li>A MediaElement JavaScript error preventing users of certain languages from being able to upload media files.</li>\n    <li>The inability to edit theme and plugin files on Windows based servers.</li>\n</ul>\n\n\n\n<p><a href="https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/">This post has more information about all of the issues fixed in 4.9.1 if you&#x27;d like to learn more</a>.</p>\n\n\n\n<p><a href="https://wordpress.org/download/">Download WordPress 4.9.1</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 4.9.1:</p>\n\n\n\n<p><a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/la-geek/">Angelika Reisiger</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/bobbingwide/">bobbingwide</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/edo888/">edo888</a>, <a href="https://profiles.wordpress.org/erich_k4wp/">Erich Munz</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/mista-flo/">Florian TIAR</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/ibenic/">Igor Benic</a>, <a href="https://profiles.wordpress.org/jfarthing84/">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyescott/">jeremyescott</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnpgreen/">johnpgreen</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/lenasterg/">lenasterg</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mariovalney/">Mário Valney</a>, <a href="https://profiles.wordpress.org/natacado/">natacado</a>, <a href="https://profiles.wordpress.org/odysseygate/">odyssey</a>, <a href="https://profiles.wordpress.org/precies/">precies</a>, <a href="https://profiles.wordpress.org/stodorovic/">Saša</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5215";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.9 “Tipton”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2017/11/tipton/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 01:16:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4968";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:227:"Announcing version 4.9 of WordPress, named “Tipton” in honor of jazz pianist and band leader Billy Tipton. New features in 4.9 will smooth your design workflow and keep you safe from coding errors. Download or update today!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:41594:"<h2 style="text-align: center">Major Customizer Improvements, Code Error Checking, and More!&nbsp;🎉</h2>\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/banner.png?fit=2400%2C1200&amp;ssl=1" alt="" /></figure>\r\n\r\n\r\n\r\n<p>Version 4.9 of WordPress, named “Tipton” in honor of jazz musician and band leader Billy Tipton, is available for download or update in your WordPress dashboard. New features in 4.9 will smooth your design workflow and keep you safe from coding errors.</p>\r\n\r\n\r\n\r\n<p>Featuring design drafts, scheduling, and locking, along with preview links, the Customizer workflow improves collaboration for content creators. What’s more, code syntax highlighting and error checking will make for a clean and smooth site building experience. Finally, if all that wasn’t pretty great, we’ve got an awesome new Gallery widget and improvements to theme browsing and switching.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Customizer Workflow Improved </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i0.wp.com/wordpress.org/news/files/2017/11/customizer-workflow-improved-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>Draft and Schedule Site Design Customizations</h3>\r\n\r\n\r\n\r\n<p>Yes, you read that right. Just like you can draft and revise posts and schedule them to go live on the date and time you choose, you can now tinker with your site’s design and schedule those design changes to go live as you please.</p>\r\n\r\n\r\n\r\n<h3>Collaborate with Design Preview Links</h3>\r\n\r\n\r\n\r\n<p>Need to get some feedback on proposed site design changes? WordPress 4.9 gives you a preview link you can send to colleagues and customers so that you can collect and integrate feedback before you schedule the changes to go live. Can we say collaboration++?</p>\r\n\r\n\r\n\r\n<h3>Design Locking Guards Your Changes</h3>\r\n\r\n\r\n\r\n<p>Ever encounter a scenario where two designers walk into a project and designer A overrides designer B’s beautiful changes? WordPress 4.9’s design lock feature (similar to post locking) secures your draft design so that no one can make changes to it or erase all your hard work.</p>\r\n\r\n\r\n\r\n<h3>A Prompt to Protect Your Work</h3>\r\n\r\n\r\n\r\n<p>Were you lured away from your desk before you saved your new draft design? Fear not, when you return, WordPress 4.9 will politely ask whether or not you’d like to save your unsaved changes.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Coding Enhancements</h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i2.wp.com/wordpress.org/news/files/2017/11/coding-enhancements-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>Syntax Highlighting and Error Checking? Yes, Please!</h3>\r\n\r\n\r\n\r\n<p>You’ve got a display problem but can’t quite figure out exactly what went wrong in the CSS you lovingly wrote. With syntax highlighting and error checking for CSS editing and the Custom HTML widget introduced in WordPress 4.8.1, you’ll pinpoint coding errors quickly. Practically guaranteed to help you scan code more easily, and suss out &amp; fix code errors quickly.</p>\r\n\r\n\r\n\r\n<h3>Sandbox for Safety</h3>\r\n\r\n\r\n\r\n<p>The dreaded white screen. You’ll avoid it when working on themes and plugin code because WordPress 4.9 will warn you about saving an error. You’ll sleep better at night.</p>\r\n\r\n\r\n\r\n<h3>Warning: Potential Danger Ahead!</h3>\r\n\r\n\r\n\r\n<p>When you edit themes and plugins directly, WordPress 4.9 will politely warn you that this is a dangerous practice and will recommend that you draft and test changes before updating your file. Take the safe route: You’ll thank you. Your team and customers will thank you.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Even More Widget Updates </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/even-more-widget-updates-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>The New Gallery Widget</h3>\r\n\r\n\r\n\r\n<p>An incremental improvement to the media changes hatched in WordPress 4.8, you can now add a gallery via this new widget. Yes!</p>\r\n\r\n\r\n\r\n<h3>Press a Button, Add Media</h3>\r\n\r\n\r\n\r\n<p>Want to add media to your text widget? Embed images, video, and audio directly into the widget along with your text, with our simple but useful Add Media button. Woo!</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Site Building Improvements </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/site-building-improvements-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>More Reliable Theme Switching</h3>\r\n\r\n\r\n\r\n<p>When you switch themes, widgets sometimes think they can just move location. Improvements in WordPress 4.9 offer more persistent menu and widget placement when you decide it’s time for a new theme. </p>\r\n\r\n\r\n\r\n<h3>Find and Preview the Perfect Theme</h3>\r\n\r\n\r\n\r\n<p>Looking for a new theme for your site? Now, from within the Customizer, you can search, browse, and preview over 2600 themes before deploying changes to your site. What’s more, you can speed your search with filters for subject, features, and layout.</p>\r\n\r\n\r\n\r\n<h3>Better Menu Instructions = Less Confusion</h3>\r\n\r\n\r\n\r\n<p>Were you confused by the steps to create a new menu? Perhaps no longer! We’ve ironed out the UX for a smoother menu creation process. Newly updated copy will guide you.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Lend a Hand with Gutenberg 🤝</h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i2.wp.com/wordpress.org/news/files/2017/11/gutenberg-1.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<p>WordPress is working on a new way to create and control your content and we’d love to have your help. Interested in being an <a href="https://wordpress.org/plugins/gutenberg/">early tester</a> or getting involved with the Gutenberg project? <a href="https://github.com/WordPress/gutenberg">Contribute on GitHub</a>.</p>\r\n\r\n\r\n\r\n<p>(PS: this post was written in Gutenberg!)</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Developer Happiness 😊</h2>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Customizer JS API Improvements</a></h3>\r\n\r\n\r\n\r\n<p>We’ve made numerous improvements to the Customizer JS API in WordPress 4.9, eliminating many pain points. (Hello, default parameters for constructs! Goodbye repeated ID for constructs!) There are also new base control templates, a date/time control, and section/panel/global notifications to name a few. <a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Check out the full list.</a></p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/">CodeMirror available for use in your themes and plugins</a></h3>\r\n\r\n\r\n\r\n<p>We’ve introduced a new code editing library, CodeMirror, for use within core. CodeMirror allows for syntax highlighting, error checking, and validation when creating code writing or editing experiences within your plugins, like CSS or JavaScript include fields.</p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/30/mediaelement-upgrades-in-wordpress-4-9/">MediaElement.js upgraded to 4.2.6</a></h3>\r\n\r\n\r\n\r\n<p>WordPress 4.9 includes an upgraded version of MediaElement.js, which removes dependencies on jQuery, improves accessibility, modernizes the UI, and fixes many bugs.</p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/">Roles and Capabilities Improvements</a></h3>\r\n\r\n\r\n\r\n<p>New capabilities have been introduced that allow granular management of plugins and translation files. In addition, the site switching process in multisite has been fine-tuned to update the available roles and capabilities in a more reliable and coherent way.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2>The Squad</h2>\r\n\r\n\r\n\r\n<p>This release was led by <a href="https://choycedesign.com/">Mel Choyce</a> and <a href="https://weston.ruter.net/">Weston Ruter</a>, with the help of the following fabulous folks. There are 443 contributors with props in this release, with 185 of them contributing for the first time. Pull up some Billy Tipton on your music service of choice, and check out some of their profiles:</p>\r\n\r\n\r\n\r\n<a href="https://profiles.wordpress.org/0x6f0">0x6f0</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/aaronrutley">Aaron Rutley</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/kawauso">Adam Harley (Kawauso)</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamwills">AdamWills</a>, <a href="https://profiles.wordpress.org/adhun">Adhun Anand</a>, <a href="https://profiles.wordpress.org/aegis123">aegis123</a>, <a href="https://profiles.wordpress.org/afzalmultani">Afzal Multani</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ajayghaghretiya1">Ajay Ghaghretiya</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/soniakash">Akash Soni</a>, <a href="https://profiles.wordpress.org/akbarhusen">akbarhusen</a>, <a href="https://profiles.wordpress.org/schlessera">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alpipego">Alex Goller</a>, <a href="https://profiles.wordpress.org/alexvorn2">Alexandru Vornicescu</a>, <a href="https://profiles.wordpress.org/alibasheer">alibasheer</a>, <a href="https://profiles.wordpress.org/alxndr">alxndr</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andreagobetti">andreagobetti</a>, <a href="https://profiles.wordpress.org/euthelup">Andrei Lupu</a>, <a href="https://profiles.wordpress.org/aduth">Andrew Duthie</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/norcross">Andrew Norcross</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/andrewtaylor-1">Andrew Taylor</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/la-geek">Angelika Reisiger</a>, <a href="https://profiles.wordpress.org/anhskohbo">anhskohbo</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/antonrinas">antonrinas</a>, <a href="https://profiles.wordpress.org/appchecker">appchecker</a>, <a href="https://profiles.wordpress.org/arena94">arena94</a>, <a href="https://profiles.wordpress.org/bsop">Arnaud Coolsaet</a>, <a href="https://profiles.wordpress.org/arnaudban">ArnaudBan</a>, <a href="https://profiles.wordpress.org/aryamaaru">Arun</a>, <a href="https://profiles.wordpress.org/mrasharirfan">Ashar Irfan</a>, <a href="https://profiles.wordpress.org/atachibana">atachibana</a>, <a href="https://profiles.wordpress.org/atanasangelovdev">Atanas Angelov</a>, <a href="https://profiles.wordpress.org/avinapatel">Avina Patel</a>, <a href="https://profiles.wordpress.org/ayeshrajans">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/bduclos">bduclos</a>, <a href="https://profiles.wordpress.org/pixolin">Bego Mario Garde</a>, <a href="https://profiles.wordpress.org/behzod">Behzod Saidov</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/benoitchantre">Benoit Chantre</a>, <a href="https://profiles.wordpress.org/bnap00">Bharat Parsiya</a>, <a href="https://profiles.wordpress.org/bhaveshkhadodara">bhavesh khadodara</a>, <a href="https://profiles.wordpress.org/bplv">Biplav</a>, <a href="https://profiles.wordpress.org/biranit">Biranit</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/biskobe">biskobe</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/blackbam">Blackbam</a>, <a href="https://profiles.wordpress.org/blobfolio">Blobfolio</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bor0">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/bradparbs">Brad Parbs</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/bpayton">Brandon Payton</a>, <a href="https://profiles.wordpress.org/brentjettgmailcom">Brent Jett</a>, <a href="https://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="https://profiles.wordpress.org/monopine">Brian Meyer</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bseddon">bseddon</a>, <a href="https://profiles.wordpress.org/bhargavbhandari90">Bunty</a>, <a href="https://profiles.wordpress.org/icaleb">Caleb Burks</a>, <a href="https://profiles.wordpress.org/carldanley">Carl Danley</a>, <a href="https://profiles.wordpress.org/poena">Carolina Nymark</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/carolinegeven">carolinegeven</a>, <a href="https://profiles.wordpress.org/caercam">Charlie Merland</a>, <a href="https://profiles.wordpress.org/chasewg">chasewg</a>, <a href="https://profiles.wordpress.org/chetanchauhan">Chetan Chauhan</a>, <a href="https://profiles.wordpress.org/chetan200891">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chrishardie">Chris Hardie</a>, <a href="https://profiles.wordpress.org/crunnells">Chris Runnells</a>, <a href="https://profiles.wordpress.org/christian1012">Christian Chung</a>, <a href="https://profiles.wordpress.org/presskopp">Christian Herrmann</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/chsxf">chsxf</a>, <a href="https://profiles.wordpress.org/chrisvendiadvertisingcom">cjhaas</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/code-monkey">code-monkey</a>, <a href="https://profiles.wordpress.org/collizo4sky">Collins Agbonghama</a>, <a href="https://profiles.wordpress.org/corvidism">corvidism</a>, <a href="https://profiles.wordpress.org/csloisel">csloisel</a>, <a href="https://profiles.wordpress.org/daedalon">Daedalon</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danieltj">Daniel James</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dany2217">dany2217</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/davefx">DaveFX</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davilera">David Aguilera</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/davidbinda">David Binovec</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/straussd">David Strauss</a>, <a href="https://profiles.wordpress.org/jdtrower">David Trower</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/daymobrew">daymobrew</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/designsimply">designsimply</a>, <a href="https://profiles.wordpress.org/diedeexterkate">DiedeExterkate</a>, <a href="https://profiles.wordpress.org/dingo_bastard">dingo-d</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipeshkakadiya</a>, <a href="https://profiles.wordpress.org/div33">Divyesh Ladani</a>, <a href="https://profiles.wordpress.org/dency">Dixita Dusara</a>, <a href="https://profiles.wordpress.org/dixitadusara">dixitadusara</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dominikschwind-1">Dominik Schwind</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dsawardekar">dsawardekar</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eatonz">Eaton</a>, <a href="https://profiles.wordpress.org/eclev91">eclev91</a>, <a href="https://profiles.wordpress.org/eddhurst">Edd Hurst</a>, <a href="https://profiles.wordpress.org/edo888">edo888</a>, <a href="https://profiles.wordpress.org/egregor">EGregor</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elvishp2006">elvishp2006</a>, <a href="https://profiles.wordpress.org/enricosorcinelli">enrico.sorcinelli</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/erich_k4wp">Erich Munz</a>, <a href="https://profiles.wordpress.org/circlecube">Evan Mullins</a>, <a href="https://profiles.wordpress.org/eventualo">eventualo</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/psiico">FancyThought</a>, <a href="https://profiles.wordpress.org/felipeelia">Felipe Elia</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fergbrain">fergbrain</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/gmariani405">Gabriel Mariani</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/girishpanchal">Girish Lohar</a>, <a href="https://profiles.wordpress.org/gkloveweb">Govind Kumar</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/gregross">Greg Ross</a>, <a href="https://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="https://profiles.wordpress.org/grosbouff">grosbouff</a>, <a href="https://profiles.wordpress.org/wido">Guido Scialfa</a>, <a href="https://profiles.wordpress.org/ghosttoast">Gustave F. Gerhardt</a>, <a href="https://profiles.wordpress.org/guzzilar">guzzilar</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/hardik-amipara">Hardik Amipara</a>, <a href="https://profiles.wordpress.org/hazemnoor">Hazem Noor</a>, <a href="https://profiles.wordpress.org/hazimayesh">hazimayesh</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright-1">Henry</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/herregroen">herregroen</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/howdy_mcgee">Howdy_McGee</a>, <a href="https://profiles.wordpress.org/hlashbrooke">Hugh Lashbrooke</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/jcc9873">Iacopo C</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ibenic">Igor Benic</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/ionvv">ionvv</a>, <a href="https://profiles.wordpress.org/ippei-sumida">Ippei Sumida</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/ireneyoast">Irene Strikkers</a>, <a href="https://profiles.wordpress.org/ivankristianto">Ivan Kristianto</a>, <a href="https://profiles.wordpress.org/ixmati">ixmati</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jhoffmann">j.hoffmann</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jankimoradiya">Janki Moradiya</a>, <a href="https://profiles.wordpress.org/jaswrks">Jason Caldwell</a>, <a href="https://profiles.wordpress.org/octalmage">Jason Stallings</a>, <a href="https://profiles.wordpress.org/audrasjb">Jb Audras</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jbpaul17">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jeremyescott">Jeremy Scott</a>, <a href="https://profiles.wordpress.org/jjcomack">Jimmy Comack</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jkhongusc">jkhongusc</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joen">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johneckman">John Eckman</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/johnroper100">johnroper100</a>, <a href="https://profiles.wordpress.org/johnschulz">johnschulz</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/chanthaboune">Josepha</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuawold">Joshua Wold</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsepia">jsepia</a>, <a href="https://profiles.wordpress.org/jsonfry">jsonfry</a>, <a href="https://profiles.wordpress.org/juiiee8487">Juhi Patel</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/jlambe">Julien</a>, <a href="https://profiles.wordpress.org/kopepasah">Justin Kopepasah</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/thekt12">Karthik Thayyil</a>, <a href="https://profiles.wordpress.org/zoonini">Kathryn Presner</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/wraithkenny">Ken Newman</a>, <a href="https://profiles.wordpress.org/captainn">Kevin Newman</a>, <a href="https://profiles.wordpress.org/kpdesign">Kim Parsell</a>, <a href="https://profiles.wordpress.org/kiranpotphode">Kiran Potphode</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kmgalanakis">Konstantinos Galanakis</a>, <a href="https://profiles.wordpress.org/koopersmith">koopersmith</a>, <a href="https://profiles.wordpress.org/kristastevens">Krista Stevens</a>, <a href="https://profiles.wordpress.org/kekkakokkers">Kristin Kokkersvold</a>, <a href="https://profiles.wordpress.org/lalitpendhare">lalitpendhare</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/lemacarl">lemacarl</a>, <a href="https://profiles.wordpress.org/lenasterg">lenasterg</a>, <a href="https://profiles.wordpress.org/lessbloat">lessbloat</a>, <a href="https://profiles.wordpress.org/llemurya">llemurya</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/mariovalney">M&#225;rio Valney</a>, <a href="https://profiles.wordpress.org/m1tk00">m1tk00</a>, <a href="https://profiles.wordpress.org/maedahbatool">Maedah Batool</a>, <a href="https://profiles.wordpress.org/mp518">Mahesh Prajapati</a>, <a href="https://profiles.wordpress.org/mahvash-fatima">Mahvash Fatima</a>, <a href="https://profiles.wordpress.org/travel_girl">Maja Benke</a>, <a href="https://profiles.wordpress.org/mako09">Mako</a>, <a href="https://profiles.wordpress.org/manolis09">manolis09</a>, <a href="https://profiles.wordpress.org/manuelaugustin">Manuel Augustin</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/mariusvetrici">Marius Vetrici</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/markcallen">markcallen</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/matheusgimenez">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/matveb">Matias Ventura</a>, <a href="https://profiles.wordpress.org/mgibbs189">Matt Gibbs</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/matthiasthiel">matthias.thiel</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mdifelice">mdifelice</a>, <a href="https://profiles.wordpress.org/megane9988">megane9988</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/menakas">Menaka S.</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/mizejewski">Michele Mizejewski</a>, <a href="https://profiles.wordpress.org/michelleweber">Michelle Weber</a>, <a href="https://profiles.wordpress.org/stubgo">Miina Sikk</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschinkel">Mike Schinkel</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/milana_cap">Milana Cap</a>, <a href="https://profiles.wordpress.org/milindmore22">Milind More</a>, <a href="https://profiles.wordpress.org/mirucon">Mirucon</a>, <a href="https://profiles.wordpress.org/studionashvegas">Mitch Canter</a>, <a href="https://profiles.wordpress.org/mitraval192">Mithun Raval</a>, <a href="https://profiles.wordpress.org/mkomar">mkomar</a>, <a href="https://profiles.wordpress.org/monikarao">Monika Rao</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/msebel">msebel</a>, <a href="https://profiles.wordpress.org/munyagu">munyagu</a>, <a href="https://profiles.wordpress.org/mythemeshop">MyThemeShop</a>, <a href="https://profiles.wordpress.org/ndoublehwp">N''DoubleH</a>, <a href="https://profiles.wordpress.org/nathanatmoz">Nathan Johnson</a>, <a href="https://profiles.wordpress.org/nenad">nenad</a>, <a href="https://profiles.wordpress.org/nicbertino">nic.bertino</a>, <a href="https://profiles.wordpress.org/ndiego">Nick Diego</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nicollle">nicollle</a>, <a href="https://profiles.wordpress.org/jainnidhi">Nidhi Jain</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/nileshdudakiya94">Nileshdudakiya94</a>, <a href="https://profiles.wordpress.org/nishitlangaliya">Nishit Langaliya</a>, <a href="https://profiles.wordpress.org/justnorris">Norris</a>, <a href="https://profiles.wordpress.org/obradovic">obradovic</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ov3rfly">Ov3rfly</a>, <a href="https://profiles.wordpress.org/paaljoachim">Paal Joachim Romdahl</a>, <a href="https://profiles.wordpress.org/palmiak">palmiak</a>, <a href="https://profiles.wordpress.org/parthsanghvi">Parth Sanghvi</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/obrienlabs">Pat O''Brien</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pbiron">Paul Biron</a>, <a href="https://profiles.wordpress.org/pauldechov">Paul Dechov</a>, <a href="https://profiles.wordpress.org/natacado">Paul Paradise</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/pedromendonca">Pedro Mendon&#231;a</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/pessoft">Peter "Pessoft" Kol&#237;nek</a>, <a href="https://profiles.wordpress.org/donutz">Peter J. Herrel</a>, <a href="https://profiles.wordpress.org/petertoi">Peter Toi</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/philipjohn">Philip John</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/plastikschnitzer">Plastikschnitzer</a>, <a href="https://profiles.wordpress.org/powerzilly">powerzilly</a>, <a href="https://profiles.wordpress.org/pratikgandhi">Pratik Gandhi</a>, <a href="https://profiles.wordpress.org/precies">precies</a>, <a href="https://profiles.wordpress.org/presslabs">Presslabs</a>, <a href="https://profiles.wordpress.org/punit5658">Punit Patel</a>, <a href="https://profiles.wordpress.org/purnendu">Purnendu Dash</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafa8626">Rafael Miranda</a>, <a href="https://profiles.wordpress.org/rahmohn">Rahmohn</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/ramon-fincken">ramon fincken</a>, <a href="https://profiles.wordpress.org/jontyravi">Ravi Vaghela</a>, <a href="https://profiles.wordpress.org/rclations">RC Lations</a>, <a href="https://profiles.wordpress.org/redrambles">redrambles</a>, <a href="https://profiles.wordpress.org/arena">RENAUT</a>, <a href="https://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="https://profiles.wordpress.org/rfair404">rfair404</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/riddhiehta02">Riddhi Mehta</a>, <a href="https://profiles.wordpress.org/rinkuyadav999">Rinku Y</a>, <a href="https://profiles.wordpress.org/rcutmore">Rob Cutmore</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronakganatra">Ronak Ganatra</a>, <a href="https://profiles.wordpress.org/rugved">rugved</a>, <a href="https://profiles.wordpress.org/rushabh4486">Rushabh Shah</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/ryanduff">Ryan Duff</a>, <a href="https://profiles.wordpress.org/stunnedbeast">Ryan Holmes</a>, <a href="https://profiles.wordpress.org/rmarks">Ryan Marks</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ohryan">Ryan Neudorf</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/ryanrolds">ryanrolds</a>, <a href="https://profiles.wordpress.org/ryotsun">ryotsun</a>, <a href="https://profiles.wordpress.org/stodorovic">Sa&#353;a</a>, <a href="https://profiles.wordpress.org/manchumahara">Sabuj Kundu</a>, <a href="https://profiles.wordpress.org/sagarprajapati">Sagar Prajapati</a>, <a href="https://profiles.wordpress.org/sagarladani">sagarladani</a>, <a href="https://profiles.wordpress.org/sa3idho">Said El Bakkali</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/viralsampat">Sampat Viral</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/tinkerbelly">sarah semark</a>, <a href="https://profiles.wordpress.org/sathyapulse">sathyapulse</a>, <a href="https://profiles.wordpress.org/sayedwp">Sayed Taqui</a>, <a href="https://profiles.wordpress.org/sboisvert">sboisvert</a>, <a href="https://profiles.wordpress.org/scottdeluzio">Scott DeLuzio</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/scottlee">Scott Lee</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sebsz">SeBsZ</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/shamim51">Shamim Hasan</a>, <a href="https://profiles.wordpress.org/shooper">Shawn Hooper</a>, <a href="https://profiles.wordpress.org/shital-patel">Shital Marakana</a>, <a href="https://profiles.wordpress.org/shramee">shramee</a>, <a href="https://profiles.wordpress.org/nomnom99">Siddharth Thevaril</a>, <a href="https://profiles.wordpress.org/pross">Simon Prosser</a>, <a href="https://profiles.wordpress.org/slaffik">Slava Abakumov</a>, <a href="https://profiles.wordpress.org/someecards">someecards</a>, <a href="https://profiles.wordpress.org/soean">Soren Wrede</a>, <a href="https://profiles.wordpress.org/spencerfinnell">spencerfinnell</a>, <a href="https://profiles.wordpress.org/spocke">spocke</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevepuddick">Steve Puddick</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/skostadinov">Stoyan Kostadinov</a>, <a href="https://profiles.wordpress.org/dualcube_subrata">Subrata Mal</a>, <a href="https://profiles.wordpress.org/subrataemfluence">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/musus">Susumu Seino</a>, <a href="https://profiles.wordpress.org/svrooij">svrooij</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/buley">Taylor</a>, <a href="https://profiles.wordpress.org/tejas5989">tejas5989</a>, <a href="https://profiles.wordpress.org/terwdan">terwdan</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/thulshof">Thijs Hulshof</a>, <a href="https://profiles.wordpress.org/thingsym">thingsym</a>, <a href="https://profiles.wordpress.org/tfirdaus">Thoriq Firdaus</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timmydcrawford">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/tobi823">tobi823</a>, <a href="https://profiles.wordpress.org/toddnestor">Todd Nestor</a>, <a href="https://profiles.wordpress.org/tobifjellner">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/toscho">toscho</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/truongwp">truongwp</a>, <a href="https://profiles.wordpress.org/tuanmh">tuanmh</a>, <a href="https://profiles.wordpress.org/tv-productions">TV productions</a>, <a href="https://profiles.wordpress.org/uicestone">uicestone</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/umangvaghela123">Umang Vaghela</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/upadalavipul">upadalavipul</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/vhauri">vhauri</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/withinboredom">withinboredom</a>, <a href="https://profiles.wordpress.org/wojtekszkutnik">Wojtek Szkutnik</a>, <a href="https://profiles.wordpress.org/xkon">Xenos (xkon) Konstantinos</a>, <a href="https://profiles.wordpress.org/yahil">Yahil Madakiya</a>, <a href="https://profiles.wordpress.org/yonivh">yonivh</a>, <a href="https://profiles.wordpress.org/yrpwayne">yrpwayne</a>, <a href="https://profiles.wordpress.org/zachwtx">zachwtx</a>, and <a href="https://profiles.wordpress.org/zanematthew">Zane Matthew</a>.\r\n\r\n\r\n\r\n<p>Finally, thanks to all the community translators who worked on WordPress 4.9. Their efforts bring WordPress 4.9 fully translated to 43 languages at release time, with more on the way.</p>\r\n\r\n\r\n\r\n<p>Do you want to report on WordPress 4.9? <a href="https://s.w.org/images/core/4.9/wp-4-9_press-kit.zip">We&#x27;ve compiled a press kit featuring information about the release features, and some media assets to help you along</a>.</p>\r\n\r\n\r\n\r\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\r\n\r\n\r\n\r\n<p>Thanks for choosing WordPress!</p>\r\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4968";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 4.9 Release Candidate 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Nov 2017 06:53:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:13:"Documentation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5184";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:345:"The third release candidate for WordPress 4.9 is now available. A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. In fact, we did miss some things in RC1 and RC2. This third release candidate was not originally scheduled, but [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Weston Ruter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4169:"<p>The third release candidate for WordPress 4.9 is now available.</p>\n<p>A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. In fact, we did miss some things in RC1 and RC2. This third release candidate was not originally scheduled, but due a number of defects uncovered through your testing of RC2 (thank you!), we are putting out another 4.9 release candidate.</p>\n<p>We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong> (that&#8217;s <em>tomorrow</em>) at 23:00 UTC, but we still need your help to get there. If you haven’t tested 4.9 yet, now is the time! If there are additional defects uncovered through testing between now and the release time, we may delay the 4.9 release to the following day.</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC3.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/branches/4.9?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42178&amp;stop_rev=42133">just over 20 changes</a> since releasing RC2 last week (as we did between RC1 and RC2). For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">RC1</a>, and <a href="https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-2/">RC2</a> blog posts. A few specific areas to test in RC3:</p>\n<ul>\n<li>Switching between the Visual and Text tabs of the editor, and the syncing of the cursor between those two tabs.</li>\n<li>Overriding linting errors in the Customizer&#8217;s Additional CSS editor.</li>\n<li>Adding nav menu items for Custom Links in the Customizer.</li>\n<li>Scheduling customization drafts (stubbed posts/pages) for publishing in the Customizer.</li>\n<li>Autosave revisions for changes in the Customizer.</li>\n<li>About page styling.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. Please see the summative <a href="https://make.wordpress.org/core/2017/11/07/wordpress-4-9-field-guide/">field guide</a> to the 4.9 <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes</a> on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>Didn&#8217;t squash them all <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f41b.png" alt="🐛" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>We want to release Tuesday</em><br />\n<em>New features not bugs <img src="https://s.w.org/images/core/emoji/2.4/72x72/2728.png" alt="✨" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5184";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 4.9 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Nov 2017 05:33:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5047";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:342:"The second release candidate for WordPress 4.9 is now available. A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on Tuesday, November 14 (just over one week from now), but we need your help [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Weston Ruter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3424:"<p>The second release candidate for WordPress 4.9 is now available.</p>\n<p>A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong> (just over <em>one week</em> from now), but we need your help to get there. If you haven’t tested 4.9 yet, now is the time!</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42124&amp;stop_rev=42049&amp;limit=100&amp;sfp_email=&amp;sfph_mail=">just over 20 changes</a> since releasing RC 1 last week. For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a>, and <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">RC1</a> blog posts. Specific areas to test in RC2:</p>\n<ul>\n<li>Theme installation in the Customizer.</li>\n<li>Scheduling changes for publishing in the Customizer.</li>\n<li>Switching themes with live preview in the Customizer.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. Please see the summative <a href="https://make.wordpress.org/core/2017/11/07/wordpress-4-9-field-guide/">field guide</a> to the 4.9 <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes</a> on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>This week&#8217;s haiku is courtesy of <a href=''https://profiles.wordpress.org/melchoyce/'' class=''mention''><span class=''mentions-prefix''>@</span>melchoyce</a>:</p>\n<p><em>We squashed all the bugs <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f41b.png" alt="🐛" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>But uh, if not, let us know</em><br />\n<em>Also, test your stuff</em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5047";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"The Month in WordPress: October 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2017/11/the-month-in-wordpress-october-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Nov 2017 12:02:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5044";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:333:"While this month we focused on building new features for WordPress core, we advanced other areas of the project too. Read on to learn more about what the WordPress project accomplished during the month of October. Take the 2017 Annual WordPress User Survey The annual WordPress User Survey is a great opportunity for you to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6180:"\n<p>While this month we focused on building new features for WordPress core, we advanced other areas of the project too. Read on to learn more about what the WordPress project accomplished during the month of October.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Take the 2017 Annual WordPress User Survey</h2>\n\n\n\n<p>The annual WordPress User Survey is a great opportunity for you to provide your feedback about how you use WordPress. This year is no exception, as <a href="https://wordpressdotorg.polldaddy.com/s/wordpress-2017-survey">the 2017 WordPress User Survey</a> is out now.</p>\n\n\n\n<p>The information collected in the survey is used to make informed decisions about improvements across the WordPress project, so your answers are incredibly valuable and help shape the future of the platform.</p>\n\n\n\n<h2>WordPress 4.8.3 Security Release</h2>\n\n\n\n<p>At the end of October, <a href="https://wordpress.org/news/2017/10/wordpress-4-8-3-security-release/">WordPress 4.8.3 was released</a> containing an important security fix for all previous versions of WordPress. If your WordPress installation has not updated automatically, please update it now to protect your site.</p>\n\n\n\n<p>This security issue was brought to light by a community member, so if you ever discover a security vulnerability in WordPress core, please do the same and <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">disclose it responsibly</a>.</p>\n\n\n\n<h2>WordPress 4.9 Nearly Ready for Release</h2>\n\n\n\n<p>WordPress 4.9 was in rapid development this month. We released four beta versions and published a <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">release candidate</a>. The target for shipping WordPress 4.9 is November 14 — just two short weeks away. With many new features, this is a hugely exciting release that improves WordPress’ user experience considerably. Notably, you’ll see <a href="https://make.wordpress.org/core/2017/10/24/a-new-themes-experience-in-the-customizer/">improvements to the theme selection experience</a>, plenty of <a href="https://make.wordpress.org/core/2017/10/24/widget-improvements-in-wordpress-4-9/">widget enhancements</a>, drastically improved <a href="https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/">code editing</a>, and much better <a href="https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/">user role management</a>.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/core/">the Core team blog</a>.</p>\n\n\n\n<h2>WordPress Charity Hackathons are Growing</h2>\n\n\n\n<p>For the last few years, the number of <a href="https://doaction.org/">do_action series of WordPress charity hackathons</a> has grown around the world. What started as a community event to assist local nonprofit organizations, has become something many WordPress communities are replicating in an increasing number of cities.</p>\n\n\n\n<p>As of this month, do_action events have been hosted in Cape Town and Johannesburg, South Africa, Beirut, Lebanon, Austin, Texas, and Montréal, Canada. In addition, events are now scheduled for <a href="https://doaction.org/event/bristol-2018/">Bristol, England</a> and <a href="https://doaction.org/event/zurich-2018/">Zurich, Switzerland</a> in 2018.</p>\n\n\n\n<p>To get involved in organizing a do_action event locally, read <a href="https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/do_action-charity-hackathon/">the do_action organizer’s handbook</a> and join the #community-events channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg Development Advances</h2>\n\n\n\n<p>While work steadily continues on Gutenberg — the new editor for WordPress core — one update from this month addresses one of the primary concerns that some people shared about the project.</p>\n\n\n\n<p>Up until <a href="https://make.wordpress.org/core/2017/10/24/whats-new-in-gutenberg-24th-october/">the release on October 24</a>, Gutenberg did not support the meta boxes that so many WordPress content creators rely on. The new editor now has initial support for meta boxes as well as a host of other critical features for content creation in WordPress.</p>\n\n\n\n<p><a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">Test out Gutenberg</a> right now and help develop it by joining the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a> and following the <a href="https://make.wordpress.org/core/">Core team blog</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>DonateWC, a new initiative that assists people in attending WordCamps, <a href="https://donatewc.org/wordcamp-stories/wordcamp-cape-town-experience/">sponsored Trust Nhokovedzo from Harare, Zimbabwe</a> to speak at WordCamp Cape Town, South Africa this month.</li>\n    <li><a href="https://woocommerce.com/2017/10/saying-goodbye-to-canvas/">The popular Canvas theme was retired</a> this month to allow WooCommerce to focus on moving their products forward more effectively.</li>\n    <li>The next installment of Camp Press, the WordPress community retreat event, will take place <a href="https://camp.press/event/iceland2018/">in Iceland</a>.</li>\n    <li>If you run a WordPress meetup group, but are struggling to find content for your events, the WordPress Marketing team <a href="https://make.wordpress.org/community/2017/10/04/supporting-for-meetups-with-low-content/">has put together some ideas</a> to help.</li>\n    <li><a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a> is just around the corner — there’s still time to grab your tickets.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5044";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"\n	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"\n	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 02 Feb 2018 13:36:06 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Fri, 02 Feb 2018 08:10:18 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(162, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1517621770', 'no'),
(163, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1517578570', 'no'),
(164, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1517621773', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(165, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Dev Blog: The Month in WordPress: January 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5541";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2018/02/the-month-in-wordpress-january-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3861:"<p>Things got off to a gradual start in 2018 with momentum starting to pick up over the course of the month. There were some notable developments in January, including a new point release and work being done on other important areas of the WordPress project.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordPress 4.9.2 Security and Maintenance Release</h2>\n\n\n\n<p>On January 16, <a href="https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/">WordPress 4.9.2 was released</a> to fix an important security issue with the media player, as well as a number of other smaller bugs. This release goes a long way to smoothing out the 4.9 release cycle with the next point release, v4.9.3, <a href="https://make.wordpress.org/core/2018/01/31/wordpress-4-9-3-release-pushed-to-february-5th/">due in early February</a>.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and follow<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>\n\n\n\n<h2>Updated Plugin Directory Guidelines</h2>\n\n\n\n<p>At the end of 2017, <a href="https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/">the guidelines for the Plugin Directory</a> received a significant update to make them clearer and expanded to address certain situations. This does not necessarily make these guidelines complete, but rather more user-friendly and practical; they govern how developers build plugins for the Plugin Directory, so they need to evolve with the global community that the Directory serves.</p>\n\n\n\n<p>If you would like to contribute to these guidelines, you can make a pull request to <a href="https://github.com/WordPress/wporg-plugin-guidelines">the GitHub repository</a> or email <a href="mailto:plugins@wordpress.org">plugins@wordpress.org</a>. You can also jump into the #pluginreview channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>Near the end of last year a lot of work was put into improving the standards in the WordPress core codebase and now <a href="https://make.wordpress.org/core/2017/11/30/wordpress-php-now-mostly-conforms-to-wordpress-coding-standards/">the entire platform is at nearly 100% compliance with the WordPress coding standards</a>.</li>\n    <li>Gutenberg, the new editor coming to WordPress core in the next major release, <a href="https://make.wordpress.org/core/2018/01/25/whats-new-in-gutenberg-25th-january/">was updated to v2.1 this month</a> with some great usability and technical improvements.</li>\n    <li>The Global Community Team is <a href="https://make.wordpress.org/community/2018/01/16/2018-goals-for-the-global-community-team-suggestions-time/">taking suggestions for the goals of the Community program in 2018</a>.</li>\n    <li><a href="https://online.wpcampus.org/">WPCampus Online</a>, a digital conference focused on WordPress in higher education, took place on January 30. The videos of the event sessions will be online soon.</li>\n    <li>A WordPress community member <a href="https://wptavern.com/new-toolkit-simplifies-the-process-of-creating-gutenberg-blocks">has released a toolkit</a> to help developers build blocks for Gutenberg.</li>\n    <li>The community team that works to improve the WordPress hosting experience is relatively young, but <a href="https://make.wordpress.org/hosting/2018/01/25/hosting-meeting-notes-january-10-2018/">they have been making some great progress recently</a>.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Feb 2018 08:30:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: WordPress 4.9.3 Rescheduled for February 5th";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=78058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wptavern.com/wordpress-4-9-3-rescheduled-for-february-5th";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1336:"<p>WordPress 4.9.3 is a maintenance release and was originally scheduled to be available on January 30th. However, due to ongoing tickets and a short time frame to test the <a href="https://make.wordpress.org/core/2018/02/01/wordpress-4-9-3-rc/">release candidate</a>, it has <a href="https://make.wordpress.org/core/2018/01/31/wordpress-4-9-3-release-pushed-to-february-5th/">been pushed back</a> to February 5th.</p>\n<p><a href="https://make.wordpress.org/core/2018/02/01/wordpress-4-9-3-rc/">WordPress 4.9.3 RC 1</a> is available for testing. This release <a href="https://make.wordpress.org/core/2018/01/24/jshint-removed-from-codemirror-in-4-9-3/">removes JSHint from the code editors</a> due to conflicts with the GPL License. If your code relies on JSHint from Core, <a href="https://core.trac.wordpress.org/ticket/42850">developers encourage</a> you to update it to use a copy of JSHint.</p>\n<p>Other changes in 4.9.3 include, avoiding page scrolling when navigating the media modal, a handful of improvements to the customizer, <a href="https://make.wordpress.org/core/2018/01/26/wordpress-4-9-3-beta/">and more</a>. Please test WordPress 4.9.3 on a staging site and if you encounter any bugs, you can report them on the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta section</a> of the support forums.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Feb 2018 08:09:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: WooCommerce 3.3 Removed From Plugin Directory Due to Theme Conflicts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77962";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/woocommerce-3-3-removed-from-plugin-directory-due-to-theme-conflicts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3081:"<p>Earlier this week, WooCommerce 3.3 <a href="https://wptavern.com/woocommerce-3-3-increases-theme-compatibility-auto-regenerates-thumbnails">was released</a> and among the features was increased theme compatibility. However, soon after release, users of third-party themes <a href="https://wordpress.org/support/topic/wc-3-3-issues-with-categories-displaying-in-shop/">reported issues</a> with categories displaying improperly.</p>\n<p>Despite it being a minor release that should be fully backwards compatible with previous releases up to 3.0, WooCommerce has removed 3.3 from the plugin directory and replaced it with 3.2.6.</p>\n<p>According <a href="https://woocommerce.wordpress.com/2018/02/01/woocommerce-3-3-1-status-update/">to a post</a> on the project&#8217;s official blog, WooCommerce 3.3.1 will take the place of 3.3 and will include a fix for the category display issue.</p>\n<blockquote class="wp-block-quote"><p>The issue affected themes with template overrides from 3.2.x which hadn’t been made compatible with 3.3. In general, <a href="https://github.com/woocommerce/woocommerce/wiki/Template-File-Guidelines-for-Devs-and-Theme-Authors#hook-vs-override---when-to-use-what">we recommend that themes use hooks instead of template overrides.</a> Themes such as <a href="https://en-gb.wordpress.org/themes/storefront/">Storefront</a> (which does not use template overrides) were compatible at launch.</p>\n<p><cite>WooCommerce Blog</cite></p></blockquote>\n<p>If you&#8217;ve already updated to WooCommerce 3.3 and your theme is compatible, you don&#8217;t need to make any changes. If your theme is not compatible, WooCommerce recommends checking with your theme&#8217;s author to see if a compatibility fix has been released.</p>\n<p>Users can also wait for the release of 3.3.1, update to the <a href="https://github.com/woocommerce/woocommerce/releases/tag/3.3.1-rc.1">pre-release version</a> of 3.3.1, or use the <a href="https://wordpress.org/plugins/wp-rollback/">WP-Rollback plugin</a> and revert back to 3.2.6. WooCommerce developers suggest only going the WP-Rollback route if you&#8217;re not comfortable installing pre-release software.</p>\n<p>Coen Jacobs, a former member of the WooCommerce development team, commented on Twitter that this was the first time he can remember that a release was reverted.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Fun fact: As far as I recall, there has never been a release of WooCommerce that has been withdrawn before. During my time on the development team we have pushed fix releases on the same day as a big releases, but never was it reverted like this.</p>\n<p>&mdash; Coen Jacobs (@CoenJacobs) <a href="https://twitter.com/CoenJacobs/status/958768816808497152?ref_src=twsrc%5Etfw">January 31, 2018</a></p></blockquote>\n<p></p>\n<p>The development team has tested 3.3.1 with more than 40 different themes and believe it is stable. However, they are exercising caution and thoroughly testing the fixes with more themes. Users can expect to see 3.3.1 officially released the week of February 5th.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Feb 2018 07:06:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: WPWeekly Episode 303 – Interview With Zac Gordon, Technology Educator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77901&preview=true&preview_id=77901";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/wpweekly-episode-303-interview-with-zac-gordon-technology-educator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1902:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="http://zacgordon.com/">Zac Gordon</a>. We discussed a wide range of topics including, balancing freelance work with educating, an overview of Gutenberg from an educator&#8217;s perspective, and potential brand issues if the Gutenberg name <a href="githubhttps://github.com/WordPress/gutenberg/issues/4681">was deprecated</a>. We also talked about some of the difficulties involved with <a href="https://gutenberg.courses/">creating a course</a> around a feature that&#8217;s not yet part of WordPress core.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://ithemes.com/2018/01/31/ithemes-joining-the-liquid-web-family/">iThemes Acquired by LiquidWeb</a><br />\n<a href="https://woocommerce.com/2018/01/whats-new-woocommerce-3-3/">WooCommerce 3.3 Released</a><br />\n<a href="https://wptavern.com/updraftplus-acquires-easy-updates-manager-plugin">Easy Updates Manager Acquired by UpdraftPlus</a></p>\n<h2>Picks of the Week:</h2>\n<p>John James Jacoby suggested <a href="https://www.beamauthentic.com/">Beam Authentic</a>. Beam Authentic is a wearable, connected, smart button that can be programmed to display different images through an app.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, February 7th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #303:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Feb 2018 02:12:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:100:"WPTavern: Efrain Rivera, A Longtime Community Member, WordCamp Organizer, and Volunteer, Passes Away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77893";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wptavern.com/efrain-rivera-a-longtime-community-member-wordcamp-organizer-and-volunteer-passes-away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2776:"<p>Efrain Rivera, who helped organize and volunteer at numerous WordCamps in Florida has passed away at the age of 47. The news was shared on Facebook by his sister on January 28th.</p>\n<img />Efrain Rivera and his wife at WordCamp Miami. Photo courtesy of David Bisset\n<p>David Bisset, organizer of WordCamp Miami and a well-known figure in the Florida WordPress community, <a href="http://davidbisset.com/efrain-rivera/">shared his thoughts</a> on Rivera&#8217;s passing.</p>\n<blockquote><p>Efrain wasn’t just a fellow organizer, but also a supporter of the local WordPress meetups. There was no ulterior motive in anything that he did. Never once did he ask for anything – he was just happy to be there and help out. He was 100% about giving back to the WordPress community, but even if the community didn’t exist he would find a way to help out folks.</p>\n<p>Efrain wasn’t just a supporter and volunteer. He was a good friend to have – someone you could speak frankly too.</p></blockquote>\n<p>Rivera is being remembered as a kind, compassionate, and happy person by members of the community.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">I’m so sorry, he was a pleasure volunteering with,  <a href="https://twitter.com/EfrainWp?ref_src=twsrc%5Etfw">@EfrainWp</a> was always happy to help and answer questions.</p>\n<p>&mdash; Rian M. Kinney, Esq. (@TheKinneyFirm) <a href="https://twitter.com/TheKinneyFirm/status/958855848784252928?ref_src=twsrc%5Etfw">February 1, 2018</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">I remember his kindness David. What a great person and sad loss.</p>\n<p>&mdash; Diane Kinney (@dkinney) <a href="https://twitter.com/dkinney/status/958858994843611138?ref_src=twsrc%5Etfw">February 1, 2018</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Efrain was one of happiest, smiliest, caring people I’d ever hung out with at any WordPress event. <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f64f.png" alt="🙏" class="wp-smiley" /> <a href="https://t.co/qW7ChUmjX0">https://t.co/qW7ChUmjX0</a></p>\n<p>&mdash; J ³ (@JJJ) <a href="https://twitter.com/JJJ/status/958448885030182913?ref_src=twsrc%5Etfw">January 30, 2018</a></p></blockquote>\n<p></p>\n<p><a href="https://memorials.serenitymemorialchapels.com/efrain-rivera/3417849/obituary.php">Memorial services are scheduled</a> for Saturday, February 3, 2018 from 4:00 P.M.-9:00 P.M. EST at Serenity Funeral Home and Cremation, 1450 S State Road 7, North Lauderdale, Florida 33068. The service will take place during visitation at 7PM. If you have any memories of meeting or hanging out with Efrain at any of the WordPress events in Florida, please share them in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Feb 2018 01:13:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"HeroPress: The Journey: Curiosity, Challenge, Transformation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2431";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:158:"https://heropress.com/essays/journey-curiosity-challenge-transformation/#utm_source=rss&utm_medium=rss&utm_campaign=journey-curiosity-challenge-transformation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9293:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/01/013118-2-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: My place in the world has transformed." /><p>When I look back on the past five years I’ve been working with WordPress, I feel the real weight of the journey I’ve had to get where I am. Much of it has been filled with challenge of both of the difficult and welcome variety. I’m an optimist and problem-solver to the core, but I sometimes wonder how I got through these past years. One thing is for certain, my involvement with WordPress, the opportunities and community around it, has been a force for so much good, motivation, and satisfaction in my life.</p>\n<h2>The Beginning</h2>\n<p>When I was introduced to WordPress, I was going through one of the most trying times of my adult life. My dad had suddenly passed away just a few years before. We didn’t have the best relationship, but his quirkiness, interest in esoteric things, and passion for food certainly rubbed off on me.</p>\n<p>I was living with roommates, but moved back home to be with my mom. Not too long after, she developed debilitating osteoarthritis in both of her hips. From a physically healthy yet grieving 52-year-old woman to eventually becoming handicap and walker-bound, needless to say, impacted our lives greatly. I became her caretaker, and I also worked retail part-time for the flexible schedule.</p>\n<blockquote><p>I felt emotionally exhausted, uninspired and quite lost with what my next steps would be.</p></blockquote>\n<p>I grew up using the internet fervently as a youth and in my college years. I met new friends, learned new skills, and traveled to new places thanks the endless source of information it provided for my active mind. So when a friend, now my mentor, John Bolyard, approached me to help him in his web marketing and development consultancy using “WordPress” I just said “yes.” It was mysterious, being unknown to me, and intriguing, which is usually a green light in my book!</p>\n<p>I started doing administrative work on a website he helped develop for a national guild. Like many situations, he had finished their website and they would circle back to him for minor updates. I took on the minor updates, started tinkering on my own, and fell in love in the process.</p>\n<p>The accessibility with which one could make changes and produce content dynamically was just mind blowing to me. It was my gateway to web development and now I could make web content with the ability to work with code, if I so chose. It seemed an endless source of learning and knowledge- it was a great fit.</p>\n<h2>Levelling Up</h2>\n<p>That went well and he brought me on a larger project to help the artist, Dorothy Braudy, create her website archive. I was able to blend my affinity for the technical and handy visual memory to help an all around amazing person (she&#8217;s still one of closest people in my life) tell her story through her art. I was thrilled to have the challenge and the privilege to bring her vibrant and prolific work (hundreds of pieces) to the web.</p>\n<p>I also started assisting John with teaching WordPress classes at SCORE, a government organization that helps people develop and sustain small businesses.</p>\n<blockquote><p>We volunteered our time teaching business owners WordPress to help them build their own websites.</p></blockquote>\n<p>It was challenging yet rewarding to see them feel empowered that they could take a hands-on role in making their web presence.</p>\n<p>Nevertheless, I ended up with several clients and that’s how my freelancing career began :). I also started going to meetups. John brought me to my first one in the San Fernando Valley. I was like wait&#8230;this software is cool and people gather to talk about it? I can also learn stuff too?! Get outta town!</p>\n<p>Well, I started attending fairly frequently. Particularly, the meetup in the West Valley lead by Andrew Behla (then at the Topanga Canyon Library). I soaked up info from presentations given by Roy Sivan, Suzette Franck, and Lucy Beer (who is now my teammate). Just to name a few ;).</p>\n<p>After building a consistent client base, I also started working part-time as a project assistant at a boutique museum exhibit development firm. My first project was for the Huntington Library, Art Collections and Botanical Gardens supporting the development of an educational WordPress website for their Junípero Serra exhibition. What were the chances? My skills in WordPress proved helpful for the project and the firm&#8217;s website.</p>\n<h2>Pivoting</h2>\n<p>At this point, I had seen my mom through her first hip replacement and recovery, and she was moving on to her next one. I thought about where I saw myself and also where I could build a sustainable future given the circumstances. I thought WordPress, and so I did a trial as a Happiness Engineer at WordPress.com.</p>\n<p>While I didn&#8217;t get the position, I met some great people and learned exponentially more in that short time than I had on my own. More so, I learned about the users, WordPress’ strengths and weaknesses, and how to fill that gap in an accessible way. I was sad, but also motivated. I took on more client work and just did the thing.</p>\n<p>After three years, it was time to leave the exhibit development firm. It was fascinating, it provided me a design, development and project management vocabulary I had never encountered before. However, I needed a firmer career path and I still thought WordPress. My mom was recovered, I had also just recovered from some health issues, and I knew it was time for a change.</p>\n<p>While doing client work for several months, I also explored options on how I could &#8220;level up.&#8221; Maybe it was my time to dig into web development: should I learn on my own, go to a school?</p>\n<blockquote><p>In my gut, I knew I had to find work that supported my endeavors, so I started applying in the WordPress and tech ecosystem.</p></blockquote>\n<p>I networked, attended workshops, and met some awesome folks in the local tech and WordPress communities. I was also approached about joining the organizer team for WordCamp Los Angeles (WCLAX). I said “yes” (that magic word) and last year we had a great event.</p>\n<p>When we started planning, I had also heard from WP Media, (the company behind the WP Rocket and Imagify plugins), that I was hired for their Customer Support position. We’re a remote crew spread across 8 countries. However, I’ve been lucky enough to spend time with them at WordCamp Europe, WordCamp US, and our annual retreat last year.</p>\n<h2>Transformation</h2>\n<p>My place in the world has transformed. I&#8217;ve traveled to places once out of reach, work every day with some of the most brilliant and kind people in the WordPress space, and grow day by day with new challenges and opportunities. I&#8217;m happy, mom is healthy, and the journey continues…</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: The Journey: Curiosity, Challenge, Transformation" class="rtsocial-twitter-button" href="https://twitter.com/share?text=The%20Journey%3A%20Curiosity%2C%20Challenge%2C%20Transformation&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-curiosity-challenge-transformation%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: The Journey: Curiosity, Challenge, Transformation" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-curiosity-challenge-transformation%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-curiosity-challenge-transformation%2F&title=The+Journey%3A+Curiosity%2C+Challenge%2C+Transformation" rel="nofollow" target="_blank" title="Share: The Journey: Curiosity, Challenge, Transformation"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/journey-curiosity-challenge-transformation/&media=https://heropress.com/wp-content/uploads/2018/01/013118-2-150x150.jpg&description=The Journey: Curiosity, Challenge, Transformation" rel="nofollow" target="_blank" title="Pin: The Journey: Curiosity, Challenge, Transformation"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/journey-curiosity-challenge-transformation/" title="The Journey: Curiosity, Challenge, Transformation"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/journey-curiosity-challenge-transformation/">The Journey: Curiosity, Challenge, Transformation</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 11:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Renee Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WPTavern: WooCommerce 3.3 Increases Theme Compatibility, Auto Regenerates Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77795";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"https://wptavern.com/woocommerce-3-3-increases-theme-compatibility-auto-regenerates-thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3108:"<p>WooCommerce 3.3 <a href="https://woocommerce.com/2018/01/whats-new-woocommerce-3-3/">is available</a> and is considered a minor release. Based on the project’s <a href="https://github.com/woocommerce/woocommerce/wiki/Roadmap-and-release-process">new release process</a>, it should be fully backwards compatible with previous releases up to 3.0.</p>\n<p>The orders screen has been redesigned with large buttons that indicate an order’s status. You can also view an order’s details from the order screen without having to edit the order.</p>\n<img class="aligncenter" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/01/WC33OrdersScreen.png?w=627&ssl=1" alt="" width="627" height="261" />WooCommerce 3.3 Orders Screen\n<p>For products that are on backorder and have stock management enabled, WooCommerce 3.3 will automatically transition from ‘In stock’ to ‘On backorder’ or ‘Out of stock’ as the inventory decreases. Once inventory is added, the status will switch back to ‘In Stock’.</p>\n<img class="aligncenter" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/01/WC33OrderStatus.png?w=627&ssl=1" alt="" width="627" height="328" />WooCommerce 3.3 Order Status Screen\n<p>For full compatibility, users generally needed to use a WordPress theme that specifically supported WooCommerce. In 3.3, improvements have been made so that WooCommerce renders on themes that don’t fully support it, making it compatible with nearly every WordPress theme.</p>\n<p>Users can now set the number of columns and rows for shops with the ability to preview the results live via the Customizer. The columns will resize to fill the entire width of the area and is available on all themes.</p>\n<p>In earlier versions of WooCommerce, shop owners needed to use the <a href="https://wordpress.org/plugins/regenerate-thumbnails/">Regenerate Thumbnails</a> after updating a product’s image as WordPress did not automatically resize the image and generate new thumbnails. WooCommerce 3.3 adds on-the-fly thumbnail regeneration and background thumbnail resizing.</p>\n<p>In addition, users can customize the aspect ratios of product images. The choices are classic square images, custom cropped images, or uncropped images</p>\n<img class="aligncenter" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/01/WC33ImageAspectRatio.png?w=627&ssl=1" alt="" width="627" height="402" />WooCommerce 3.3 Image Aspect Ratio Options\n<p>Shop owners can now view logs of product downloads with a couple of built-in filters including, by order, by product, by customer, and by file. You can also search for extensions now from the Extensions administration screen.</p>\n<p>WooCommerce 3.3 includes more features and changes than what’s listed here. For a detailed overview of what’s new in 3.3, <a href="https://github.com/woocommerce/woocommerce/blob/release/3.3/readme.txt">check out the changelog</a>. If you think you’ve discovered a bug, please report it on the <a href="https://github.com/woothemes/woocommerce/issues">project’s GitHub page</a>.</p>\n<p><!-- /wp:core/paragraph --></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 30 Jan 2018 22:53:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"Mark Jaquith: Simple WordPress deploys using Git";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://markjaquith.wordpress.com/?p=5422";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://markjaquith.wordpress.com/2018/01/30/simple-wordpress-deploys-using-git/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3328:"<p>A few weeks back, Clifton Griffin asked me a question about deploying WordPress sites:</p>\n<div class="embed-twitter">\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr"><a href="https://twitter.com/markjaquith?ref_src=twsrc%5Etfw">@markjaquith</a> Hey Mark, quick question: Do you still use and recommend Capistrano?</p>\n<p>&mdash; Clifton Griffin (@clifgriffin) <a href="https://twitter.com/clifgriffin/status/948373150680707073?ref_src=twsrc%5Etfw">January 3, 2018</a></p></blockquote>\n<p></div>\n<p>I <b>do not</b> use Capistrano for deployments anymore, for one simple reason: it was massive overkill for most of the sites I manage, and maintaining it was not worth the benefit.</p>\n<p>My current deployment system for WordPress sites is simple: I use Git.</p>\n<p>I&#8217;m already using Git for version control of the site&#8217;s code, so using Git for deployments is not that much more work. There are a few ways to do this, but the simplest way is to just make your site root a Git checkout of your site files.</p>\n<p>Then, if your server has read-access to your Git remote, you can run some Git commands to sync everything. Here are your options:</p>\n<ol>\n<li><strong>git pull</strong> — Simple, but might fail if someone naughty has made code modifications on the server.</li>\n<li><strong>git fetch &amp;&amp; git reset &#8211;hard origin/master</strong> — The hard reset method will wipe any local modifications that someone has mistakenly made.</li>\n</ol>\n<p>But wait. Before you implement this, it is very important that you ensure that your server&#8217;s <strong>.git</strong> directory is not readable, as it might be able to leak sensitive information about your site&#8217;s code. How you do this will depend on what web server you&#8217;re running. In Nginx, I do the following:</p>\n<pre class="brush: plain; title: ; notranslate">location ~ /\\.(ht[a-z]+|git|svn) {\ndeny all;\n}</pre>\n<p>In Apache, you could put the following in your <strong>.htaccess</strong> file:</p>\n<pre class="brush: plain; title: ; notranslate">RedirectMatch 404 /\\.git</pre>\n<p>SSHing into your server every time is tedious, so let&#8217;s script that:</p>\n<pre class="brush: bash; title: ; notranslate">#!/bin/bash\nssh example.com ''cd /srv/www/example.com &amp;&amp; git pull''</pre>\n<p>Save that to <strong>deploy.sh</strong> in your Git repo, run <strong>chmod +x deploy.sh</strong>, and commit it to the repo. Now when you&#8217;re ready to deploy the site, just type <strong>./deploy.sh</strong> and the public site will pull down the latest changes from your main Git remote.</p>\n<p>Bonus points if you make <strong>deploy.sh</strong> take an optional commit hash, so you can also use this tool to roll back to a previous hash, in case a commit goes wrong.</p>\n<p>This method has served me well, for years, and has required no maintenance.</p>\n<p>What methods are you using for WordPress code deploys?</p>\n<hr />\n<p><b>Do you need <a href="https://coveredwebservices.com/">WordPress services?</a></b></p>\n<p>Mark runs <a href="https://coveredwebservices.com/">Covered Web Services</a> which specializes in custom WordPress solutions with focuses on security, speed optimization, plugin development and customization, and complex migrations.</p>\n<p>Please reach out to start a conversation!</p>\n[contact-form]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 30 Jan 2018 15:31:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: UpdraftPlus Acquires Easy Updates Manager Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77700";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/updraftplus-acquires-easy-updates-manager-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2048:"<p><a href="https://updraftplus.com/">UpdraftPlus</a>, a popular WordPress backup plugin actively installed on more than 1 million sites has acquired the <a href="https://wordpress.org/plugins/stops-core-theme-and-plugin-updates/">Easy Updates Manager</a> plugin for an undisclosed amount.</p>\n<p>Easy Updates Manager disables core, theme, and plugin updates in WordPress and provides granular control over them. It was created in 2015, is actively installed on more than 100K sites, and is maintained by <a href="https://profiles.wordpress.org/kidsguide/">Matthew Sparrow</a>, <a href="https://profiles.wordpress.org/ronalfy/">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/roary86/">Roary Tubbs</a>, and <a href="https://profiles.wordpress.org/bigwing/">BigWing Interactive</a>.</p>\n<img />Easy Updates manager User Interface\n<p>Burnout was a contributing factor for selling the plugin. &#8220;Matthew Sparrow and I were both burnt out on the project, so the offer to sell was a no-brainer,&#8221; Huereca said. &#8220;It’s bittersweet letting our baby go, but it’s in good hands.&#8221;</p>\n<p>Without proper vetting, selling established plugins to individuals or companies can be harmful to sites and tarnish its reputation. Because UpdraftPlus is a well established company, Huereca didn&#8217;t have to do a lot of research.</p>\n<p>&#8220;We were looking for more backend plugins that we understand and it&#8217;s a great plugin, highly rated and growing,&#8221; A company representative said. &#8220;Updates and backups go hand-in-hand as people should really backup before updating.&#8221;</p>\n<p>UpdraftPlus will focus its marketing efforts towards <a href="https://updraftplus.com/updraftcentral/">UpdraftCentral</a> later this year. UpdraftCentral provides the ability for users to update, backup, and manage their sites from one dashboard. Easy Updates Manager and UpdraftCentral are complimentary products.</p>\n<p>Users can expect to see more updates later this year and continued refinement of the user interface.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 30 Jan 2018 00:30:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"BuddyPress: BuddyPress 2.9.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=270325";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://buddypress.org/2018/01/buddypress-2-9-3-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1312:"<p>BuddyPress 2.9.3 is now available. This is a security and maintenance release. We strongly encourage all BuddyPress sites to upgrade as soon as possible.</p>\n<p>The 2.9.3 release addresses two security issues:</p>\n<ul>\n<li>A dynamic template loading feature could be used in some cases for unauthorized file execution and directory traversal. Reported by <a href="https://pritect.net">James Golovich</a>.</li>\n<li>Some permissions checks and path validations in the attachment deletion process were hardened. Reported by <a href="https://www.ripstech.com/">RIPSTech</a> and <a href="https://profiles.wordpress.org/slaFFik/">Slava Abakumov</a> of the BuddyPress security team.</li>\n</ul>\n<p>These vulnerabilities were reported privately to the BuddyPress team, in accordance with <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">WordPress&#8217;s security policies</a>. Our thanks to all reporters for practicing coordinated disclosure.</p>\n<p>In addition, 2.9.3 includes a change that fixes the ability to install legacy bbPress 1.x forums. Please note that legacy forum support will be removed altogether in BuddyPress 3.0; see <a href="https://bpdevel.wordpress.com/2017/12/07/legacy-forums-support-will-be/">the announcement blog post</a> for more details.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Jan 2018 18:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Boone Gorges";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: WPWeekly Episode 302 – Brian Gardner, Founder of StudioPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77689&preview=true&preview_id=77689";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/wpweekly-episode-302-brian-gardner-founder-of-studiopress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1338:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="https://briangardner.com/">Brian Gardner</a>, founder of <a href="https://www.studiopress.com/">StudioPress</a>. We talk about the past, present, and future of the company including various milestones such as the Genesis framework and merger with CopyBlogger Media in 2010. We also discuss the community surrounding StudioPress&#8217; products and the role it plays in the company&#8217;s continued success.</p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://wptavern.com/new-toolkit-simplifies-the-process-of-creating-gutenberg-blocks">Ahmad Awais Create Guten Block toolkit</a>.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 31st 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #302:</strong> </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Jan 2018 04:15:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"WPTavern: WordPress Turns 15 Years Old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77652";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wptavern.com/wordpress-turns-15-years-old";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1120:"<p><!-- wp:core/paragraph --><br />\nWordPress, the free open source project, <a href="https://ma.tt/2003/01/the-blogging-software-dilemma/">turns 15 years</a> old today. Here is the comment that started it all.<br />\n<!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/image {"id":51095} --></p>\n<img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/MikeLittleForkB2Comment.png?w=627&ssl=1" alt="Mike Little&#x27;s Comment" />Mike Little&#x27;s Comment\n<p><!-- /wp:core/image --></p>\n<p><!-- wp:core/paragraph --><br />\nIn addition to celebrating 15 years as a successful software project, it&#x27;s also a good opportunity to reflect on the number of people across the world who are making a great living and <a href="http://heropress.com/">turning dreams into reality</a> thanks to the project.<br />\n<!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --><br />\nThank you Matt Mullenweg and Mike Little for creating WordPress, its contributors for keeping the ball rolling all these years, and providing opportunities for so many people. Happy birthday WordPress!<br />\n<!-- /wp:core/paragraph --></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Jan 2018 03:41:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: WordCamp Miami Celebrates Its 10th Consecutive Year March 16-18";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77595";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wptavern.com/wordcamp-miami-celebrates-its-10th-consecutive-year-march-16-18";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3689:"<p><!-- wp:core/paragraph --></p>\n<p><a href="https://2018.miami.wordcamp.org/">WordCamp Miami</a> is celebrating its 10th anniversary on March 16-18th. This year&#x27;s event is organized by twelve people and organizers expect more than 800 people to attend. Speakers will arrive from Italy, Germany, London, Brazil, and other international locations to share their knowledge.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>In addition to a <a href="https://2018.miami.wordcamp.org/kids/">two-day Kids Camp</a> with a Kids Panel, WordCamp Miami will feature two new workshops. The first is developer focused and will prepare developers for <a href="https://2018.miami.wordcamp.org/2017/12/19/developer-workshop-announcement-future-of-wordpress/">the future of WordPress</a>. The second is <a href="https://2018.miami.wordcamp.org/2017/12/21/ecommerce-workshop-coming-to-wcmia/">focused on eCommerce</a>.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Attendees will receive their own site and be able to apply what they&#x27;ve learned to it. The sites will have pre-installed plugins and access to various tools mentioned by the workshop teachers.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>The &#x27;Learn JavaScript Deeply&#x27; track is returning this year, featuring local and international JavaScript developers. This is the third time WordCamp Miami has had this track and according to David Bisset, one of the organizers, the focus will be on JavaScript basics, React, plus using JavaScript to create &#x27;cool and unique&#x27; projects with or without WordPress.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Joshua Strebel, Syed Balkhi, and Christie Chirinos will highlight Saturday&#x27;s business track. </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>For the first time in recent years, WordCamp Miami will have a closing keynote on Saturday, March 17th by John James Jacoby. Jacoby was one of the founders of WordCamp Miami a decade ago, and his talk will cover both nostalgic moments and what the future of WordPress holds for users.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Finally, WordCamp Miami will be doing a &#x27;game show hour&#x27; before the official after party. "We wanted to do something fun and interactive for everyone &#8211; and we think we found a great way to segue people from the talks to unwinding at the after party," Bisset explained. </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>"We are even planning on having our sponsors form teams in a trivia contest battle. There will be provisions at the party for those who want to network or just relax in a quiet setting."</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Bisset praised volunteers and organizers for helping make 10 years of WordCamp Miami a reality.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>"Each and every one of our organizers and speakers deserve a huge amount of thanks and praise for their hard work." He said. "We couldn&#x27;t have done ten years without the support of the WordPress community."</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Tickets are <a href="https://2018.miami.wordcamp.org/tickets/">on sale</a> with a number of purchasing options. Workshops cost $15 each and general admission tickets are $40 each. General admission tickets provide access to Saturday and Sunday sessions, lunch, swag, and the after party. </p>\n<p><!-- /wp:core/paragraph --></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Jan 2018 01:56:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"HeroPress: Believe In Yourself";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2420";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"https://heropress.com/essays/believe-in-yourself/#utm_source=rss&utm_medium=rss&utm_campaign=believe-in-yourself";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:10510:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/01/012418-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Working in WordPress has allowed my curiosity to run wild." /><p>You ever have a moment where you blink your eyes and you wonder how you’ve gotten to where you are today? I’m having one of those moments right now as I sit here to share my story with you. It’s bizarre to think of how far I’ve come because I truly thought that I was not good enough to be where I am today. Let’s get into it.</p>\n<h3>The Beginning</h3>\n<p>As a child, I was always around technology. My dad was a computer scientist and considered it a great idea to get each of his four children their own computer so they would stay away from his. So as the years went by with system administrative tasks being “one of the hard-knocks of life”, I went off to Drexel University in 2005 to pursue a degree in Computer Science. I remember when I walked into my first class and instantly saw how different I was. Everyone was white. Everyone was male. And I was not. In fact, I couldn’t even check off one of those boxes. I was opposite. I was female and I was black.</p>\n<p>The first year pursuing my degree actually went really well and finished off the year, completing my C++ final project to create a matching cards game using objects and classes. All was swell. I found that I was doing just as well as everyone else. And I found that was struggling in certain areas just like everyone else.</p>\n<h3>Leaning In</h3>\n<p>Next semester came and that’s when the more difficult course load began. There was one class in particular called “Data Algorithms &amp; Theories” that was incredibly and frustratingly difficult. As someone who always wanted to do well and is inclined to beat herself up for not being “perfect”, it was an incredibly stressful time for me. But once again, I was not the only one who was struggling because the class was difficult for all of my classmates. But as the class progressed, I decided to step out of my comfort zone and ask for help. This was the first time I would actually utilize the teaching assistant (TA) that was often present during this class. So our scheduled meeting comes around and it doesn’t go as I’d hoped. It wasn’t at all a welcoming atmosphere.</p>\n<blockquote><p>The demeanor of the TA made it clear that he didn’t want to be there but my happy-go-lucky personality brushed it aside.</p></blockquote>\n<p>To make things worse, I wasn’t understanding the “simple” concepts that he was explaining and was subject to the TA’s dismissive glances of judgement and shame. I remember at one point, my mind shifted into trying to make him like me rather than realize that he was discriminating against me. Then he said to me “You know, maybe this just isn’t for you. I’ve explained this to you multiple times and you’re just not getting.” This was a very upsetting moment in my life because someone who was supposed to be helping me learn was telling me that you’re too stupid to learn. Needless to say, I left that session very upset and I ultimately ended up changing my major to something “easier” because apparently it “wasn’t for me”.</p>\n<h3>Accepting A Career</h3>\n<p>After I graduated in 2010 with my degree in Information Technology, I moved to DC to pursue an unfulfilling Systems Engineering career in government contracting. Don’t get me wrong. I learned a plethora of valuable skills that I will use for the rest of my life. But I wasn’t doing something that was enriching me. Not only that, I was often made to feel ostracized in the work culture because of the lack of diversity.</p>\n<blockquote><p>I’m not sure if anyone’s told you&#8230;but it’s extremely hard being a minority and working with people who don’t look like you and who can’t relate to you.</p></blockquote>\n<p>If someone said something racially insensitive or offensive (and there have been multiple instances), that was always a battle I had to fight on my own. And to be honest, sometimes I didn’t fight because I knew no one would give a damn and the person would get away with it with a slap on the wrist.</p>\n<h3>Remembering Joy</h3>\n<p>So in the mist of all of this, no matter how upset, beaten-up and angry I felt after a work day, I could always come back to my love for the metal music genre. I would spend so much time listening to new metal music after work that co-workers nicknamed me “the DJ”. Which isn’t completely untrue. In college, one of my extracurriculars was to host a weekly metal radio show on the college radio station. But I didn’t have that anymore so I essentially felt a bit lost.</p>\n<p>That’s when I decided to get it back! Not in the form of an actual radio show. But in the form of a metal music blog. Outside of having played around with making marque-filled pages on GeoCities and changing the backgrounds of my MySpace and Xanga profiles to be neon-colored or highly pixelated images, I didn’t have any experience making a website. So I GOOGLED it! And in that research I learned how hosting providers work and the best blogging platform for me to use for my blog. And that platform was WordPress. So in 2015, I launched my first website ever on WordPress: metalandcoffee.com. And this point I didn’t really know anything super WordPress-nerdy outside of being able to select a theme and add/organize content on the navigation bar. But I finally had my own voice live and anyone can see it!</p>\n<h3>Looking Deep</h3>\n<p>Now &#8211; the year was 2017 and words cannot describe how miserable I am in my current work position. I thought transferring to a position within the company that brought me back to Philadelphia would help my pain and suffering but it only numbed it for a couple months. I still didn’t like the environment, I didn’t like what I was doing, and although I was able to look at the occasional code snippet that would give me a spark of confidence when I understood what the code was doing, I wasn’t given an opportunity to be on the other side. This is what lit a fire under me to finally do everything in my power to move towards a developer career. I felt like that was where I was supposed to be. Sure, I was told that I wasn’t smart enough to be anywhere near code but why did it excite me to see it and recognize it? Why was I able to troubleshoot errors even though I wasn’t a developer? Why was I excelling at quality assuring software by being able to understand the code’s logic thus thinking of scenarios that were unaccounted for?</p>\n<h3>Breaking Through</h3>\n<p>So I signed up for a couple online courses focused on web development and eventually found myself having been accepted to <a href="http://www.interactivemechanics.com/fellowship">a front-end developer fellowship program</a> that provided me with an amazing mentor and a final project to work towards. For my final project, I chose to learn how to create a custom WordPress theme for my Metal &amp; Coffee website because the current one that I was using did not fully suite my needs.</p>\n<blockquote><p>And there you have it &#8211; throughout the next 9 months, the doubt and shame instilled in me since college kept coming up and I kept having to find ways to break through it whether it’d be a pep talk from my mentor, talking to developers who look like me (black women) or using meditation to help me through the anxiety.</p></blockquote>\n<p>And by the end of that, not only did I finish my final project (<a href="http://metalandcoffee.github.io">http://metalandcoffee.github.io</a>) and come to really love WordPress theming, I got a job offer from Tracy Levesque and Mia Levesque to work at their WordPress web agency, <a href="https://www.yikesinc.com/">Yikes Inc.</a></p>\n<h3>Finding My Place</h3>\n<p>Now, I’m a full-time WordPress developer and I couldn’t be more satisfied. Working at Yikes has sent my developer skills soaring over mountains and valleys. My curiosity is allowed to run wild and I’ve actually been diving into the plugin world, completely re-coding an internal plugin from the ground up and learning essential web programming practices in the process.</p>\n<p>My next goal in the WordPress community is to see more WordPress developers who look like me. And one step I’ve taken towards that goal is to co-teach a Intro to WordPress workshop at Codeland 2018 which I’m very excited (and nervous) for. And I’ll continue to be as visible and outspoken as possible to encourage diversity in this community.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Believe In Yourself" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Believe%20In%20Yourself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbelieve-in-yourself%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Believe In Yourself" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbelieve-in-yourself%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbelieve-in-yourself%2F&title=Believe+In+Yourself" rel="nofollow" target="_blank" title="Share: Believe In Yourself"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/believe-in-yourself/&media=https://heropress.com/wp-content/uploads/2018/01/012418-150x150.jpg&description=Believe In Yourself" rel="nofollow" target="_blank" title="Pin: Believe In Yourself"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/believe-in-yourself/" title="Believe In Yourself"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/believe-in-yourself/">Believe In Yourself</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Jan 2018 13:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Ebonie Butler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: New Toolkit Simplifies the Process of Creating Gutenberg Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wptavern.com/new-toolkit-simplifies-the-process-of-creating-gutenberg-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5470:"<p><!-- wp:core/paragraph --></p>\n<p><a href="https://ahmadawais.com/">Ahmad Awais</a>, who <a href="https://wptavern.com/gutenberg-boilerplate-demonstrates-how-to-build-custom-blocks">created the Gutenberg Boilerplate</a> last year, has <a href="https://ahmadawais.com/create-guten-block-toolkit/">released</a> a <a href="https://github.com/ahmadawais/create-guten-block">Guten Block Toolkit</a>. The toolkit substantially simplifies the creation of Gutenberg Blocks by providing no configuration, one dependency, and no lock-in.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Awais created the toolkit after receiving feedback that configuring things like Webpack, React, ES 6/7/8/Next, ESLint, Babel and keeping up with their development was too difficult.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>"Developers told me that they built Gutenberg blocks with ES5 because the amount of time required to configure, set up, and learn tools like Babel, Webpack, ESLint, Prettier, etc. wasn’t worth it," Awais said.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>"So, yes! I went ahead and built a solution — a zero-config-js #0CJS WordPress developers’ toolkit called create-guten-block!"</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Creating blocks using the toolkit is a three-step process. </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Developers begin by installing Node version 8 or higher on a local server. The next step is to run the create-guten-block command and provide a name for the plugin that will be created. This command also creates the folder structure necessary to maintain the project. The last step is to run the NPM start command which runs the plugin in development mode.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Once these steps are completed, the WordPress plugin will be compatible with Gutenberg and have React.js, ES 6/7/8/Next, and Babel, which also has ESLint configurations for code editors to detect and use automatically. </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>The Guten Block Toolkit comes with the following:</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/list --></p>\n<ul>\n<li>React, JSX, and ES6 syntax support. </li>\n<li>Webpack dev/production build process behind the scene. </li>\n<li>Language extras beyond ES6 like the object spread operator. </li>\n<li>Auto-prefixed CSS, so you don’t need -webkit or other prefixes. </li>\n<li>A build script to bundle JS, CSS, and images for production with source-maps. </li>\n<li>Hassle-free updates for the above tools with a single dependency cgb-scripts.</li>\n</ul>\n<p><!-- /wp:core/list --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>The project has received positive feedback, including from members of Gutenberg&#x27;s development team.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/embed {"url":"https://twitter.com/GaryPendergast/status/954559771910193152"} --></p>\n\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Mad props to <a href="https://twitter.com/MrAhmadAwais?ref_src=twsrc%5Etfw">@MrAhmadAwais</a> for making a super useful Gutenberg tool that I''ve been really looking forward to! 🎉</p>\n<p>I''m excited about the possibilities for this, and I love how it''s embraced WordPress'' "decisions, not options" philosophy, doing all of the hard work for you. 💪💯 <a href="https://t.co/hUAQVDL7S1">https://t.co/hUAQVDL7S1</a></p>\n<p>&mdash; Gary (@GaryPendergast) <a href="https://twitter.com/GaryPendergast/status/954559771910193152?ref_src=twsrc%5Etfw">January 20, 2018</a></p></blockquote>\n<p><br />\n\n<p><!-- /wp:core/embed --></p>\n<p><!-- wp:core/embed {"url":"https://twitter.com/igorbenic/status/955539392273281025"} --></p>\n\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Tried the <a href="https://t.co/WkvhwSVBh6">https://t.co/WkvhwSVBh6</a> from <a href="https://twitter.com/MrAhmadAwais?ref_src=twsrc%5Etfw">@MrAhmadAwais</a>, had a block within a minute. Now it''s time to finish the <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> course from <a href="https://twitter.com/zgordon?ref_src=twsrc%5Etfw">@zgordon</a> to actually build something useful :D</p>\n<p>&mdash; Igor Benić (@igorbenic) <a href="https://twitter.com/igorbenic/status/955539392273281025?ref_src=twsrc%5Etfw">January 22, 2018</a></p></blockquote>\n<p><br />\n\n<p><!-- /wp:core/embed --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>With a stable release now available to the public, Awais is working on <a href="https://github.com/ahmadawais/create-guten-block/issues/11">2.0.0</a>. "The next step is to get this toolkit tested and mature the entire app to release version 2.0.0 for that not only do I need your <a href="https://ahmadawais.com/contact/">support</a>, I ask that you hop on board and contribute — that’s the only way forward," he said.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Create Guten Block Toolkit is <a href="https://github.com/ahmadawais/create-guten-block/blob/master/LICENSE">MIT licensed</a> and available for free <a href="https://github.com/ahmadawais/create-guten-block">on GitHub</a>. Contributions are welcomed! </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p><!-- /wp:core/paragraph --></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Jan 2018 03:30:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Free Conference Dedicated to WordPress in Higher Ed Takes Place January 30th at 9AM CST";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77514";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:108:"https://wptavern.com/free-conference-dedicated-to-wordpress-in-higher-ed-takes-place-january-30th-at-9am-cst";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1380:"<p>If you&#8217;re interested in learning how WordPress is used in Higher Ed, tune in to <a href="https://online.wpcampus.org/">WPCampus Online</a>, January 30th at 9AM Central Standard Time. WPCampus Online is a virtual conference that people can watch for free, no traveling necessary. The event uses <a href="https://www.crowdcast.io/">Crowdcast</a> allowing viewers to switch between rooms, interact with each other, and ask questions.</p>\n<p>Some of the topics that <a href="https://online.wpcampus.org/schedule/">will be presented</a> include, <a href="https://online.wpcampus.org/schedule/wordpress-and-real-world-data-with-students/">WordPress and Real-World Data with Students</a>, <a href="https://online.wpcampus.org/schedule/headless-brainless-wordpress/">Headless and Brainless WordPress</a>, and <a href="https://online.wpcampus.org/schedule/using-wordpress-support-run-student-government-elections/">Using WordPress to Support and Run Student Government Elections</a>. If in-person conferences are more your style, keep an eye out for information on WPCampus 2018 tentatively planned for this Summer.</p>\n<p>To learn more about WPCampus and the people behind it, <a href="https://wptavern.com/wpweekly-episode-301-wordpress-in-highered-accessibility-and-more-with-rachel-cherry">listen to our interview</a> with Rachel Cherry on episode 301 of WordPress Weekly.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Jan 2018 22:14:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"Mark Jaquith: How I fixed Yoast SEO sitemaps on a large WordPress site";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://markjaquith.wordpress.com/?p=5392";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"https://markjaquith.wordpress.com/2018/01/22/how-i-fixed-yoast-seo-sitemaps-on-a-large-wordpress-site/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4852:"<p>One of my Covered Web Services clients recently came to me with a problem: <a href="https://yoast.com/wordpress/plugins/seo/">Yoast SEO</a> sitemaps were broken on their largest, highest-traffic WordPress site. Yoast SEO breaks your sitemap up into chunks. On this site, the individual chunks were loading, but the sitemap index (its &#8220;table of contents&#8221;) would not load, and was giving a timeout error. This prevented search engines from finding the individual sitemap chunks.</p>\n<p>Sitemaps are really helpful for providing information to search engines about the content on your site, so fixing this issue was a high priority to the client! They were frustrated, and confused, because this was working just fine on their other sites.</p>\n<p>Given that this site has over a decade of content, I figured that Yoast SEO&#8217;s dynamic generation of the sitemap was simply taking too long, and the server was giving up.</p>\n<p>So I increased the site&#8217;s various timeout settings to 120 seconds.</p>\n<p><strong>No good.</strong></p>\n<p>I increased the timeout settings to 300 seconds. Five whole minutes!</p>\n<p><strong>Still no good.</strong></p>\n<p>This illustrates one of the problems that WordPress sites can face when they accumulate a lot of content: <strong>dynamic processes start to take longer</strong>. A process that takes a reasonable 5 seconds with 5,000 posts might take 100 seconds with 500,000 posts. I could have eventually made the Yoast SEO sitemap index work if I increased the timeout high enough, but that wouldn&#8217;t have been a good solution.</p>\n<ol>\n<li>It would have meant increasing the timeout settings irresponsibly high, leaving the server potentially open to abuse.</li>\n<li>Even though it is search engines, not people, who are requesting the sitemap, it is unreasonable to expect them to wait over 5 minutes for it to load. They&#8217;re likely to give up. They might even penalize the site in their rankings for being slow.</li>\n</ol>\n<p>I needed the sitemap to be reliably generated without making the search engines wait.</p>\n<p><strong>When something intensive needs to happen reliably on a site, look to the command line.</strong></p>\n<h2>The Solution</h2>\n<p>Yoast SEO doesn&#8217;t have <a href="http://wp-cli.org/">WP-CLI</a> (WordPress command line interface) commands, but that doesn&#8217;t matter — you can just use <a href="https://developer.wordpress.org/cli/commands/eval/"><b>wp eval</b></a> to run arbitrary WordPress PHP code.</p>\n<p>After a little digging through the <a href="https://github.com/Yoast/wordpress-seo/blob/46802dbcf8e7d2ac0d6552f4de0923cd0eba2b07/inc/sitemaps/class-sitemaps.php#L345-L364">Yoast SEO code</a>, I determined that this WP-CLI command would output the index sitemap:</p>\n<pre class="brush: bash; title: ; notranslate">wp eval ''\n$sm = new WPSEO_Sitemaps;\n$sm-&gt;build_root_map();\n$sm-&gt;output();\n''</pre>\n<p>That took a good while to run on the command line, but that doesn&#8217;t matter, because I just set a <a href="https://help.ubuntu.com/community/CronHowto">cron job</a> to run it once a day and save its output to a static file.</p>\n<pre class="brush: plain; title: ; notranslate">0 3 * * * cd /srv/www/example.com &amp;&amp; /usr/local/bin/wp eval ''$sm = new WPSEO_Sitemaps;$sm-&gt;build_root_map();$sm-&gt;output();'' &gt; /srv/www/example.com/wp-content/uploads/sitemap_index.xml</pre>\n<p>The final step that was needed was to modify a rewrite in the site&#8217;s Nginx config that would make the <b>/sitemap_index.xml</b> path point to the cron-created static file, instead of resolving to Yoast SEO&#8217;s dynamic generation URL.</p>\n<pre class="brush: plain; highlight: [4]; title: ; notranslate">location ~ ([^/]*)sitemap(.*).x(m|s)l$ {\n    rewrite ^/sitemap.xml$ /sitemap_index.xml permanent;\n    rewrite ^/([a-z]+)?-?sitemap.xsl$ /index.php?xsl=$1 last;\n    rewrite ^/sitemap_index.xml$ /wp-content/uploads/sitemap_index.xml last;\n    rewrite ^/([^/]+?)-sitemap([0-9]+)?.xml$ /index.php?sitemap=$1&amp;sitemap_n=$2 last;\n}</pre>\n<p>Now the sitemap index loads instantly (because it&#8217;s a static file), and is kept up-to-date with a reliable background process. The client is happy that they didn&#8217;t have to switch SEO plugins or install a separate sitemap plugin. Everything just works, thanks to a little bit of command line magic.</p>\n<p>What other WordPress processes would benefit from this kind of approach?</p>\n<hr />\n<p><b>Do you need <a href="https://coveredwebservices.com/">WordPress services?</a></b></p>\n<p>Mark runs <a href="https://coveredwebservices.com/">Covered Web Services</a> which specializes in custom WordPress solutions with focuses on security, speed optimization, plugin development and customization, and complex migrations.</p>\n<p>Please reach out to start a conversation!</p>\n[contact-form]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Jan 2018 15:15:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Matt: R.I.P Dean";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47840";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:33:"https://ma.tt/2018/01/r-i-p-dean/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3493:"<p>Dean Allen, a web pioneer and good man, has passed away. I&#x27;ve been processing the news for a few days and still don&#x27;t know where to begin. Dean was a writer, who wrote the software he wrote on. His websites were crafted, designed, and typeset so well you would have visited them even if they were filled with Lorem Ipsum, and paired with his writing you were drawn into an impossibly rich world. His blog was called Textism, and among many other things it introduced me to the art of typography.</p>\n\n\n\n<p>Later, he created Textpattern, without which WordPress wouldn&#x27;t exist. Later, he created Textdrive with Jason Hoffman, without which WordPress wouldn&#x27;t have found an early business model or had a home on the web. He brought a care and craft to everything he touched that inspires me to this day. As <a href="https://daringfireball.net/2018/01/dean_allen">John Gruber said</a>, "Dean strove for perfection and often achieved it." (Aside: Making typography better on the web led John Gruber to release Smarty Pants, Dean a tool called Textile, and myself something called Texturize all within a few months of each other; John continued his work and created Markdown, I put Texturize into WP, and Dean released Textile in Textpattern.)</p>\n\n\n\n<p>Years later, we became friends and shared many trips, walks, drinks, and meals together, often with Hanni and <a href="https://om.co/2018/01/18/dean-allen-rest-in-peace/">Om</a>. (When we overlapped in Vancouver he immediately texted "I&#x27;ll show you some butt-kicking food and drink.") His zest for life was matched with an encyclopedic knowledge of culture and voracious reading (and later podcast listening) habits. I learned so much in our time together, a web inspiration who turned for me into a real-life mensch. He was endlessly generous with his time and counsel in design, prose, and fashion. I learned the impossibly clever sentences he wrote, that you assumed were the product of a small writing crew or at least a few revisions, came annoyingly easily to him, an extension of how he actually thought and wrote and the culmination of a lifetime of telling stories and connecting to the human psyche.</p>\n\n\n\n<p>Dean, who (of course) was also a great photographer, didn&#x27;t love having his own photo taken but would occasionally tolerate me when I pointed a camera at him <a href="https://om.co/2018/01/18/dean-allen-rest-in-peace/">and Om has a number of the photos on his post</a>. There&#x27;s one that haunts me: before getting BBQ we were at his friend&#x27;s apartment in Vancouver, listening to Mingus and enjoying hand-crafted old fashioneds with <a href="https://ma.tt/files/2018/01/IMG_7147.jpg">antique bitters</a>, and despite the rain we went on the roof to see the art that was visible from there. He obliged to a photo this time though and we took photos of each other individually in front of a sign that said "EVERYTHING IS GOING TO BE ALRIGHT." It wasn&#x27;t, but it&#x27;s what I imagine Dean would say right now if he could.</p>\n\n\n\n<div class="wp-block-gallery alignnone columns-2 is-cropped">\n    <img src="https://i2.wp.com/ma.tt/files/2018/01/IMG_7151.jpg?w=604&ssl=1" />\n    <img src="https://i0.wp.com/ma.tt/files/2018/01/IMG_7158.jpg?w=604&ssl=1" />\n</div>\n\n\n\n<img src="https://i1.wp.com/ma.tt/files/2018/01/104050690_ce98a95092_o.jpg?w=604&ssl=1" />\n    When we first met, in 2006, <a href="https://www.flickr.com/photos/textdriveinc/104050690/in/photostream/">from Jason</a>.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 19 Jan 2018 05:21:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:100:"WPTavern: WPWeekly Episode 301 – WordPress in HigherEd, Accessibility, and More With Rachel Cherry";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77497&preview=true&preview_id=77497";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/wpweekly-episode-301-wordpress-in-highered-accessibility-and-more-with-rachel-cherry";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2840:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="https://bamadesigner.com/">Rachel Cherry</a>, Senior Software Engineer for <a href="http://www.disneyinteractive.com/">Disney Interactive</a> and Director of <a href="https://wpcampus.org/">WPCampus</a>. Cherry describes how she got involved with WordPress, its use in higher education, the inspiration behind WPCampus, and her thoughts on accessibility both in WordPress and across the web. She also assigned everyone the following homework assignment.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Per my interview on <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> Weekly, I’ve assigned everyone <a href="https://twitter.com/hashtag/accessibility?src=hash&ref_src=twsrc%5Etfw">#accessibility</a> homework: open your website and navigate using ONLY THE KEYBOARD. Can you access all content and functionality? Can you open AND close popups? Let me know what you learned.</p>\n<p>&mdash; Rachel Cherry (@bamadesigner) <a href="https://twitter.com/bamadesigner/status/953742847831818240?ref_src=twsrc%5Etfw">January 17, 2018</a></p></blockquote>\n<p></p>\n<p>If you want to learn how WordPress is being used in higher education, tune in to<a href="https://online.wpcampus.org/"> WPCampus Online</a> Tuesday, January 30, 2018. Viewers will be able to watch sessions and interact with the speakers for free. Near the end of the show, Jacoby provides a review of the Nintendo Switch he received for Christmas.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://make.wordpress.org/core/2018/01/12/whats-new-in-gutenberg-12th-january/">Gutenberg 2.0 Released</a><br />\n<a href="https://wptavern.com/wordpress-4-9-2-patches-xss-vulnerability">WordPress 4.9.2 Patches XSS Vulnerability</a><br />\n<a href="https://wptavern.com/zac-gordon-launches-gutenberg-development-course-includes-more-than-30-videos">Zac Gordon Launches Gutenberg Development Course, Includes More Than 30 Videos</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://pippinsplugins.com/2017-in-review/">Pippin Williamson&#8217;s 2017 Year in Review</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 24th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #301:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 18 Jan 2018 02:42:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: DesktopServer 3.8.4 Includes A Gift to the Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77259";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"https://wptavern.com/desktopserver-3-8-4-includes-a-gift-to-the-community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2802:"<p><!-- wp:core/paragraph --></p>\n<p>DesktopServer <a href="https://serverpress.com/announcing-desktopserver-v3-8-4/">has released</a> version 3.8.4 of its local development software. This version includes a lot of refactored code, setting the foundation for faster updates in the future along with design-time plugins.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>One of the major changes in 3.8.4 is the use of the .dev.cc top level domain.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/quote --></p>\n<blockquote class="wp-block-quote">\n<p>Due to the latest changes with the .dev Top Level Domain and the fact that many browsers now force SSL on anything with the .dev extension, DesktopServer will now use .dev.cc as its TLD extension. This is a legitimate top level domain owned by ServerPress, LLC and will ONLY be used for local development purposes.</p>\n<p><cite><a href="https://serverpress.com/announcing-desktopserver-v3-8-4/">Release Announcement Post</a></cite></p></blockquote>\n<p><!-- /wp:core/quote --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Marc Benzakein says the domain will work no matter which local development solution is being used and that it&#x27;s a gift to the community. Other domains such as .test will continue to work as expected. </p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>Other improvements include speed optimizations for Windows installs, a Windows compatibility plugin to fix long filename problems when updating from third-party plugin repositories such as Easy Digital Downloads, and a WordPress 4.9.1 Blueprint.</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>If you use an Apple device with a Retina screen or Hi-DPI in Windows, you&#x27;ll likely appreciate the user-interface changes that are vastly improved on high resolution screens. Josh Eby does!</p>\n<p><!-- /wp:core/paragraph --></p>\n<p><!-- wp:core/embed {"url":"https://twitter.com/josheby/status/953089139439751168"} --></p>\n\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Love the new scaling fix on <a href="https://twitter.com/DesktopServer?ref_src=twsrc%5Etfw">@DesktopServer</a> 3.8.4!  Looks great on my 4K display now. Can''t wait for 3.9 to get released!</p>\n<p>&mdash; Josh Eby (@josheby) <a href="https://twitter.com/josheby/status/953089139439751168?ref_src=twsrc%5Etfw">January 16, 2018</a></p></blockquote>\n<p><br />\n\n<p><!-- /wp:core/embed --></p>\n<p><!-- wp:core/paragraph --></p>\n<p>DesktopServer 3.8.4 also includes a number of enhancements for premium service customers. To view these and other notes related to the release, check out <a href="https://serverpress.com/announcing-desktopserver-v3-8-4/">the announcement post</a>. </p>\n<p><!-- /wp:core/paragraph --></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 Jan 2018 19:12:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: WordPress 4.9.2 Patches XSS Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77438";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wptavern.com/wordpress-4-9-2-patches-xss-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1106:"<p>WordPress 4.9.2 has been released and patches a cross-site scripting vulnerability in the Flash fallback files in the MediaElement library. <a href="https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/">According to Ian Dunn</a>, the Flash files are rarely needed and have been removed from WordPress.</p>\n\n\n\n<p>If you need access to the Flash fallback files, they can be obtained using the <a href="https://wordpress.org/plugins/mediaelement-flash-fallbacks/">MediaElement Flash Fallback</a> plugin. <a href="https://opnsec.com">Enguerran Gillier</a> and <a href="https://widiz.com/">Widiz</a> are credited with responsibly disclosing the vulnerability. ﻿</p>\n\n\n\n<p>In addition to the patch, this releases fixes 21 bugs. JavaScript errors that prevented saving posts in Firefox has been fixed and switching themes will attempt to restore previous widget assignments, even if no sidebars exist.</p>\n\n\n\n<p>You can view detailed information about the changes in 4.9.2 by <a href="https://codex.wordpress.org/Version_4.9.2">reading the following Codex article</a>. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 Jan 2018 09:19:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"HeroPress: Growing WordPress in India";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2406";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:120:"https://heropress.com/essays/growing-wordpress-india/#utm_source=rss&utm_medium=rss&utm_campaign=growing-wordpress-india";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:18305:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/01/011718-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: The world will know you for the path you have chosen." /><h3>Preface</h3>\n<p>I was one of the first batch of participants in the initial version of HeroPress, which was video stories but I backed out due to multiple reasons. But, I’m glad HeroPress has survived in this current avatar, telling some really interesting stories of some real wonderful people. Few of whom I’ve had the pleasure of calling friends.</p>\n<p><a href="https://heropress.com/about/">Topher</a> has umpteen number of times asked me to write my HeroPress story and I have always either given excuses or deadlines that I never planned on meeting. The few times that I did start writing this article I went into too much of a deep dive into my life story (that I never finished it&#8230;) which is quite the rollercoaster from having failed Std.10th (high School) in English or dropping out in College to having guest lectured(teaching WordPress, of course) in one of the biggest B-schools in India OR my work experience which includes Film, TV, dealing cards to even working as an assistant to the Union Minister of India for Youth Affairs and sports… There I go again!! While that does make for a good story I should save it for when you buy me a beer.</p>\n<p>I wanted my HeroPress article to tell a story of how our WordPress Community is truly open source and always open for everyone’s participation. I think this version does the Job. Also would like to thank <a href="https://profiles.wordpress.org/andreamiddleton">Andrea Middleton </a>and <a href="https://twitter.com/adityakane?lang=en">Aditya Kane</a> who have been the most supportive of my efforts all these years. Last but not the least I’d like to thank Topher for this great space he has created and being a true friend with whom I could share some of my troubles.</p>\n<p>I am <a href="https://twitter.com/gounder?lang=en">Alexander Gounder</a>, somewhat of a nobody who become somebody not only because I tried but also because WordPress is open enough to allow it and this is my story!</p>\n<h3>Background</h3>\n<p>I was born in a lower middle class household in Mumbai, India. I am the middle kid among three siblings. My Father works as a tailor in Saudi Arabia and visits every few years. My Mother is a strong willed woman, who would fight the world for her kids which was evident when she refused to listen to doctors that my sister who suffers from Cerebral Palsy be sent to Special school and instead went pillar to post to get her to study in her normal school, even if it meant that she had to wait outside class during school hours (in case my sister had to go to the restroom) or carry my sister (who then was about 8 yrs old) around.</p>\n<blockquote><p>I live where 70%, if not more, of Mumbai’s population lives the slum or <a href="https://en.wikipedia.org/wiki/Chawl">chawls</a> in the suburbs.</p></blockquote>\n<p>So I’ve lived through the hunger for a day when I lost <u title="15 cents USD">Rs.10</u> on my way to buy bread, this was during the Gulf war when my father couldn’t send us any money for months; I’ve lived through the darkness of when there our frequent power cuts and still the power companies claim that there isn’t any load shedding in this city; I’ve lived through the annual ritual of walking in knee deep water to school, then college and now work as Monsoon water, thanks to clogged drains finds its way to the empty plot between our chawl and the main road.</p>\n<p>In terms of education I was an above average student but somehow managed to fail my Std. 10 board exams (this is a very important milestones in the Indian education system). Failure has been my stepping stone to success. I learnt computers as I had free time because I had to wait six months for joining college. I got a job at a local cyber cafe which was run by a linux enthusiast, this was my introduction to Free and Open Source. Post that I attended college (but didn’t graduate) and had many jobs (I’ve been working since I was 17, almost 50% of my lifetime).</p>\n<p>To conclude, the point I’m trying to make here is, I don’t come from a lot of money or have a lot in terms of education qualifications in spite of which I was able to do everything I did in the WordPress Community here in Mumbai and India at large.</p>\n<h3>My first WordCamp</h3>\n<p>I was an attendee at the first WordCamp in Mumbai in 2012. I was pretty excited about attending it, because only a few days before I saw a video from WordCamp San Francisco. I thought the idea of having a conference about WordPress was super cool. Though the tickets seemed a little expensive, I had just started freelancing and wasn’t attending events yet, so didn’t really have any benchmarks and thought it was worth it as this was an International/official event.</p>\n<p>My excitement was short lived when talks were sponsor pitches or mostly not about WordPress. The arrangements too weren’t as expected. During a session that was delayed by over 45 mins because the speaker and his connectivity problems (which could have been resolved by just using another machine), I lost my cool and walked out, one of the volunteers struck a conversation with me where I began by complaining about the arrangements and wanted to speak with the organizers to complain, but anger turned to sympathy when I realized that these student volunteers were in fact the event organizers, with that fact in mind even putting together this event was a great achievement. I probed further trying to understand where things were going wrong, checked what they paid for the t-shirts, it was about 30-40% higher than market price, asked if everyone paid the sponsor amount listed on the site, they said &#8211; many had bargained for upto 50% less than the published sponsor slab and some agreed with speaker slots thrown in. I asked how many tickets they sold and was informed free tickets were distributed in their colleges and to some of their partners. Partners? These were a few individuals who in the guise of helping these kids organize WordCamp had brokered deals that got sponsors discounts and/or speaker slots, free tickets (over 50) for friends / colleagues / employees, speaker slots for themselves and even their companies or brands as in kind sponsors.</p>\n<p>On the second day, things went to a confrontational stage with many (who paid to attend the event) questioning the Non-WordPress talks and long twitter threads ensued. While it is easy to blame the organizers of the WC Mumbai 2012, I think it was those few selfish individuals who weren’t part of the organizing team but tried to influence them while offering to help.</p>\n<p>This showed there was a need for the Indian WordPress Community to come together so we started a small buddypress website which was inundated with spam registrations hence replaced it with a <a href="https://www.facebook.com/groups/JaiWP/">FB group</a>.</p>\n<p>This WordPress India FB group helped us co-ordinate our first meetup in Jan 2013.</p>\n<h3>Visiting Other WordCamps</h3>\n<p>While talking to others about bringing WordPress enthusiasts from all over India, I got a sense there&#8217;s mostly mistrust among people involved in WordCamps and those attending or speaking at it. That&#8217;s when something I read on plan.wordcamp.org struck me, it said that sponsoring a WordCamp is a great way to contribute and give back. So I sponsored the next WordCamp in India, WC Baroda. When asked what is the sponsoring brand, I named our BuddyPress website. Little did I realise that this helped others see I was genuinely interested in bringing people together than make a quick buck or get publicity for myself.</p>\n<p>While the next few WordCamps were better than my experience at WC Mumbai 2012, but they shared some common threads, in terms of the people who spoke there, or how there was no clarity in terms of how speakers were selected. I had even applied to speak at a WordCamp through FB chat, because that&#8217;s how the organiser was handling it. To my disappointment I sat through a session at that WordCamp with someone from automattic presenting exactly what I had proposed, later to be told by the speaker that he didn&#8217;t intend to speak and this was a topic proposed by the organisers.</p>\n<blockquote><p>I was disgusted by how these WordCamps were filled with shady underhand deals and zero transparency. While WordCamps had some set of guidelines and expectations, these organizers knowingly or unknowingly followed none of them.</p></blockquote>\n<p>At that point of time, the idea of organising a WordCamp in Mumbai came to mind too, but then what if I would end up doing the same as what was already happening was the only thing that stopped me from applying for a WordCamp.</p>\n<h3>Moment of truth</h3>\n<p>WordPress turned 10, and there were meetups organised everywhere and with a little confusion we too managed to organise a meet-up at a coffee shop, here the attendees weren&#8217;t people who we normally meet at WordCamps but regular WordPress users who discovered the meetup through WordPress.org. They had some amazing stories to tell about their association with the software &#8211; I met Manish who 80k downloads for his theme on WordPress.org or Sachin who had been blogging since ‘98 even before WordPress.</p>\n<p>So I realised the Meetups and WordCamps weren&#8217;t really reaching most WordPress users within our own neighborhood, these users were equally passionate about WordPress and they too wanted to have real world meetups to meet others like them.</p>\n<h3>Then how did we do it</h3>\n<h4>We not I</h4>\n<p>While “I” claim to have broken WordCamps in India, I couldn’t have done it alone. Right from the beginning I started asking other to join and help out, because we were at the end of the day trying to build a community and that couldn’t be done alone. At first it was Aditya, then we had other regular members like Sahil and Vachan join in to help us organize regular meetups.</p>\n<p>Getting more stock holders allowed us to bring a different perspective to everything that we were doing. Till then people blocked others from participating as organizers or volunteers because of their own insecurities and used the line that “meetups don’t work in India”. Maybe even peddling that lie to even WordPress Foundation which was then allowing these WordCamps in the hope they would kickstart local. We went the opposite way.</p>\n<h4>Persevere</h4>\n<p>When we started off with meetups we were told “Meetups don’t work in India”, but this wasn’t true because I was already attending Startup Saturday, a monthly Meetup for startups, Quora had a meetup, Many Bloggers had meetups. So we got started. A few meetups had 10-20 people showing up while others had 2-3 but we didn’t give up on meetups because we were meeting new people which was our end goal. Aditya once remarked that even if he met one new person and discussed WordPress that would be a successful, and has resulted in us having a fairly active meetup with so many different people speaking and attending it.</p>\n<h4>Put a little thought</h4>\n<p>I became very close friends with Aditya and we spent a lot of time discussing what we were doing here. We were a good cop / bad cop team many times. From our discussion we set up some guidelines for what we stood for inclusiveness and transparency. This was before we had a WordCamp Handbook which guides you through most of the challenges you would face.</p>\n<p>We were the first WordCamp in India to publish the code of conduct and make sure it was accessible to everyone, we made repeated announcements on the run-up to the WordCamp and during the WordCamp about this Code of Conduct and how serious we were about following it. We even discussed thing amongst ourselves about handling any complaints about violations of the code of conduct, for e.g. as per Indian law you can’t disclose the identity of a person who is victim of Sexual Harassment and therefore we took care and had a system in place to take complaints and maintain the complainants privacy.</p>\n<p>When we did our first WordCamp we tried to have ticket cost as low as possible (<u title="">INR 300</u> or pay more if you’d like) to allow anyone to afford it. ( Fun fact &#8211; WC Mumbai to date has the lowest Avg. ticket price per day among WordCamps in India ).</p>\n<blockquote><p>At the first WordCamp Mumbai (2014) organized by our meetup group, I had someone come to me and tell me that he was glad to have attended and missed the last Mumbai WordCamp because the tickets were too expensive and his parents wouldn’t give him that kind of money.</p></blockquote>\n<p>This reinforced my view of never making WordCamp tickets too expensive, in fact we picked up what WC Pune 2015 did and started offering Student Discounts among other discounts to aid inclusivity.</p>\n<p>During the WordCamp preparation time all vendor information, speaker selection and accounts data was available to all organizers, post WordCamp Mumbai 2014, we published this account on our WordCamp website for everyone to review.</p>\n<h4>Focus on Basics</h4>\n<p>We want to build a community that shared information and talked about WordPress, So we focused on the basics that included having regular meetups. Even our first WordCamp was very low key in terms of the menu or swag at the event or international speakers or host of sponsors… the things that other used to say if they organized a successful WordCamp. We focused instead on getting good speakers, affordable tickets, reaching out and spreading the message about our WordCamp. Putting in a Processes / Guidelines for speakers selection and so on. We wanted to get the WordCamp right rather than find something that we could brag about, we knew if we delivered on the first we could then brag all we want. Some simple ideas helped us cut cost as we didn’t really have many sponsors For e.g. we had packed lunch packets which bought catering cost to <u title="$2.36">INR 150/day</u> from INR 350 &#8211; 450/day if we would have a simple buffet spread. We did mugs instead of tshirts because the quality ones costed us INR 80 instead of INR 150 for decent quality t-shirts.</p>\n<h4>Keeping it open</h4>\n<p>We didn’t discriminate amongst attendees or treat someone as more important than others, everyone from the organizing team was approachable and we wanted to help. The meetups too became a welcoming space, we tried to keep a check on behaviour that could harmful or make the space unwelcoming to other. We didn’t shy away from calling out sexist behaviour. We didn’t discriminate amongst people who wanted to volunteer, we have freelancers and students in our team and they are as important as someone who owns an IT firm employing several people.</p>\n<h4>What the future holds for us</h4>\n<p>Even before WordCamp Central had a rule for allowing a person to be lead organizer only for two consecutive years we had started on planning of grooming the next set of leaders so that, if we decide to become a little inactive meetups and WordCamps would continue as usual.</p>\n<p>WordCamp Mumbai in a gist:</p>\n<p>As a result of the above I can proudly say that WordCamp Mumbai is oldest actively running WordCamp/meetup group in India having had twice as many WordCamps than any other city.</p>\n<p>I would like to leave you with this song which everyone here at our meetup group can Identify with.</p>\n<div class="jetpack-video-wrapper"></div>\n<p>हमारी ही मुठ्ठी में आकाश सारा (Humari hi mutthi mein akash sara)<br />\nजब भी खुलेगी चमकेगा तारा (Jab bhi khulenga chamkenga tara)<br />\nकभी ना ढले जो, वो ही सितारा (Kabhi na dale jo, woh hi sitara)<br />\nदिशा जिस से पहचाने संसार सारा (Disha jis se pehchane sansaar sara)</p>\n<p>These lyrics roughly translate to</p>\n<p>We have the skies in our fist. Whenever it opens, a star will shine.</p>\n<p>One that never sets will be a Superstar and the world will know you for the path you have chosen.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Growing WordPress in India" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Growing%20WordPress%20in%20India&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-wordpress-india%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Growing WordPress in India" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-wordpress-india%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-wordpress-india%2F&title=Growing+WordPress+in+India" rel="nofollow" target="_blank" title="Share: Growing WordPress in India"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/growing-wordpress-india/&media=https://heropress.com/wp-content/uploads/2018/01/011718-150x150.jpg&description=Growing WordPress in India" rel="nofollow" target="_blank" title="Pin: Growing WordPress in India"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/growing-wordpress-india/" title="Growing WordPress in India"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/growing-wordpress-india/">Growing WordPress in India</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 Jan 2018 02:30:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Alexander Gounder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"Dev Blog: WordPress 4.9.2 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5376";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3953:"<p>WordPress 4.9.2 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7﻿. We strongly encourage you to update your sites immediately.</p>\n\n\n\n<p>An XSS vulnerability was discovered in the Flash fallback files in MediaElement, a library that is included with WordPress. Because the Flash files are no longer needed for most use cases, they have been removed from WordPress.</p>\n\n\n\n<p>MediaElement has released a new version that contains a fix for the bug, and <a href="https://wordpress.org/plugins/mediaelement-flash-fallbacks/">a WordPress plugin containing the fixed files</a> is available in the plugin repository.</p>\n\n\n\n<p>Thank you to the reporters of this issue for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible security disclosure</a>: <a href="https://opnsec.com">Enguerran Gillier</a> and <a href="https://widiz.com/">Widiz﻿</a>.</p>\n\n\n\n<p>21 other bugs were fixed in WordPress 4.9.2. Particularly of note were:</p>\n\n\n\n<ul>\n    <li>JavaScript errors that prevented saving posts in Firefox have been fixed.</li>\n    <li>The previous taxonomy-agnostic behavior of <code>get_category_link()</code> and <code>category_description()</code> was restored.</li>\n    <li>Switching themes will now attempt to restore previous widget assignments, even when there are no sidebars to map.<br /></li>\n</ul>\n\n\n\n<p>The Codex has <a href="https://codex.wordpress.org/Version_4.9.2">more information about all of the issues fixed in 4.9.2</a>, if you&#x27;d like to learn more.</p>\n\n\n\n<p>﻿<a href="https://wordpress.org/download/"></a><a href="https://wordpress.org/download/">Download WordPress 4.9.2</a> or venture over to Dashboard → Updates and click "Update Now." Sites that support automatic background updates are already beginning to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 4.9.2:</p>\n\n\n\n<p><a href="https://profiles.wordpress.org/0x6f0/">0x6f0</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/aduth/">Andrew Duthie</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/icaleb/">Caleb Burks</a>, <a href="https://profiles.wordpress.org/poena/">Carolina Nymark</a>, <a href="https://profiles.wordpress.org/chasewg/">chasewg</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/hardik-amipara/">Hardik Amipara</a>, <a href="https://profiles.wordpress.org/ionvv/">ionvv</a>, <a href="https://profiles.wordpress.org/jaswrks/">Jason Caldwell</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnschulz/">johnschulz</a>, <a href="https://profiles.wordpress.org/juiiee8487/">Juhi Patel</a>, <a href="https://profiles.wordpress.org/obenland/">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/markjaquith/">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/rabmalin/">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rinkuyadav999/">Rinku Y</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.﻿<strong></strong><br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Jan 2018 23:00:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Ian Dunn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Gutenberg 2.0 Released With Numerous Accessibility and Keyboard Navigation Improvements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77370";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:108:"https://wptavern.com/gutenberg-2-0-released-with-numerous-accessibility-and-keyboard-navigation-improvements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1337:"<p><a href="https://wordpress.org/plugins/gutenberg/">Gutenberg 2.0</a> is available for testing and includes a <a href="https://wordpress.org/plugins/gutenberg/#developers">changelog</a> that&#x27;s a mile long. Accessibility, keyboard navigation, and the ability to drag-and-drop multiple images to the Gallery block are among the improvements listed.</p>\n\n\n\n<p>Clicking the Publish button displays options in the sidebar rather than a drop-down menu to add polish to the publishing flow.<br /></p>\n\n\n\n<img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/01/PublishButtonSidebarOptions.png?w=627&ssl=1" />\n    Publish Button Options In The Sidebar\n\n\n\n\n<p>The Table of Contents has <a href="https://github.com/WordPress/gutenberg/pull/4288">been redesigned</a> to increase readability and copying and pasting has also significantly improved. </p>\n\n\n\n<p>Gutenberg 2.0 covers a lot of ground and the changes are too numerous to list here. However, Matias Ventura does a great job <a href="https://make.wordpress.org/core/2018/01/12/whats-new-in-gutenberg-12th-january/">listing the changes</a> with links to Pull Requests on GitHub where people can see how they were made.</p>\n\n\n\n<p>If you haven&#x27;t tried or tested <a href="https://wordpress.org/plugins/gutenberg/">Gutenberg</a>, now is a great time to check it out.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 22:48:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Matt: Thirty-Four";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47801";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:34:"https://ma.tt/2018/01/thirty-four/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2257:"<p>I am very thankful and grateful to have made it through the past year, which was a really special one personally and professionally. I learned to open myself up more to relationships, continued aspiring to be clear and direct with <a href="https://ma.tt/2017/01/rebirth-and-yellow-arrows/">yellow arrows</a>, and worked alongside some incredible people to tackle the biggest and hardest problems, whether it was getting plugin and theme support on WP.com or the start and growth of <a href="https://wordpress.org/plugins/gutenberg/">Gutenberg</a>.</p>\n\n\n\n<p>I read a <a href="https://ma.tt/2017/12/books-in-2017/">lot more books</a>, traveled 337k miles between 91 cities, spent more time in Texas, kept my health in a good balance with weight training, running, and a better diet including several months of 16/8 intermittent fasting, while still getting in some excellent meals with friends and loved ones (up to 58% of top 50 list). As I&#x27;m solidly in my mid-thirties now, and I want to continue to live by: all things in moderation. I consider what I do with WordPress and Automattic my life&#x27;s work, and hope to continue it as long as I&#x27;m useful. Some days I pinch myself.</p>\n\n\n\n<p>Thank you to all of you on this journey with me. I am imperfect but trying my darndest, and I&#x27;m lucky to have friends and colleagues doing the same.</p>\n\n\n\n<img src="https://i1.wp.com/ma.tt/files/2018/01/IMG_1232.jpg?w=604&ssl=1" />\n\n\n\n<p>Previously: <a href="https://ma.tt/2003/01/bday/">19</a>, <a href="https://ma.tt/2004/01/so-im-20/">20</a>, <a href="https://ma.tt/2005/01/hot-barely-legal-matt/">21</a>, <a href="https://ma.tt/2006/01/matt-22/">22</a>, <a href="https://ma.tt/2007/01/twenty-three/">23</a>, <a href="https://ma.tt/2008/01/twenty-four/">24</a>, <a href="https://ma.tt/2009/01/twenty-five/">25</a>, <a href="https://ma.tt/2010/01/twenty-six/">26</a>, <a href="https://ma.tt/2011/01/twenty-seven/">27</a>, <a href="https://ma.tt/2012/01/twenty-eight/">28</a>, <a href="https://ma.tt/2013/01/twenty-nine/">29</a>, <a href="https://ma.tt/2014/01/matt-3-0/">30</a>, <a href="https://ma.tt/2015/01/thirty-one/">31</a>, <a href="https://ma.tt/2016/01/thirty-two/">32</a>, and <a href="https://ma.tt/2017/01/thirty-three/">33</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 12 Jan 2018 01:55:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"HeroPress: Make It Better, Give It Back";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2396";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:116:"https://heropress.com/essays/make-better-give-back/#utm_source=rss&utm_medium=rss&utm_campaign=make-better-give-back";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:13479:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/01/011017-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Giving back makes me a better person and allows me to help others become better people." /><p>Recently, technology entrepreneur Anil Dash <a href="https://twitter.com/anildash/status/939137973240696832">tweeted the following question</a>:</p>\n<blockquote><p>Who is a person (not counting family) that opened doors for you in your career when they didn&#8217;t have to? Anytime is a good time to show gratitude!</p></blockquote>\n<p>If you need a pick-me-up, go and read through the replies and threads that start with Anil&#8217;s question. There are replies from many people who are grateful to others for an unending variety of reasons, some large and immediate, some small and indirect, some that were only realised months or years later.</p>\n<p>One commonality between many of the replies is that of selflessness. People who help others without expecting something in return. This prompted me to think about those people who&#8217;ve helped me in my career through their own selflessness, without my prompting, and without their expecting anything in return.</p>\n<p>I&#8217;m lucky that several people have helped me in this way. My WordPress story started in around 1998 when, as a fourteen year old living in a house that was one among just sixteen in a forest in the English countryside, my divorced parents saved up and bought me a Windows 98 PC for Christmas. A personal computer was a big expenditure for my parents. We weren&#8217;t able to afford an Internet connection, and at that time I don&#8217;t recall being particularly aware of the Internet. As a result, I took an interesting route into web development.</p>\n<p>Windows PCs at the time came bundled with Internet Explorer and promotional material from Internet service providers in HTML files. I wanted to find out how these pages were built, and I discovered Frontpage Express could edit the files, although often with many errors (which years later I attributed to the lack of HTML standards in use).</p>\n<blockquote><p>One day my curiosity lead me to the View Source menu in Internet Explorer. <strong>Boom</strong>. What is all this code? What do all these angle brackets do? Is this how web pages are built? Can I change this?</p></blockquote>\n<p>Naturally, everything I changed initially broke pages completely. The Undo command was my version control system. I figured out that text wrapped in <code>&lt;b&gt;</code> produced bold text. I hadn&#8217;t a clue how a <code>&lt;table&gt;</code> worked without breaking it. <code>&lt;marquee&gt;</code> ended up everywhere. Poor support for much of the markup in these files made Frontpage redundant. Looking back, I could say that the View Source menu in Internet Explorer was an important part of the progression of my career. Maybe also that of thousands of other web developers. If the inventor and early adopters of the web hadn&#8217;t been strong proponents of open data and information sharing, it&#8217;s possible that the View Source menu would never have existed and the open web would not have flourished to the extent that it has.</p>\n<p>(The topic of open access to technology, both software and hardware, can be discussed all day. Consider if Adobe Photoshop would have had the same great commercial success that it did without its widespread piracy leading to an abundance of students leaving school with years of Photoshop experience. But I digress.)</p>\n<p>I spent evenings after school hacking on HTML. My older brother Adam gave me a book titled &#8220;How to Create pages for the Web using HTML&#8221; which introduced me to the world of HTML 2.0. I learned about the available tags. I learned about inline CSS, which set me up for learning React twenty years later. And I learned that you can see the source behind any web page, hack on it, and learn from it.</p>\n<h3>Getting Online</h3>\n<p>I don&#8217;t remember the first web page that I put online when we eventually got Internet access. I doubt it was any good, but what the whole experience did do was help my curiosity grow, to which I&#8217;ve attributed much of my success so far. Being curious about a topic helps enormously when learning, self-teaching, and staying motivated.</p>\n<p>I didn&#8217;t attend university, partly due to my excellent high school grades not being followed up by any good college grades (in the UK, there’s two years of sixth form college between high school and university). In hindsight I see that I got bored of state education, and two short years flew by with no time for me to to fix that attitude. Stay in school, kids.</p>\n<p>The years after school saw me working barely above minimum wage in a supermarket by day and hacking on web projects at night. I was first introduced to WordPress by <a href="https://profiles.wordpress.org/lumpysimon/">my brother Simon</a> who built websites for customers of his printing business. After a brief period of building my own CMS (everyone&#8217;s done it, right?), I realised there were many advantages to using a free and community built CMS maintained by a relatively large number of people. I started building simple WordPress sites for myself. Along with Simon and his friend Tom, we played around with the idea of a hosted web service to make it even easier for people to publish online using WordPress. The project never went anywhere (hello wordpress.com), but the ideas we explored helped me learn a lot about WordPress.</p>\n<blockquote><p>Who is a person (not counting family) that opened doors for you in your career when they didn&#8217;t have to? Anytime is a good time to show gratitude!</p></blockquote>\n<p>I can pinpoint the start of my career with WordPress when Tom recommended me to someone who was looking for a WordPress plugin developer. That person, Conor O&#8217;Neill, became one of the people that opened a door for me in my career when they didn&#8217;t have to. Conor was pleased with the plugin work that I did for him, and selflessly passed my name onto several of his friends and acquaintances. He didn&#8217;t need to do that, it didn&#8217;t directly benefit him, but he did it because he knew it would help out his acquaintances and help me to get work.</p>\n<h3>Becoming A WordPress Consultant</h3>\n<p>I started building WordPress themes and plugins for people that Conor gave my name to. I didn&#8217;t have much experience at the time, but I had the advantage of personal recommendations. It&#8217;s difficult to overstate how valuable a personal recommendation is. All the advertising in the world can be useless when competing against a personal recommendation. If you&#8217;re looking to start or change a career, I recommend asking people to pass your name on to friends and colleagues whenever they can.</p>\n<blockquote><p>I&#8217;m one of the lucky ones that got a good start through personal recommendations, and if you can do that too then it&#8217;ll set you up well.</p></blockquote>\n<p>Conor passed my name onto a chap named Damien Mulley who was also instrumental in advancing my career by passing my name on when he didn&#8217;t need to. I owe a lot to the selflessness of Conor and Damien.</p>\n<p>Around this time I started finding bugs in WordPress (a practice that I continue to this day). Another key point in my career came when I reported a bug on the WordPress bug tracking system, and was greeted with a pleasant welcome. One of the contributors, Lloyd Budd, was kind enough to take the time to explain to me that I could fix the bug myself and submit the fix to the WordPress project. He pointed me to resources for learning Subversion and creating patches. That small act of help lead to me becoming a regular WordPress contributor, and ultimately one of the core developers. Lloyd didn&#8217;t have to use his free time to help others out, but he did, and it had long-reaching impact on my career and on the WordPress project.</p>\n<p>After a year of freelancing, I was able to get enough work that I could drop down to part time work at my supermarket job. I worked and self-taught for seventy hours a week for six months. I was afraid of leaving a stable job despite earning three times as much working as a freelance developer, but making that jump felt very scary before I made it. A combination of personal recommendations and working to get a name for myself in the WordPress sphere lead me to leave my supermarket job, freelance for a few years, become the first employee at WordPress agency <a href="https://codeforthepeople.com/">Code for the People</a>, and ultimately to join <a href="https://humanmade.com/">Human Made</a> as a senior WordPress engineer.</p>\n<h3>Giving Back</h3>\n<p>I’m lucky that I’m able to spend some of my time contributing back to WordPress, and I&#8217;ve been thinking a lot about how the principles of open source apply outside of software. I gave <a href="https://wordpress.tv/2016/05/31/john-blackbourn-rachel-mccollin-and-taco-verdonschot-lightning-sessions/">a short talk at WordCamp London in 2016</a> where I coined the phrase &#8220;<em>Make it better, give it back</em>&#8220;, which is how I interpret the fundamental principles of open source. It’s the idea of improving upon an existing process and giving it back to the community in order to embetter everyone, whether it’s through an open data project such as OpenStreetMap, a community initiative in your local area, or shared learning.</p>\n<blockquote><p>Recently I came to realise that the &#8220;<em>it</em>&#8221; in &#8220;<em>Make it better, give it back</em>&#8221; doesn&#8217;t have to refer to the primary aspect of what you&#8217;re contributing to.</p></blockquote>\n<p>Lloyd made WordPress better by writing code and giving it back, but he also made WordPress better by improving the knowledge and skills of its community members, many of whom in turn give back in a variety of ways.</p>\n<p>Giving back allows me to improve many of my own skills. It allows me to challenge myself, not only technically but also in areas such as communication, compassion, critical thinking, and time management. Giving back makes me a better person and allows me to help others become better people.</p>\n<a href="https://heropress.com/wp-content/uploads/2018/01/dsc_3097.jpg"><img class="wp-image-2398" src="https://heropress.com/wp-content/uploads/2018/01/dsc_3097-768x1024.jpg" alt="John and Francesca" width="350" height="467" /></a>John and Francesca\n<p>Giving back has advanced my professional career thanks to the technical and people skills that I learn from it and the recognition gained by my contributions. In turn this has lead to many new friends, a career in a field that I enjoy very much, and it also lead to me finding the love of my life at a WordPress contributor day.</p>\n<p>I hope that in one way or another I&#8217;ve given back to many people in the open source community. I&#8217;ve been involved with WordPress for twelve years now, and over those years I&#8217;ve given advice, pointers, and encouragement to others that might seem small or inconsequential at the time but can be just the sort of encouragement that somebody needs. The difference between not receiving a reply to a query, and receiving one which says &#8220;Thanks! That&#8217;s a good start&#8221; might mean the difference between never contributing again versus becoming a decade long community member.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Make It Better, Give It Back" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Make%20It%20Better%2C%20Give%20It%20Back&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fmake-better-give-back%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Make It Better, Give It Back" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fmake-better-give-back%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fmake-better-give-back%2F&title=Make+It+Better%2C+Give+It+Back" rel="nofollow" target="_blank" title="Share: Make It Better, Give It Back"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/make-better-give-back/&media=https://heropress.com/wp-content/uploads/2018/01/011017-150x150.jpg&description=Make It Better, Give It Back" rel="nofollow" target="_blank" title="Pin: Make It Better, Give It Back"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/make-better-give-back/" title="Make It Better, Give It Back"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/make-better-give-back/">Make It Better, Give It Back</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 10 Jan 2018 08:00:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"John Blackbourn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: Ariel Levy in Longreads";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47797";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://ma.tt/2018/01/ariel-levy-in-longreads/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:769:"<p>I had originally planned last year to write <a href="https://ma.tt/2017/12/books-in-2017/">a review of each book as I read it</a>, but The Rules Do Not Apply threw a spanner in the works. I had no idea how to write about it, much less review it. The author, <a href="https://longreads.com/2017/03/14/ariel-levy-interview/">Ariel Levy, has a great interview in Longreads from when the book came out</a>.</p>\n\n\n\n<p>Speaking of Longreads, <a href="https://longreads.com/2017/12/29/the-25-most-popular-longreads-exclusives-of-2017/">don&#x27;t forget to check out their top 25 exclusives from 2017</a>, and <a href="https://longreads.com/2017/12/11/longreads-best-of-2017-all-of-our-no-1-story-picks/">their number 1 picks overall</a>. Some amazing writing in there.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Jan 2018 00:44:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"Lorelle on WP: Vulnerability in phpMyAdmin Requires Immediate Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:37:"http://lorelle.wordpress.com/?p=14409";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"https://lorelle.wordpress.com/2018/01/06/vulnerability-in-phpmyadmin-requires-immediate-patch/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4273:"<p>A <a href="http://www.itprotoday.com/patch-management/critical-csrf-security-vulnerability-phpmyadmin-database-tool-patched" title="Critical CSRF Vulnerability in phpMyAdmin Database Tool Patched | IT Pro">critical CSRF Vulnerability in phpMyAdmin Database administration tool</a> has been found and a <a href="https://www.phpmyadmin.net/security/PMASA-2017-9/" title="phpMyAdmin - Security - PMASA-2017-9">patch is available</a> for all computers and servers running the MySQL database. </p>\n<p>Does this include you?</p>\n<p>If you are using WordPress, yes it does. </p>\n<p>Contact your web host to ensure phpMyAdmin is updated immediately. </p>\n<p>If you are self-hosted and manage your own server, update phpMyAdmin immediately. </p>\n<p>If you are using WordPress or phpMyAdmin and MySQL on your computer through <a href="http://www.wampserver.com/en/" title="WAMP">WAMP</a>, <a href="http://www.mamp.info/en/index.html" title="MAMP">MAMP</a>, <a href="http://www.apachefriends.org/en/xampp.html" title="XAMPP">XAMPP</a>, <a href="http://www.instantwp.com/" title="Instant WordPress">Instant WordPress</a>, <a href="http://serverpress.com/products/desktopserver/" title="DesktopServer">DesktopServer</a>, <a href="http://bitnami.org/stack/wordpress" title="BitNami">BitNami</a> or any of the other ways you can install WordPress on your computer or a stick (USB), update phpMyAdmin by using the patch or check the install technique&#8217;s site for updates. </p>\n<p><strong>If you are using WordPress.com, don&#8217;t worry.</strong> This does not apply to you or your site. </p>\n<p>The flaw affects phpMyAdmin versions 4.7.x prior to 4.7.7. Hopefully, your server/web host company has been updating phpMyAdmin all along and you don&#8217;t need to worry, but even though this is a medium security vulnerability, it is your responsibility as a site owner and administrator to ensure that your site is safe. Don&#8217;t just rely on GoDaddy, Dreamhost, or whatever hosting service you use to take care of these things for you. Sometimes they are on top of these before an announcement is made public. Other times, they are clueless and require customer intervention and nagging. </p>\n<p>Now, what is phpMyAdmin?</p>\n<p>MySQL is an open source database program, and <a href="https://www.phpmyadmin.net/" title="phpMyAdmin">phpMyAdmin</a> is the free, open source tool that makes the administration and use of MySQL easier to manage. <em>It is not a database. It is a database manager.</em> You can <a href="https://lorelle.wordpress.com/2014/08/10/find-search-replace-and-delete-in-the-wordpress-database/" title="Find, Search, Replace, and Delete in the WordPress Database « Lorelle on WordPress">easily search and replace data</a> in the database, make changes, and do other maintenance and utility tasks in the database.</p>\n<p>Every installation of WordPress requires PHP and MySQL along with a variety of other web-based programming packages and software. Most installations by web hosts and portable versions of WordPress add phpMyAdmin to manage the WordPress site. It is not required for WordPress to work, but don&#8217;t assume that it is or isn&#8217;t installed. CHECK. </p>\n<p>To find out if phpMyAdmin is installed on your site:</p>\n<ol>\n<li>Check with your web host and ask. Don&#8217;t expect their customer service staff to know for sure. Make them check your account and verify whether or not it is installed, and if they&#8217;ve updated. Push them for a specific answer.</li>\n<li>Check the site admin interface (cPanel, Plesk, etc.) to see if it is installed.</li>\n<li>Log into your site through secure FTP into the root (if you have access) and look for the installation at <em>/usr/share/phpmyadmin</code> or <code>localhost/phpmyadmin</code>. Unfortunately, it could be anywhere depending upon the installation as these are virtual folders, not folders found on your computer, so it must be assigned to a location.</li>\n<li>If running a portable installation of MySQL and/or WordPress, follow the instructions for that tool and download and install all patches to ensure phpMyAdmin is updated to the latest secure version.</li>\n</ol>\n<div class="sig">\n<p><img src="https://lorelle.files.wordpress.com/2006/08/sig.gif" alt="" /></p>\n<hr /> </div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 06 Jan 2018 16:55:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Lorelle VanFossen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"WPTavern: Zac Gordon Launches Gutenberg Development Course, Includes More Than 30 Videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77285";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"https://wptavern.com/zac-gordon-launches-gutenberg-development-course-includes-more-than-30-videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2756:"<p><a href="https://zacgordon.com/">Zac Gordon</a>, a technology educator, has released his <a href="http://gutenberg.courses/">Gutenberg Development course</a>. The course is $79 but is available for $49 using the coupon code <strong>earlyadopter</strong>.</p>\n\n\n\n<p>Gordon says the course is aimed at developers who want to update their themes, plugins, shortcodes, etc. to work with Gutenberg and take advantage of blocks. <br /></p>\n\n\n\n<p>"There is also some content I am adding geared towards theme developers, but honestly there is not much to that," Gordon said. "I think plugin developers will fill a lot of the needs of theme developers and help prevent them from having to build too many custom blocks. </p>\n\n\n\n<p>"Also, in my opinion, blocks belong in plugins, so maybe some theme developers will migrate into plugin development through working with blocks."</p>\n\n\n\n<p>The course includes more than 30 videos, a dozen example blocks, access to support forums, and the community run Slack channel. It covers how Gutenberg works, how to extend and customize it, and using a modern JavaScript development approach.</p>\n\n\n\n<p>Gordon learned quite a few things about Gutenberg while creating the course. "Specifically, I learned Gutenberg is really just React under the hood, and then the more traditional WordPress PHP under that," he said.</p>\n\n\n\n<p>"Digging deeper into the source attributes system that Gutenberg has to keep track of dynamic data was interesting. Also, there are far more possibilities with server-side code hooking into blocks than I thought ahead of time. I also came to the opinion that I&#x27;m not sure why someone would build a block in anything other than React, so I&#x27;m interested to see what common practices evolve."</p>\n\n\n\n<p>Creating the course has allowed Gordon to dive deep into Gutenberg. So does he think it&#x27;s a suitable replacement for the editor? <br /></p>\n\n\n\n<p>"I think most users will feel Gutenberg is an improvement of the editing experience," he responded. "We are definitely moving in the right direction. Ironically perhaps, I still like site and page builder plugins when editing or creating content in WordPress."</p>\n\n\n\n<p>Gutenberg is still in a high state of flux with rapid development. According to Gordon, if there is one thing developers should know about Gutenberg, it&#x27;s that learning JavaScript deeply will pay off.<br /></p>\n\n\n\n<p>"Matt Mullenweg was right when he said &#x27;<a href="https://www.youtube.com/watch?v=KrZx4IY1IgU">Learn JavaScript Deeply</a>&#x27;," Gordon said. "In terms of Gutenberg, that means a foundation with ES+, JSX/React, and webpack/babel/etc. You can learn as you go, but we are definitely moving from the time of learning to a time of doing."</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 05 Jan 2018 23:32:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Matt: Xerox Alto Zero-Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47788";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://ma.tt/2018/01/xerox-alto-zero-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2208:"<p>Next to the <a href="https://www.schneier.com/blog/archives/2018/01/spectre_and_mel.html">very real news of the Spectre and Meltdown CPU issues</a>, it was lovely to come across <a href="http://www.righto.com/2018/01/xerox-alto-zero-day-cracking-disk.html">Ken Shirriff&#x27;s story of getting past password protection on some old Xerox Alta disk packs from the 1970s</a>.</p>\n\n\n\n<p>As further proof for why 2018 is going to be the year of blogging, two of the comments are from people who actually know about the old disks!</p>\n\n\n\n<blockquote class="wp-block-quote">\n    <p>"I designed chips at PARC as a summer intern. You have a couple of disks from Doug Fairbairn, who was also in Lynn Conway&#x27;s group."</p>\n</blockquote>\n\n\n\n<p>and</p>\n\n\n\n<blockquote class="wp-block-quote">\n    <p>I&#x27;m flabbergasted. That&#x27;s <em>my</em> Alto disk you broke into!<br />><br /><br /><br /><br /><br />The APL stuff is surely related to some work I did with Leo Guibas, showing why lazy evaluation would be a really good idea for implementing APL: see <a href="https://dl.acm.org/citation.cfm?id=512761">Compilation and delayed evaluation in APL</a>, published January 1978. (That paper gives me an enviable Erdős number of 3, since Leo is a 2.) I&#x27;m sure it&#x27;s not a complete APL implementation, just a proof of concept. It happens that my very first part-time job at PARC, in 1973, involved writing decision analysis software <em>in</em> APL &#8212; on a timesharing system!<br />><br /><br /><br /><br /><br />Given the AATFDAFD hint, I&#x27;d guess the real password is ADDATADFAD. This derives from a project I did with Jef Raskin at UCSD in 1974. (He mentioned it in <a href="https://web.stanford.edu/dept/SUL/sites/mac/primary/interviews/raskin/trans.html">this interview</a>.) The Data General Nova we were working with produced some garbled message with ADDATADFAD where it should have said ADDITIONAL, and it was a running joke ever after. Strange, the things that occupy some brain cells for over 40 years.<br />><br /><br /><br /><br /><br />Thanks for an amusing blast from the past.<br />><br /><br /><br /><br /><br />&#8212; Doug Wyatt (Xerox PARC 1973-1994)</p>\n</blockquote>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 05 Jan 2018 15:37:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Matt: Morten on Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47780";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://ma.tt/2018/01/morten-on-gutenberg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:211:"<p>Morten Rand-Hendriksen&#x27;s talk and demo on Gutenberg from WordCamp US is an excellent overview of where it is, where it could go, and some VR stuff thrown in there for fun. Definitely worth the watch.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Jan 2018 20:54:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: WPWeekly Episode 300 – Interview with Matt ‘Gutenbeard’ Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77276&preview=true&preview_id=77276";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/wpweekly-episode-300-interview-with-matt-gutenbeard-mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1492:"<p>In this the 300th episode, <a href="http://jjj.me">John James Jacoby</a> and I interview <a href="https://ma.tt/">Matt &#8216;Gutenbeard&#8217; Mullenweg</a>, co-creator of the WordPress project. We discuss a range of topics including, the somewhat controversial poetry reading that included a curse word prior to the State of the Word, the WordPress Foundation increasing its range of funding, and of course, Gutenberg.</p>\n<p>One of the big takeaways from this interview is learning that Gutenberg will not arrive at the flick of a switch. There will be a transition period and a considerable amount of effort to make it as smooth as possible. Unlike episode 296, Mullenweg&#8217;s internet is fantastic and we didn&#8217;t experience any audio issues. A transcription of this interview will be published in a few days.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 10th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #300:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Jan 2018 03:55:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: A Collection of Gutenberg Conversations, Resources, and Videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wptavern.com/a-collection-of-gutenberg-conversations-resources-and-videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8714:"<p>Since the conclusion of WordCamp US in early December, there have been a number of Gutenberg related items published to the web.</p>\n\n\n\n<p>The following is a collection of items related to Gutenberg that I came across throughout December. Feel free to add to this list in the comments below.</p>\n\n\n\n<h2>Resources</h2>\n\n\n\n<p><a href="https://gettingreadyforgutenberg.com/">Getting Ready for Gutenberg</a> is a community-run initiative to help users and developers prepare for Gutenberg&#x27;s inclusion in core. </p>\n\n\n\n<p>GitHub repo filled with <a href="https://github.com/WordPress/gutenberg-examples">Gutenberg example blocks.</a></p>\n\n\n\n<p>Although it was published in August of last year, WordImpress has a good guide on <a href="https://wordimpress.com/a-pot-stirrer-amongst-chefs-contributing-to-gutenberg-without-code/">how to contribute to Gutenberg without code</a>.</p>\n\n\n\n<p>Rich Tabor explains <a href="https://richtabor.com/add-wordpress-theme-styles-to-gutenberg/">how to add WordPress theme styles</a> to Gutenberg. He&#x27;s also created a <a href="https://wordpress.org/plugins/social-sharing-block-gutenberg/">Gutenberg Social Sharing Block</a> plugin. <br /></p>\n\n\n\n<p>Human Made <a href="https://hmn.md/white-papers/gutenberg-the-new-wordpress-editor/">published a Gutenberg White Paper</a> that introduces people to the project, goes over a number of blocks, and provides advice on how agencies can prepare for the transition. </p>\n\n\n\n<p><a href="https://frontenberg.tomjn.com/">Frontenberg</a> is a new project by <a href="https://twitter.com/Tarendai/status/943531422861660169">Tom Nowell </a>that brings Gutenberg to the front end. This allows people to try Gutenberg without logging into a site or installing a plugin.</p>\n\n\n\n<p>Ben Gilbanks has <a href="https://github.com/BinaryMoon/granule/commit/777cd2903c1e4a8ebfc6060e86a7f7a4ef2387da">added basic support</a> for Gutenberg to his Granule starter theme.</p>\n\n\n\n<p>Andrew Taylor <a href="https://github.com/ataylorme/gutenberg-codepen-embed">created a Gutenberg block</a> that enables embedding Pens from CodePen.</p>\n\n\n\n<p>Advanced Custom Fields <a href="https://www.advancedcustomfields.com/blog/acf-year-review-2017/">announced</a> it will focus on making ACF compatible with Gutenberg in 2018. </p>\n\n\n\n<p>Meta Box has <a href="https://metabox.io/meta-box-2017-year-review-whats-next-2018/">also announced</a> its Gutenberg compatibility plans. </p>\n\n\n\n<p>John Hawkins published a good post on the WebDevStudios blog on <a href="https://webdevstudios.com/2018/01/02/existing-content-affected-wordpress-gutenberg/">how existing content will be affected by Gutenberg</a>.﻿ </p>\n\n\n\n<h2>Conversations</h2>\n\n\n\n<p>Kevin Hoffman <a href="https://github.com/WordPress/gutenberg/issues/3902">started a conversation</a> on how plugin conflicts can be handled and communicated.</p>\n\n\n\n<p>Bridget Willard shared her concerns with the <a href="https://bridgetwillard.com/economic-impact-timeline-gutenberg-rollout/">economic impact and timeline</a> of Gutenberg&#x27;s roll out. She also <a href="https://github.com/WordPress/gutenberg/issues/3926">created an issue</a> on GitHub.</p>\n\n\n\n<p>Amanda Rush <a href="https://www.customerservant.com/thoughts-gutenberg-wordpress-tomorrow/">published her thoughts and concerns</a> related to Gutenberg&#x27;s Accessibility. </p>\n\n\n\n<p>Morten Rand-Hendrisken published a series of articles on LinkedIn covering <a href="https://www.linkedin.com/pulse/wordpress-changing-here-3-things-you-need-know-morten-rand-hendriksen/">things you need to know</a> about Gutenberg and the <a href="https://www.linkedin.com/pulse/gutenberg-future-wordpress-conditions-success-morten-rand-hendriksen/?published=t">conditions for its success.</a></p>\n\n\n\n<p>Scott Kingsley Clark, of the PODS framework plugin, announced they&#x27;re doing some cool things in the next release specifically for Gutenberg. </p>\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">We’re doing some cool stuff in this next <a href="https://twitter.com/podsframework?ref_src=twsrc%5Etfw">@podsframework</a> release for Gutenberg specifically. Lots to do, but I feel like there will be cases for meta boxes and cases for blocks. We’ll have a template editor too, which will be powered by Gutenberg itself <a href="https://twitter.com/hashtag/gutenception?src=hash&ref_src=twsrc%5Etfw">#gutenception</a></p>&mdash; Scott Kingsley Clark (@scottkclark) <a href="https://twitter.com/scottkclark/status/940348072151977984?ref_src=twsrc%5Etfw">December 11, 2017</a></blockquote>\n\n\n\n\n<p>Freemius takes a look at <a href="https://freemius.com/blog/gutenberg-commercial-wordpress-products/">what Gutenberg means</a> for the future of commercial WordPress products. The post includes quotes from Beaver Builder, Elementor, and Visual Composer. </p>\n\n\n\n<p>In <a href="https://wptavern.com/wpweekly-episode-297-wordcamp-us-2017-recap">episode 297 of WordPress Weekly</a>, Morten Rand-Hendriksen joined John James Jacoby and I in a detailed conversation about Gutenberg, its potential impacts, and the idea of forking WordPress.</p>\n\n\n\n<p>GiveWP is <a href="https://github.com/WordImpress/Give/issues/2456#issuecomment-351317017">opening up its design process</a> for how its product will interface with Gutenberg. </p>\n\n\n\n<p>Beaver Builder<a href="https://www.wpbeaverbuilder.com/page-builders-gutenberg-world/?utm_content=buffer12b34&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer"> takes a look</a> at Page Builders in a Gutenberg World, the future of WordPress, and how its product will embrace compatibility with Gutenberg. </p>\n\n\n\n<p>Eric Mann on <a href="https://ttmm.io/tech/gutenberg-and-the-road-ahead/">Gutenberg and the road ahead</a>. Mann supports the idea of soft-forking WordPress to provide time and help for those who can&#x27;t immediately update to 5.0. </p>\n\n\n\n<p>Help contribute to Gutenberg by <a href="https://make.wordpress.org/test/2017/12/15/help-us-analyse-the-wcus-gutenberg-usability-videos/">processing the usability tests</a> from WordCamp US 2017. </p>\n\n\n\n<p>Michael Hebenstreit <a href="https://arrayinternet.com/blog/cost-gutenberg-transition-small-wordpress-businesses/">details the potential costs</a> for small WordPress businesses and independent developers to transition to Gutenberg. </p>\n\n\n\n<p>WordCamp Miami 2018 is having a <a href="https://2018.miami.wordcamp.org/2017/12/19/developer-workshop-announcement-future-of-wordpress/">developer workshop</a> focused on Gutenberg.</p>\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">I''m seeing talk of how clients will be lost and users will leave <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> when <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> drops. As a former freelancer, in-house developer, agency designer, custom theme developer, and now plugin developer, here''s a practical look at how Gutenberg affects each.</p>&mdash; Kevin W. Hoffman (@kevinwhoffman) <a href="https://twitter.com/kevinwhoffman/status/943871967349886977?ref_src=twsrc%5Etfw">December 21, 2017</a></blockquote>\n\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">I think we will look back at 2017 and see it as the year the <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> project started to fracture. As much as the community desperately wants to see WordPress as an enterprise CMS, projects like <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> show it is anything but.</p>&mdash; Ben Furfie (@frontendben) <a href="https://twitter.com/frontendben/status/946296693926047744?ref_src=twsrc%5Etfw">December 28, 2017</a></blockquote>\n\n\n\n\n<p>Tammie Lister <a href="https://tam.blog/2017/12/gutenberg-inspired-redesign/">shared her experience</a> redesigning her site using the <a href="https://github.com/WordPress/gutenberg-theme">Gutenberg theme</a> as a base. </p>\n\n\n\n<p>WP4Good explains how they&#x27;re <a href="https://wp4good.org/getting-ready-for-gutenberg/">preparing for Gutenberg</a>. </p>\n\n\n\n<h2>Videos</h2>\n\n\n\n<p>Riad Benguella <a href="https://riad.blog/2017/12/11/with-gutenberg-what-happens-to-my-custom-fields/">published a visual example</a> that shows Meta Boxes mostly work in Gutenberg. Benguella created a sample plugin called Gutenberg Custom Fields that provides a similar user experience to existing Custom Fields plugins.</p>\n\n\n\n<p>A live demo of Gutenberg during the 2017 State of the Word. </p>\n\n\n\n\n    \n\n\n\n\n<p>Gutenberg and the WordPress of Tomorrow by Morten Rand-Hendriksen</p>\n\n\n\n\n    <div class="embed-wrap"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jan 2018 21:04:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:11:"\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"HeroPress: A Review Of HeroPress in 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://heropress.com/?p=2387";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:119:"https://heropress.com/a-review-of-heropress-2017/#utm_source=rss&utm_medium=rss&utm_campaign=a-review-of-heropress-2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9442:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/01/010318-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: HeroPress is something WordPress people do for themselves. The world simply gets to watch." /><p><strong>FIRST</strong>: please leave a comment if HeroPress has inspired or impacted you this year. I&#8217;ve love for you to be a part of this post.</p>\n<p>With that out of the way, another year of HeroPress has come and gone. HeroPress is still young enough that we can&#8217;t really see multi-year trends, but I still find it interesting to look at them and try to guess things.  In this post we&#8217;ll look at some stats, some things I tried that didn&#8217;t work, some things that did work, and some dreams for the future.</p>\n<h3>Statistics</h3>\n<h4>Diversity</h4>\n<p>Diversity has always been important to me.  In 2015 and 2016 I had more men than women, by a pretty wide margin, and that bothered me.  In 2017 I&#8217;m happy to say we had 32 women and 21 men. I didn&#8217;t work SUPER hard at that, it was just something I kind of kept in my head when I was looking for new folks.</p>\n<p>We also had great geographical diversity in our contributors, representing 26 different countries.</p>\n<table>\n<tbody>\n<tr>\n<th>Country</th>\n<th>No. of Essays</th>\n</tr>\n<tr>\n<td>Bangladesh</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Cameroon</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Croatia</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Finland</td>\n<td>2</td>\n</tr>\n<tr>\n<td>France</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Germany</td>\n<td>2</td>\n</tr>\n<tr>\n<td>India</td>\n<td>7</td>\n</tr>\n<tr>\n<td>Italy</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Jamaica</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Nepal</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Netherlands</td>\n<td>2</td>\n</tr>\n<tr>\n<td>Nigeria</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Norway</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Poland</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Romania</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Russia</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Scotland</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Serbia</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Somalia</td>\n<td>1</td>\n</tr>\n<tr>\n<td>South Africa</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Spain</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Sweden</td>\n<td>1</td>\n</tr>\n<tr>\n<td>Turkey</td>\n<td>1</td>\n</tr>\n<tr>\n<td>United Kingdom</td>\n<td>1</td>\n</tr>\n<tr>\n<td>United States</td>\n<td>13</td>\n</tr>\n<tr>\n<td>Yemen</td>\n<td>1</td>\n</tr>\n</tbody>\n</table>\n<p>The US and India had far more than any other country, which has been the trend since we started, but the US has far fewer in 2017 than 2016.</p>\n<h4>Readers</h4>\n<p>We had traffic from 175 countries this year.</p>\n<p><img class="aligncenter size-full wp-image-2388" src="https://heropress.com/wp-content/uploads/2018/01/country_traffic.png" alt="World map showing HeroPress visitors" width="951" height="547" /></p>\n<p>That said, HeroPress saw less traffic overall in 2017 than in 2016.</p>\n<p><img class="aligncenter size-full wp-image-2389" src="https://heropress.com/wp-content/uploads/2018/01/heropress_stats.png" alt="Bar chart showing HeroPress stats" width="692" height="282" /></p>\n<h4>The Important Stuff</h4>\n<p>As fun as stats are, it&#8217;s been pointed out to me many times that they&#8217;re meaningless. Someone asked me recently how I define success for HeroPress, and the answer was that at least one person is impacted for the better. The interesting twist to that is the hierarchy of people impacted positively by HeroPress.  It goes like this:</p>\n<p><strong>Topher</strong>: Because he gets to see them all, AND behind the scenes. It&#8217;s heady stuff.</p>\n<p><strong>Contributors themselves</strong>: MANY people have told me that writing their story changed their life. The simple act of processing things from the past, and getting them out there, and being vulnerable is powerful.</p>\n<p><strong>Readers</strong>: Lot&#8217;s of people tell me it&#8217;s inspiring.</p>\n<p>What we learn from the above information is that HeroPress would be a success if we had zero readers. HeroPress is something WordPress people do for themselves. The world simply gets to watch.</p>\n<h3>Experiments</h3>\n<h4>The Scholarship</h4>\n<p>Last spring the folks from WPShout approached me about working together to offer a scholarship.  They would offer the actual scholarship, and we would manage getting applicants and deciding who won.</p>\n<p>It was a huge success.  We had tons of traffic, many great applicants, and the winners did great things with their scholarships.  We&#8217;d love to do something like that again, so if you&#8217;re interested, drop us a note.</p>\n<h4>Commercial Support</h4>\n<p>This changed a bit in 2017. Most of the year was sponsored by Gravity Forms, which was great. That ended with only a few weeks left in the year, and I was surprised to find that there were a number of organizations that were interested in sponsoring a single week. That worked quite well, and I&#8217;m interested in looking into that more.</p>\n<p>At WordCamp US I spoke to an organization that was interested in sponsoring an entire quarter, which would be a first.  It hasn&#8217;t happened yet, but I&#8217;m also looking into that some more.</p>\n<h4>Donations</h4>\n<p>This didn&#8217;t really work out. I put up the donation form at the request of a few people that wanted to give. Those people gave, and a few more, but after the third day or so there were no more. There could be many reasons, but I&#8217;m not too concerned. I&#8217;ll probably take the form down, and if I ask for donations again it&#8217;ll be a Public Radio style press-a-thon for a week or something. Lots of flash, and then it&#8217;s gone for a year.</p>\n<h3>Thanks</h3>\n<p>As always happens, I got some great advice this year and lots of donated services and software.</p>\n<p>Many thanks to Tine Haugen from XWP for her ongoing input from a Larger Company perspective.</p>\n<p>Thanks to <a href="https://pagely.com/">Pagely</a> for hosting HeroPress.</p>\n<p>Thanks to these commercial plugin folk that donated licenses:</p>\n<ul>\n<li>Analytify &#8211; Google Analytics Dashboard</li>\n<li>Give &#8211; Donation Plugin</li>\n<li>Make Plus</li>\n<li>Maps Builder Pro</li>\n<li>Ninja Forms</li>\n<li>Postmatic &amp; Postmatic Labs</li>\n</ul>\n<p>Thanks to these wonderful software developers who&#8217;ve released there work to the world for free:</p>\n<ul>\n<li>Akismet Anti-Spam</li>\n<li>Blog Time</li>\n<li>Jetpack by WordPress.com</li>\n<li>Post Type Archive Descriptions</li>\n<li>Public Post Preview</li>\n<li>Really Simple Series</li>\n<li>rtSocial</li>\n<li>Simple 301 Redirects</li>\n<li>Simply Exclude</li>\n<li>Widget Logic</li>\n<li>WP Custom Login Page Logo</li>\n<li>WP Retina 2x</li>\n<li>Yoast SEO</li>\n</ul>\n<p>Thanks to 2017&#8217;s commercial supporters:</p>\n<ul>\n<li><a href="https://eventespresso.com/">Event Espresso</a></li>\n<li><a href="https://www.gowp.com/">GoWP</a></li>\n<li><a href="https://www.gravityforms.com/">Gravity Forms</a></li>\n<li><a href="https://rtcamp.com/">rtCamp</a></li>\n</ul>\n<p><strong>MOST IMPORTANTLY</strong></p>\n<p>Thanks to our contributors.  Without people willing to share of themselves, tell us their stories, make themselves vulnerable, HeroPress would not exist. Thank you SO SO much, all of you who&#8217;ve written.</p>\n<h3>Your Turn</h3>\n<p>As I mentioned at the top of the post, the rest of the post is to be written by you.  How has HeroPress impacted you this year? What value is there besides numbers and charts and graphs?</p>\n<p>Please leave a comment.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: A Review Of HeroPress in 2017" class="rtsocial-twitter-button" href="https://twitter.com/share?text=A%20Review%20Of%20HeroPress%20in%202017&via=heropress&url=https%3A%2F%2Fheropress.com%2Fa-review-of-heropress-2017%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: A Review Of HeroPress in 2017" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fa-review-of-heropress-2017%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fa-review-of-heropress-2017%2F&title=A+Review+Of+HeroPress+in+2017" rel="nofollow" target="_blank" title="Share: A Review Of HeroPress in 2017"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/a-review-of-heropress-2017/&media=https://heropress.com/wp-content/uploads/2018/01/010318-150x150.jpg&description=A Review Of HeroPress in 2017" rel="nofollow" target="_blank" title="Pin: A Review Of HeroPress in 2017"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/a-review-of-heropress-2017/" title="A Review Of HeroPress in 2017"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/a-review-of-heropress-2017/">A Review Of HeroPress in 2017</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jan 2018 17:49:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Dev Blog: The Month in WordPress: December 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5424";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2018/01/the-month-in-wordpress-december-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4742:"<p>Activity slowed down in December in the WordPress community, particularly in the last two weeks. However, the month started off with a big event and work pushed forward in a number of key areas of the project. Read on to find out more about what transpired in the WordPress community as 2017 came to a close.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordCamp US 2017 Brings the Community Together</h2>\n\n\n\n<p>The latest edition of <a href="https://2017.us.wordcamp.org/">WordCamp US</a> took place last month in Nashville on December 1-3. The event brought together over 1,400 WordPress enthusiasts from around the world, fostering a deeper, more engaged global community.</p>\n\n\n\n<p>While attending a WordCamp is always a unique experience, you can catch up on <a href="https://wordpress.tv/event/wordcamp-us-2017/">the sessions on WordPress.tv</a> and look through <a href="https://www.facebook.com/pg/WordCampUSA/photos/?tab=albums">the event photos on Facebook</a> to get a feel for how it all happened. Of course, <a href="https://wordpress.tv/2017/12/04/matt-mullenweg-state-of-the-word-2017/">Matt Mullenweg’s State of the Word</a> talk is always one of the highlights at this event.</p>\n\n\n\n<p>The next WordCamp US will be held in Nashville again in 2018, but if you would like to see it hosted in your city in 2019 and 2020, then <a href="https://make.wordpress.org/community/2017/12/19/apply-to-host-wordcamp-us-2019-2020/">you have until February 2 to apply</a>.</p>\n\n\n\n<h2>WordPress User Survey Data Is Published</h2>\n\n\n\n<p>Over the last few years, tens of thousands of WordPress users all over the world have filled out the annual WordPress user survey. The results of that survey are used to improve the WordPress project, but that data has mostly remained private. This has changed now and <a href="https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/">the results from the last three surveys are now publicly available</a> for everyone to analyze.</p>\n\n\n\n<p>The data will be useful to anyone involved in WordPress since it provides a detailed look at who uses WordPress and what they do with it — information that can help inform product development decisions across the board.</p>\n\n\n\n<h2>New WordPress.org Team for the Tide Project</h2>\n\n\n\n<p>As announced at WordCamp US, <a href="https://make.wordpress.org/tide/2017/12/02/new-home/">the Tide project is being brought under the WordPress.org umbrella</a> to be managed and developed by the community.</p>\n\n\n\n<p>Tide is a series of automated tests run against every plugin and theme in the directory to help WordPress users make informed decisions about the plugins and themes that they choose to install.</p>\n\n\n\n<p>To get involved in developing Tide, jump into the #tide channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/tide/">the Tide team blog</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>If you’re following the development of Gutenberg, or if you want a primer on where it’s headed, then <a href="https://wordpress.tv/2017/12/10/morten-rand-hendriksen-gutenberg-and-the-wordpress-of-tomorrow/">Morten Rand-Hendriksen’s talk from WordCamp US</a> is a must watch.</li>\n    <li>The annual surveys for WordPress <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-member-survey">meetup members</a> and <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-organizer-survey">meetup organizers</a> are available for people to fill out — if you’re involved in or attend your local meetup group then be sure to complete those.</li>\n    <li>10up has <a href="https://distributorplugin.com/">a brand new plugin in beta</a> that will assist with powerful and flexible content publishing and syndication across WordPress sites.</li>\n    <li><a href="https://make.wordpress.org/community/2017/12/07/should-we-change-the-default-wordcamp-theme-to-campsite-2017/">The Community Team is exploring a move</a> to make the recently developed CampSite theme the default theme for all new WordCamp websites. This is the theme that was developed and employed for <a href="https://2017.europe.wordcamp.org">WordCamp Europe 2017</a>.</li>\n    <li>The team working on the multisite features of WordPress Core has recently published <a href="https://make.wordpress.org/core/2017/12/19/multisite-roadmap-published/">their planned roadmap for development</a>.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jan 2018 10:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Matt: Books in 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47744";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:36:"https://ma.tt/2017/12/books-in-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4679:"<p>Here&#x27;s what I ended up reading this year, in roughly chronological finishing order. (I usually have 3-4 books going on at once.)</p>\n\n\n\n<ul>\n    <li><a href="https://www.amazon.com/dp/B01HSMRWNU/?tag=photomatt08-20">Tools of Titans</a> by Tim Ferriss.</li>\n    <li><a href="https://www.amazon.com/dp/B00JSRQSJS/?tag=photomatt08-20">The Art of Stillness</a> by Pico Ayer.</li>\n    <li><a href="https://www.amazon.com/dp/B0162WIRKY/?tag=photomatt08-20">Out of Your Mind</a> by Alan Watts (audiobook, really a series of lectures).</li>\n    <li><a href="https://www.amazon.com/dp/B007V3FHRU/?tag=photomatt08-20">Book of Five Rings</a> by Miyamoto Mushashi (audiobook).</li>\n    <li><a href="https://smile.amazon.com/dp/B01KKNM8UQ/?tag=photomatt08-20">Do Not Say We Have Nothing</a> by Madeleine Thien.</li>\n    <li><a href="https://www.amazon.com/dp/B01912QC5Y/?tag=photomatt08-20">The Best American Short Stories 2016</a> edited by Junot Diaz.</li>\n    <li><a href="https://www.amazon.com/dp/B00CVNLK3K/?tag=photomatt08-20">Feynman</a> by Jim Ottaviani.</li>\n    <li><a href="https://www.amazon.com/dp/8129137704/?tag=photomatt08-20">My Gita</a> by Devdutt Pattanaik.</li>\n    <li><a href="https://www.amazon.com/dp/B00DTO6LZ2/?tag=photomatt08-20">From Plato to Post-modernism: Understanding the Essence of Literature and the Role of the Author</a> by Louis Markos (another lecture series).</li>\n    <li><a href="https://www.amazon.com/dp/B01LZOV6R3/?tag=photomatt08-20">The Rules Do Not Apply</a> by Ariel Levy.</li>\n    <li><a href="https://www.amazon.com/dp/B01BSNQJDY/?tag=photomatt08-20">The Story of a Brief Marriage</a> by Anuk Arudpragasam.</li>\n    <li><a href="https://www.amazon.com/dp/B00DPM7TIG/?tag=photomatt08-20">All the Light We Cannot See</a> by Anthony Doerr.</li>\n    <li><a href="https://www.amazon.com/dp/B01NAG34EH/?tag=photomatt08-20">Ikigai: The Japanese Secret to a Long and Happy Life</a> by Héctor García and Francesc Miralles.</li>\n    <li><a href="https://www.amazon.com/dp/B00V3CE1M2/?tag=photomatt08-20">When Hitler Took Cocaine and Lenin Lost His Brain: History&#x27;s Unknown Chapters</a> by Giles Milton.</li>\n    <li><a href="https://www.amazon.com/dp/184861098X/?tag=photomatt08-20">Widow Basquiat: A Love Story</a> by Jennifer Clement.</li>\n    <li><a href="https://www.amazon.com/dp/0812983068/?tag=photomatt08-20">32 Yolks: From My Mother&#x27;s Table to Working the Line</a> by Eric Ripert.</li>\n    <li><a href="https://www.amazon.com/dp/B005LH08M2/?tag=photomatt08-20">Identify: Basic Principles of Identity Design in the Iconic Trademarks</a> by Chermayeff &amp; Geismar.</li>\n    <li><a href="https://www.amazon.com/dp/B0024NP55G/?tag=photomatt08-20">Catching the Big Fish: Meditation, Consciousness, and Creativity</a> by David Lynch (audiobook).</li>\n    <li><a href="https://www.amazon.com/dp/B01HZFB3X0/?tag=photomatt08-20">The Upstarts: How Uber, Airbnb, and the Killer Companies of the New Silicon Valley Are Changing the World</a> by Brad Stone.</li>\n    <li><a href="https://www.amazon.com/dp/B01JKHTNCY/?tag=photomatt08-20">The Leavers</a> by Lisa Ko.</li>\n    <li><a href="https://www.amazon.com/dp/B002UZ5K4Y/?tag=photomatt08-20">Wolf Hall</a> by Hilary Mantel.</li>\n    <li><a href="https://www.amazon.com/dp/B013PKGT2O/?tag=photomatt08-20">Girls on Fire</a> by Robin Wasserman.</li>\n    <li><a href="https://www.amazon.com/dp/0195096444/?tag=photomatt08-20">The Executive&#x27;s Compass</a> by James O&#x27;Toole.</li>\n    <li><a href="https://www.amazon.com/dp/B000SEGMAU/?tag=photomatt08-20">Tuesdays with Morrie</a> by Mitch Albom.</li>\n    <li><a href="https://www.amazon.com/dp/B06WLGYW83/?tag=photomatt08-20">Dance of the Possible</a> by Scott Berkun.</li>\n    <li><a href="https://subterraneanpress.com/magazine/fall_2010/fiction_the_lifecycle_of_software_objects_by_ted_chiang">The Lifecycle of Software Objects</a> by Ted Chiang (short story).</li>\n    <li><a href="https://www.amazon.com/dp/B071KJ7PTB/?tag=photomatt08-20">Tribe of Mentors</a> by Tim Ferriss.</li>\n    <li><a href="https://www.amazon.com/dp/B06XZSNB3W/?tag=photomatt08-20">After On: A Novel of Silicon Valley</a> by Rob Reid.</li>\n    <li><a href="https://www.amazon.com/gp/product/1501124021/?tag=photomatt08-20">Principles</a> by Ray Dalio.</li>\n    <li><a href="https://www.amazon.com/dp/B001H44FP4/?tag=photomatt08-20">The Graveyard Book</a> by Neil Gaiman (audiobook).</li>\n    <li><a href="https://www.amazon.com/dp/B0073X0GRO/?tag=photomatt08-20">The Undiscovered Self: With Symbols and the Interpretation of Dreams</a> by C.G. Jung.</li>\n</ul>\n\n\n\n<p>A fairly random selection, and hopefully I can get a few more in next year.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 31 Dec 2017 23:19:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: WPWeekly Episode 299 – 2017 Year in Review";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77120&preview=true&preview_id=77120";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wptavern.com/wpweekly-episode-299-2017-year-in-review";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:19514:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I review the WordPress news that made headlines on the Tavern in 2017. Among the stories we talk about more in-depth was Headway Themes, WP-CLI becoming a WordPress.org sanctioned project, and Disqus being acquired. We also talked about the future of comments in WordPress and what circumstances could lead to <a href="https://intensedebate.com/">Intense Debate</a> being relevant again.</p>\n<p>Last but not least, we offered up our thoughts for the New Year. Shout out to <a href="https://gist.github.com/kevinwhoffman">Kevin Hoffman</a> who submitted a five-star review for WP Weekly on <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">iTunes</a>. Thank you to all of the listeners who have and continue to listen to WordPress Weekly.</p>\n<h2>Stories Discussed:</h2>\n<h3>January</h3>\n<p><a href="https://wptavern.com/wp-cli-gets-official-wordpress-org-support">WP-CLI Gets Official WordPress.org Support</a><br />\n<a href="https://wptavern.com/wordpress-4-7-1-fixes-eight-security-issues">WordPress 4.7.1 Fixes Eight Security Issues</a><br />\n<a href="https://wptavern.com/automattic-releases-free-plugin-for-exporting-photos-from-lightroom-to-wordpress">Automattic Releases Free Plugin for Exporting Photos from Lightroom to WordPress</a><br />\n<a href="https://wptavern.com/aaron-d-campbell-replaces-nikolay-bachiyski-as-wordpress-security-czar">Aaron D. Campbell Replaces Nikolay Bachiyski as WordPress&#8217; Security Czar</a><br />\n<a href="https://wptavern.com/postmatic-basic-rebrands-as-replyable-moves-two-way-email-commenting-to-saas-product">Postmatic Basic Rebrands as Replyable, Moves Two-Way Email Commenting to SaaS Product</a><br />\n<a href="https://wptavern.com/jetpack-4-5-expands-monetization-with-wordads-integration">Jetpack 4.5 Expands Monetization with WordAds Integration</a><br />\n<a href="https://wptavern.com/obama-foundation-launches-new-website-powered-by-wordpress">Obama Foundation Launches New Website Powered by WordPress</a><br />\n<a href="https://wptavern.com/wix-removes-gpl-licensed-wordpress-code-from-mobile-app-forks-original-mit-library">Wix Removes GPL-Licensed WordPress Code from Mobile App, Forks Original MIT Library</a></p>\n<h3>February</h3>\n<p><a href="https://wptavern.com/10up-unveils-elasticpress-io-elasticsearch-as-a-service-for-wordpress-sites">10up Unveils ElasticPress.io: Elasticsearch as a Service for WordPress Sites</a><br />\n<a href="https://wptavern.com/matt-mullenweg-responds-to-security-rant-digital-signatures-for-wordpress-updates-are-important-but-not-a-priority">Matt Mullenweg Responds to Security Rant: Digital Signatures for WordPress Updates Are Important but Not a Priority</a><br />\n<a href="https://wptavern.com/buddypress-2-8-boosts-minimum-php-requirement-adds-twenty-seventeen-companion-stylesheet">BuddyPress 2.8 Boosts Minimum PHP Requirement, Adds Twenty Seventeen Companion Stylesheet</a><br />\n<a href="https://wptavern.com/wordpress-core-editor-team-publishes-ui-prototype-for-gutenberg-an-experimental-block-based-editor">WordPress Core Editor Team Publishes UI Prototype for &#8220;Gutenberg,&#8221; an Experimental Block Based Editor</a><br />\n<a href="https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue">Zerif Lite Returns to WordPress.org after 5-Month Suspension and 63% Decline in Revenue</a><br />\n<a href="https://wptavern.com/cloudflare-memory-leak-exposes-private-data">Cloudflare Memory Leak Exposes Private Data</a><br />\n<a href="https://wptavern.com/freemius-launches-insights-for-wordpress-themes">Freemius Launches Insights for WordPress Themes</a><br />\n<a href="https://wptavern.com/hackerone-launches-free-community-edition-for-non-commercial-open-source-projects">HackerOne Launches Free Community Edition for Non-Commercial Open Source Projects</a></p>\n<h3>March</h3>\n<p><a href="https://wptavern.com/web-annotations-are-now-a-w3c-standard-paving-the-way-for-decentralized-annotation-infrastructure">Web Annotations are Now a W3C Standard, Paving the Way for Decentralized Annotation Infrastructure</a><br />\n<a href="https://wptavern.com/wordpress-4-7-3-patches-six-security-vulnerabilities-immediate-update-advised">WordPress 4.7.3 Patches Six Security Vulnerabilities, Immediate Update Advised</a><br />\n<a href="https://wptavern.com/wefoster-launches-hosting-platform-catered-to-online-communities">WeFoster Launches Hosting Platform Catered to Online Communities</a><br />\n<a href="https://wptavern.com/jetpack-introduces-theme-installation-from-wordpress-com-sparks-controversy-with-alternative-marketplace-for-free-themes">Jetpack Introduces Theme Installation from WordPress.com, Sparks Controversy with Alternative Marketplace for Free Themes</a><br />\n<a href="https://wptavern.com/pressshack-forks-edit-flow-to-create-publishpress-aims-to-improve-multi-user-editorial-workflow-in-wordpress">PressShack Forks Edit Flow to Create PublishPress, Aims to Improve Multi-User Editorial Workflow in WordPress</a><br />\n<a href="https://wptavern.com/yoast-seo-4-5-urges-users-to-upgrade-to-php-7">Yoast SEO 4.5 Urges Users to Upgrade to PHP 7</a><br />\n<a href="https://wptavern.com/foxhound-is-the-first-rest-api-powered-theme-on-wordpress-org">Foxhound Is the First REST API Powered Theme on WordPress.org</a><br />\n<a href="https://wptavern.com/godaddy-acquires-sucuri">GoDaddy Acquires Sucuri</a><br />\n<a href="https://wptavern.com/wordpress-relaunches-plugin-directory-with-new-design-and-improved-search-algorithm">WordPress Relaunches Plugin Directory with New Design and Improved Search Algorithm</a><br />\n<a href="https://wptavern.com/poopy-life-lets-you-create-free-unlimited-wordpress-test-installs">Poopy.life Lets You Create Free, Unlimited WordPress Test Installs</a><br />\n<a href="https://wptavern.com/wordpress-community-support-shuts-down-wordcamp-netherlands-in-favor-of-city-based-wordcamps">WordPress Community Support Shuts Down WordCamp Netherlands in Favor of City-Based WordCamps</a></p>\n<h3>April</h3>\n<p><a href="https://wptavern.com/woocommerce-3-0-brings-major-improvements-to-product-gallery-introduces-crud-classes-and-a-new-cli">WooCommerce 3.0 Brings Major Improvements to Product Gallery, Introduces CRUD Classes and a New CLI</a><br />\n<a href="https://wptavern.com/jetpack-4-8-introduces-settings-redesign-adds-global-wordpress-com-toolbar">Jetpack 4.8 Introduces Settings Redesign, Adds Global WordPress.com Toolbar</a><br />\n<a href="https://wptavern.com/yoast-seos-php-upgrade-nag-is-producing-a-significant-increase-in-sites-upgrading-to-php-7">Yoast SEO&#8217;s PHP Upgrade Nag is Producing a Significant Increase in Sites Upgrading to PHP 7</a><br />\n<a href="https://wptavern.com/buddypress-2016-survey-results-show-54-of-respondents-are-on-php-7-0">BuddyPress 2016 Survey Results Show 54% of Respondents are on PHP 7.0+</a><br />\n<a href="https://wptavern.com/wordpress-4-7-4-fixes-visual-editor-incompatibility-with-upcoming-version-of-chrome">WordPress 4.7.4 Fixes 47 Issues</a><br />\n<a href="https://wptavern.com/headway-themes-appears-to-be-dying-a-slow-death">Headway Themes Appears to be Dying a Slow Death</a><br />\n<a href="https://wptavern.com/shopify-discontinues-its-official-plugin-for-wordpress">Shopify Discontinues Its Official Plugin for WordPress</a></p>\n<h3>May</h3>\n<p><a href="https://wptavern.com/10up-releases-wp-docker-an-open-source-docker-configuration-for-local-wordpress-development">10up Releases WP Docker, an Open Source Docker Configuration for Local WordPress Development</a><br />\n<a href="https://wptavern.com/jetpack-4-9-introduces-eu-cookie-law-banner-widget">Jetpack 4.9 Introduces EU Cookie Law Banner Widget</a><br />\n<a href="https://wptavern.com/weglot-multilingual-plugin-closes-450k-in-seed-funding">Weglot Multilingual Plugin Closes €450K in Seed Funding</a><br />\n<a href="https://wptavern.com/wordpress-is-now-on-hackerone-launches-bug-bounties">WordPress Is Now on HackerOne, Launches Bug Bounties</a><br />\n<a href="https://wptavern.com/hookr-plugin-rebrands-as-wp-inspect-project-to-shift-to-a-module-based-architecture">Hookr Plugin Rebrands as WP Inspect, Project to Shift to a Module-Based Architecture</a><br />\n<a href="https://wptavern.com/wordpress-4-7-5-patches-six-security-issues-immediate-update-recommended">WordPress 4.7.5 Patches Six Security Issues, Immediate Update Recommended</a><br />\n<a href="https://wptavern.com/storefront-2-2-0-released-includes-design-refresh-and-major-improvements-to-new-user-experience">Storefront 2.2.0 Released, Includes Design Refresh and Major Improvements to New User Experience</a><br />\n<a href="https://wptavern.com/rainmaker-digital-to-partner-with-nimble-worldwide">Rainmaker Digital to Partner with Nimble Worldwide</a><br />\n<a href="https://wptavern.com/wordpress-removes-hhvm-from-testing-infrastructure">WordPress Removes HHVM from Testing Infrastructure</a><br />\n<a href="https://wptavern.com/wp-cli-1-2-0-released-project-unveils-new-logo">WP-CLI 1.2.0 Released, Project Unveils New Logo</a></p>\n<h3>June</h3>\n<p><a href="https://wptavern.com/wpforms-acquires-wp-mail-smtp-plugin">WPForms Acquires WP Mail SMTP Plugin</a><br />\n<a href="https://wptavern.com/versionpress-launches-versionpress-com-to-fund-open-source-project">VersionPress Launches VersionPress.com to Fund Open Source Project</a><br />\n<a href="https://wptavern.com/wordpress-4-8-evans-released-featuring-nearby-wordpress-events-new-media-widgets-and-link-boundaries">WordPress 4.8 &#8220;Evans&#8221; Released Featuring Nearby WordPress Events, New Media Widgets, and Link Boundaries</a><br />\n<a href="https://wptavern.com/imagely-acquires-teslathemes-is-seeking-other-acquisition-opportunities">Imagely Acquires TeslaThemes, Is Seeking Other Acquisition Opportunities</a><br />\n<a href="https://wptavern.com/9seeds-acquires-web-savvy-marketings-genesis-theme-store">9seeds Acquires Web Savvy Marketing&#8217;s Genesis Theme Store</a><br />\n<a href="https://wptavern.com/wordcamp-europe-2017-draws-1900-attendees-from-79-countries">WordCamp Europe 2017 Draws 1900 Attendees from 79 Countries</a><br />\n<a href="https://wptavern.com/woocommerce-drops-50-renewal-discount-on-subscriptions">WooCommerce Drops 50% Renewal Discount on Subscriptions</a><br />\n<a href="https://wptavern.com/wpshout-updates-and-acquires-wphierarchy-com">WPShout Updates and Acquires WPHierarchy.com</a><br />\n<a href="https://wptavern.com/wordpress-new-gutenberg-editor-now-available-as-a-plugin-for-testing">WordPress&#8217; New Gutenberg Editor Now Available as a Plugin for Testing</a><br />\n<a href="https://wptavern.com/automattic-to-renew-efforts-on-underscores-retire-components-starter-theme-generator">Automattic to Renew Efforts on Underscores, Retire Components Starter-Theme Generator</a><br />\n<a href="https://wptavern.com/woocommerce-3-1-adds-new-csv-product-importerexporter-improves-extension-management">WooCommerce 3.1 Adds New CSV Product Importer/Exporter, Improves Extension Management</a><br />\n<a href="https://wptavern.com/clef-is-shutting-down-june-6th">Clef Shuts Down</a></p>\n<h3>July</h3>\n<p><a href="https://wptavern.com/jesse-petersen-founder-of-genesis-the-me-passes-away">Jesse Petersen, Founder of Genesis The.me Passes Away</a><br />\n<a href="https://wptavern.com/wangguard-plugin-author-shuts-down-splog-hunting-service-due-to-trauma-and-death-threats">WangGuard Plugin Author Shuts Down Splog Hunting Service Due to Trauma and Death Threats</a><br />\n<a href="https://wptavern.com/lets-encrypt-passes-100-million-certificates-issued-will-offer-wildcard-certificates-in-january-2018">Let&#8217;s Encrypt Passes 100 Million Certificates Issued, Will Offer Wildcard Certificates in January 2018</a><br />\n<a href="https://wptavern.com/10up-acquires-lift-ux">10up Acquires Lift UX</a><br />\n<a href="https://wptavern.com/aj-morris-acquires-ithemes-exchange">AJ Morris Acquires iThemes Exchange</a><br />\n<a href="https://wptavern.com/react-users-petition-facebook-to-re-license-react-js-after-apache-software-foundation-bans-bsdpatents-license-in-dependencies">React Users Petition Facebook to Re-license React.js after Apache Software Foundation Bans BSD+Patents License in Dependencies</a><br />\n<a href="https://wptavern.com/sitelock-acquires-patchmans-malware-and-vulnerability-detection-technology-expands-wordpress-customer-base-to-4-million">SiteLock Acquires Patchman&#8217;s Malware and Vulnerability Detection Technology, Expands WordPress Customer Base to 4 Million</a><br />\n<a href="https://wptavern.com/adobe-to-discontinue-flash-support-and-updates-in-2020">Adobe to Discontinue Flash Support and Updates in 2020</a><br />\n<a href="https://wptavern.com/blog-passes-100000-registrations-66-5-of-purchased-domains-are-in-use">.blog Passes 100,000 Registrations, 66.5% of Purchased Domains are in Use</a></p>\n<h3>August</h3>\n<p><a href="https://wptavern.com/jetpack-5-2-brings-major-improvements-to-the-contact-form-module">Jetpack 5.2 Brings Major Improvements to the Contact Form Module</a><br />\n<a href="https://wptavern.com/wordpress-polyglots-team-fuels-international-community-growth-with-3rd-global-translation-day">WordPress Polyglots Team Fuels International Community Growth with 3rd Global Translation Day</a><br />\n<a href="https://wptavern.com/wordpress-4-8-1-released-adds-custom-html-widget">WordPress 4.8.1 Released, Adds Custom HTML Widget</a><br />\n<a href="https://wptavern.com/trademark-trial-and-appeal-board-dismisses-automattics-trademark-dispute-against-chris-pearson">Trademark Trial and Appeal Board Dismisses Automattic&#8217;s Trademark Dispute Against Chris Pearson</a><br />\n<a href="https://wptavern.com/wordpress-coms-business-plan-gives-subscribers-a-way-to-tap-into-wordpress-orgs-third-party-ecosystem">WordPress.com&#8217;s Business Plan Gives Subscribers a Way to Tap into WordPress.org&#8217;s Third-party Ecosystem</a><br />\n<a href="https://wptavern.com/maekit-acquires-wp-remote-plans-to-add-cloud-based-backup-services">maekit Acquires WP Remote, Plans to Add Cloud-Based Backup Services</a><br />\n<a href="https://wptavern.com/wordpress-org-now-allows-plugin-authors-to-specify-a-minimum-php-version-requirement">WordPress.org Now Allows Plugin Authors to Specify a Minimum PHP Version Requirement</a><br />\n<a href="https://wptavern.com/gutenberg-1-0-0-introduces-drag-and-drop-for-adding-image-blocks">Gutenberg 1.0.0 Introduces Drag and Drop for Adding Image Blocks</a></p>\n<h3>September</h3>\n<p><a href="https://wptavern.com/jetpack-5-3-adds-php-7-1-compatibility-better-control-for-wordads-placement">Jetpack 5.3 Adds PHP 7.1 Compatibility, Better Control for WordAds Placement</a><br />\n<a href="https://wptavern.com/wordpress-org-adds-new-support-rep-role-for-plugin-pages">WordPress.org Adds New Support Rep Role for Plugin Pages</a><br />\n<a href="https://wptavern.com/wordpress-abandons-react-due-to-patents-clause-gutenberg-to-be-rewritten-with-a-different-library">WordPress Abandons React due to Patents Clause, Gutenberg to be Rewritten with a Different Library</a><br />\n<a href="https://wptavern.com/wordpress-4-8-2-patches-eight-security-vulnerabilities">WordPress 4.8.2 Patches Eight Security Vulnerabilities</a><br />\n<a href="https://wptavern.com/apply-filters-podcast-to-be-retired-after-83-episodes">Apply Filters Podcast to be Retired after 83 Episodes</a><br />\n<a href="https://wptavern.com/wordpress-com-adds-google-photos-integration-available-now-for-jetpack-enabled-sites">WordPress.com Adds Google Photos Integration, Available Now for Jetpack-Enabled Sites</a></p>\n<h3>October</h3>\n<p><a href="https://wptavern.com/poopy-life-launches-pro-version-at-wpsandbox-io-aimed-at-theme-and-plugin-developers">Poopy.life Launches Pro Version at WPsandbox.io Aimed at Theme and Plugin Developers</a><br />\n<a href="https://wptavern.com/disqus-data-breach-affects-17-5-million-accounts">Disqus Data Breach Affects 17.5 Million Accounts</a><br />\n<a href="https://wptavern.com/gitlab-raises-20-million-series-c-round-adds-matt-mullenweg-to-board-of-directors">GitLab Raises $20 Million Series C Round, Adds Matt Mullenweg to Board of Directors</a><br />\n<a href="https://wptavern.com/woocommerce-3-2-adds-ability-to-apply-coupons-in-the-admin-introduces-pre-update-version-checks-for-extensions">WooCommerce 3.2 Adds Ability to Apply Coupons in the Admin, Introduces Pre-Update Version Checks for Extensions</a><br />\n<a href="https://wptavern.com/postman-smtp-plugin-forked-after-removal-from-wordpress-org-for-security-issues">Postman SMTP Plugin Forked after Removal from WordPress.org for Security Issues</a><br />\n<a href="https://wptavern.com/woocommerce-retires-canvas-theme-recommends-customers-migrate-to-storefront-theme">WooCommerce Retires Canvas Theme, Recommends Customers Migrate to Storefront Theme</a><br />\n<a href="https://wptavern.com/goodnight-firebug">Firebug is Retired</a></p>\n<h3>November</h3>\n<p><a href="https://wptavern.com/wordpress-4-8-3-a-security-release-six-weeks-in-the-making">WordPress 4.8.3, A Security Release Six Weeks in the Making</a><br />\n<a href="https://wptavern.com/press-this-removed-from-wordpress-4-9-in-favor-of-a-plugin">Press This Removed from WordPress 4.9 in Favor of a Plugin</a><br />\n<a href="https://wptavern.com/bianca-welds-awarded-kim-parsell-travel-scholarship">Bianca Welds Awarded Kim Parsell Travel Scholarship</a><br />\n<a href="https://wptavern.com/jetpack-5-5-removes-syntax-highlighting-and-gallery-widget-for-compatibility-with-upcoming-wordpress-4-9-release">Jetpack 5.5 Removes Syntax Highlighting and Gallery Widget for Compatibility</a><br />\n<a href="https://wptavern.com/wordpress-4-9-released-with-major-improvements-to-customizer-workflow-updated-code-editors-and-new-core-gallery-widget">WordPress 4.9 Released with Major Improvements to Customizer Workflow, Updated Code Editors, and New Core Gallery Widget</a><br />\n<a href="https://wptavern.com/tailor-page-builder-plugin-discontinued-owners-cite-funding-gutenberg-and-competition">Tailor Page Builder Plugin Discontinued, Owners Cite Funding, Gutenberg, and Competition</a><br />\n<a href="https://wptavern.com/wordpress-4-9-1-released-fixes-page-template-bug">WordPress 4.9.1 Released, Fixes Page Template Bug</a><br />\n<a href="https://wptavern.com/wpweekly-episode-296-gutenberg-telemetry-calypso-and-more-with-matt-mullenweg">WPWeekly Episode 296 – Gutenberg, Telemetry, Calypso, and More With Matt Mullenweg</a></p>\n<h3>December</h3>\n<p><a href="https://wptavern.com/storify-to-close-may-16-2018-wordpress-plugin-discontinued">Storify to Close May 16, 2018, WordPress Plugin Discontinued</a><br />\n<a href="https://wptavern.com/jetpack-5-6-1-increases-security-of-the-contact-form-module">Jetpack 5.6.1 Increases Security of the Contact Form Module</a><br />\n<a href="https://wptavern.com/wp-site-care-acquires-wp-radius">WP Site Care Acquires WP Radius<b></b></a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 3rd at 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #299:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 28 Dec 2017 02:08:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"HeroPress: My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2369";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:190:"https://heropress.com/essays/journey-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai/#utm_source=rss&utm_medium=rss&utm_campaign=journey-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:16183:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2018/12/122717-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: My WordPress journey over the last two years has been excellent, filled with beautiful surprises." /><p>In my early childhood, my parents were told that I had <a href="https://en.wikipedia.org/wiki/Dyslexia">dyslexia</a> and <a href="https://en.wikipedia.org/wiki/Dyscalculia">dyscalculia</a>. They were told that with this drawback, I would never achieve anything constructive in my life. My parents were a little shocked as they had no clue what was dyslexia and dyscalculia and how to handle the situation. They never gave up on me and believe that I could reach great success in life. They found a tutor for me who was able to train me to do better and gave me the same treatment as other students.</p>\n<p>As a student suffering from dyslexia and dyscalculia, I had an option to skip Maths and opt for an additional subject in  in 8th grade. Computer as an additional subject was introduced to me. It was the first time I was introduced to the world of internet. I started researching what internet has to offer and how it works. Those days email and website were all new and fascinating. My father bought our first desktop so I can do my research at home.</p>\n<blockquote><p>My father wanted to turn my love for the computer into something more constructive to help me in my future.</p></blockquote>\n<p>After 12th standard, my father enrolled me in a short computer course from NIIT to develop new skills and polish my old skills. Once the course was over, my teacher was so impressed with my performance that she advised my father to enroll me in a 3 years Software Development course. This course was carried out in parallel with my regular college. I would become both a graduate and a software developer at the same time. My father happily enrolled me.</p>\n<p>(PS: I was a bit disappointed as I had to juggle 2 courses together during my college days. I thought it would be very difficult to concentrate on both things. BUT to be honest today when I look back, I feel that I enjoyed doing both college and NIIT together.)</p>\n<p>During the 3 year period, I learned different languages like C Sharp, C, C++, Java, and dotNet.</p>\n<p>After I completed my graduation and NIIT course, I was confused which field to select and apply for a job. There was a rule in NIIT, I had to complete 1 year of internship after my course. If due to any circumstance I could not complete, I would not get the certificate. My parents had spent a lot of money on my course and I didn&#8217;t want their hard earned money to go down the drain so I started going for different interviews in the IT field. My father had advised me that if after one year I was not happy with my IT job, I can quit and pursue Banking career.</p>\n<blockquote><p>In 2009 on my birthday to my surprise and good fortune, I passed an interview and joined a company. On the first day, I was introduced to WordPress.</p></blockquote>\n<p>I got an assignment to change the look and feel of WordPress dashboard. This assignment had to be completed within the next 6 hours. I had no clue what WordPress was. I was looking at the whiteboard in front of me and thinking this assignment is not possible to complete within 6 hours. I thought my boss was joking (Bosses generally joke with interns).</p>\n<p>Guess who came to the rescue. GOOGLE. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" /></p>\n<p>I started researching about WordPress on how it works and how to use it. After 2 hours, when I was comfortable using WordPress, I started searching how to change look and feel of WordPress Admin Dashboard. Thankfully, I found a plugin which can change the look and feel of the WordPress Dashboard. I learned how to install and work with it. After trying different combinations of color and style, I finally completed the assignment with 2 hours to spare. My boss was happy.</p>\n<p>Unfortunately after 4 days of working with WordPress, I was shifted to another CMS. I started working with the other CMS for so long that I completely forgot about WordPress. I worked with that particular CMS for 5 years.</p>\n<h3>Coming Back To WordPress</h3>\n<p>After 5 years, my office got an international project in WordPress. My boss told me to lead the project. I was hesitant since I had lost touch with WordPress. But I decided this is a great opportunity to become a team leader and lead from front. I decided to update my WordPress skills. Google GOD came to my rescue again. I updated my skills and also taught my junior team members all about WordPress. My juniors team members who never knew anything about WordPress, started to love and use WordPress frequently after my training. My team completed the project in 2 weeks. This project got me back in WordPress for good.</p>\n<p>As a team leader, one needs to help juniors to solve issues and guide them wherever necessary. I never always had the answer to their problems. I did not have any friends from the WordPress world who I can just talk to and discuss things. All my friends were either in dotNet OR commerce fields. For this reason, I was in look out for some kind group which would help me expand my scope of knowledge in WordPress.</p>\n<h3>Finding the Community</h3>\n<p>In 2015, when I was browsing Facebook, I came across an ad about WordCamp Mumbai. I missed out on the event by 2 days. Somehow I found the meetup website and joined the WordPress Mumbai meetup group.</p>\n<p>At the beginning, I didn’t have time and there wasn’t any topic that interested or motivated me to attend the meetup. It was either clashing with shopping or work or outing with friends or something or the other. Finally, after months I found one interesting topic, and in the comments section, they had mentioned that it will be a beginner level workshop. Finally I decided attend the meetup at any cost. I rescheduled all my plans so I could attend the meetup.</p>\n<p>I remember I was on my way to the meetup and was talking to my best friend on phone. I was a bit nervous as I didn’t know anyone there. I could not find the place for the meetup. I told my friend that I am taking a U-turn and going home. BUT to my disadvantage, I finally found the venue and I decided to attend the meetup. In the first 15 mins of the meetup I realized that it’s not a beginners topics. Once the meetup ended, I got up from my seat and left immediately. I was unhappy with the way it was presented.</p>\n<blockquote><p>After a few months, another great topic was announced in the meetup group. My heart told me to take a chance again.</p></blockquote>\n<p>Thankfully this time I knew the venue (same as last time). I attend the meetup and was happy with the way it was presented and learnt a few important tips. After the meetup was over the speaker took time and spoke to individual attendees. When he come to me, I took the opportunity and asked a couple of issues I had with one of my project. He sweetly gave me tips how to deal with my issues.</p>\n<p>The next day to my surprise I receive a message from the team leader Alexander Gounder. He asked me if I want to speak at a meetup. I politely declined the offer as I was not confident. After this, for a couple of the next meetup, I attended and got to know a few people. During that period, there were talks about WordCamp Mumbai 2016.</p>\n<h3>Taking Part In WordCamp</h3>\n<p>I showed an interest to be a part of the team who handles WordCamp Mumbai. I thought WordCamp was a conference where 100 or more people attend it. On the first day of WordCamp Mumbai, I was surprised to see so many WordCamp enthusiastic attending and enjoying this event.</p>\n<a href="https://heropress.com/wp-content/uploads/2018/12/wcmumbai16-group_photo.jpg"><img class="wp-image-2374 size-full" src="https://heropress.com/wp-content/uploads/2018/12/wcmumbai16-group_photo.jpg" alt="WordCamp Mumbai 2016" width="1000" height="358" /></a>WordCamp Mumbai 2016\n<p>&nbsp;</p>\n<a href="https://heropress.com/wp-content/uploads/2018/12/wcmumbai16-localhost-min.jpg"><img class="wp-image-2382 size-full" src="https://heropress.com/wp-content/uploads/2018/12/wcmumbai16-localhost-min.jpg" alt="" width="1000" height="664" /></a>WordCamp Mumbai 2016\n<p>After seeing a successful WordCamp 2016, I try to attend as many meetups as possible.</p>\n<p>I started with an entry-level role with basic responsibilities in my first WordCamp 2016. Gradually I started taking an active part in volunteering taking over more responsibilities. In WordCamp 2017 I handled speaker profiles and social media promotions. In WordCamp 2018, I am getting to know more about what all an organiser needs to do from planning to execution, to make the event the WordCamp an successful event.</p>\n<p><b>WordCamp Mumbai 2017</b></p>\n<a href="https://heropress.com/wp-content/uploads/2018/12/wcmumbai2017-1.jpg"><img class="size-full wp-image-2375" src="https://heropress.com/wp-content/uploads/2018/12/wcmumbai2017-1.jpg" alt="WordCamp Mumbai 2017" width="668" height="337" /></a>WordCamp Mumbai 2017\n<p>After spending 3 years with WordPress Mumbai Community, I am glad to be part of this amazing team. My WordPress journey over the last two years has been excellent, filled with beautiful surprises.</p>\n<p>I have been interviewed twice. Never in my wildest dreams did I ever thought that someone would interview me. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" /> My first ever interview was with <a href="https://www.wpwatercooler.com/video/community-connections-wordpress-at-home-in-india-w-meher-bala/">Bridget and Jen for Community Connections by WPwatercooler</a>. Second was with <a href="https://courses.wpshout.com/">David Hayes for WPShout on WordPress Security</a>.</p>\n<p>Some highlights events are as below:</p>\n<ol>\n<li>Introduced to Rosie pins &#8211; Wapuu for Women Who WordPress.</li>\n<li>Travelled to different cities across India, just to attended wordcamps.</li>\n<li>Made many new friends locally and international.</li>\n<li>Conducted a meetup on “Contributing to WordPress”.</li>\n<li>Conducted a panel discussion at WC Nashik 2017.</li>\n<li>Running a FB group especially for Indian WordPress Women Community.</li>\n<li>Writing an article for HeroPress.</li>\n<li>Contributing my part in the Marketing Team WordPress .</li>\n</ol>\n<table border="0">\n<tbody>\n<tr>\n<td>\n<p><a href="https://heropress.com/wp-content/uploads/2018/12/speaker-badge.jpg"><img class="wp-image-2376" src="https://heropress.com/wp-content/uploads/2018/12/speaker-badge-215x300.jpg" alt="Speaker Badge - WC Nashik 2017" width="300" height="418" /></a>Speaker Badge &#8211; WC Nashik 2017</td>\n<td>\n<p><a href="https://heropress.com/wp-content/uploads/2018/12/panel-discussion-selfie.jpg"><img class="wp-image-2377" src="https://heropress.com/wp-content/uploads/2018/12/panel-discussion-selfie-300x225.jpg" alt="Panel Group Selfie - WC Nashik 2017" width="400" height="300" /></a>Panel Group Selfie &#8211; WC Nashik 2017</td>\n</tr>\n<tr>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>\n<p><a href="https://heropress.com/wp-content/uploads/2018/12/wp-profile.png"><img class="size-medium wp-image-2378" src="https://heropress.com/wp-content/uploads/2018/12/wp-profile-300x132.png" alt="Different Badges - WordPress Profile" width="300" height="132" /></a>Different Badges &#8211; WordPress Profile</td>\n<td>\n<p><a href="https://heropress.com/wp-content/uploads/2018/12/presentation-my-talk.jpg"><img class="wp-image-2379" src="https://heropress.com/wp-content/uploads/2018/12/presentation-my-talk-300x153.jpg" alt="Conducted my first meetup - WordPress Mumbai" width="400" height="204" /></a>Conducted my first meetup &#8211; WordPress Mumbai</td>\n</tr>\n</tbody>\n</table>\n<p><b>My wish list for 2018:</b></p>\n<ol>\n<li>Apply as a speaker in at least one the WordCamp.</li>\n<li>Attend and volunteer at an International WordCamp.</li>\n<li>Attend and volunteer at WordCamp US 2018.</li>\n<li>Meeting Matt Mullenweg hopefully (Fingers crossed!).</li>\n<li>Meeting all my lovely international virtual friends at one of the WordCamps.</li>\n</ol>\n<p>One of my biggest dreams would be to lead WordCamp Mumbai as a lead organiser.</p>\n<blockquote><p>My advice to all who earn their livelihood from WordPress is to try and give back to the WordPress community in any way possible.</p></blockquote>\n<p>I am sure you will either learn something new <b>or</b> teach something new to someone else <b>or</b> just make new friendships.</p>\n<p>At the end of the article, I take the opportunity to thank my grantparents, parents and my sister for always standing by me and believing me. I thank my teacher Ms. Amita, my boss Mr. Ivan Bayross, my WordPress friends, and my virtual international friends for always guiding and motivating me to stay focussed and to keep learning new things in life.</p>\n<p>A big thank you to Topher for giving me an opportunity to write about my life journey.</p>\n<p>Being dyslexic I still make mistakes and I know that I&#8217;m not perfect. But I know for sure there is no harm in making mistakes. You need to learn from them and grow your skills. Don&#8217;t let your disabilities get in the way of your success. If you are reading this article and can connect with my story, do let me know in the comment section. I would love to hear from you.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai" class="rtsocial-twitter-button" href="https://twitter.com/share?text=My%20Journey%20from%20being%20a%20Dyslexic%20kid%20to%20becoming%20A%20Co-organiser%20For%20WordCamp%20Mumbai&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai%2F&title=My+Journey+from+being+a+Dyslexic+kid+to+becoming+A+Co-organiser+For+WordCamp+Mumbai" rel="nofollow" target="_blank" title="Share: My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/journey-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai/&media=https://heropress.com/wp-content/uploads/2018/12/122717-150x150.jpg&description=My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai" rel="nofollow" target="_blank" title="Pin: My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/journey-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai/" title="My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/journey-dyslexic-kid-becoming-co-organiser-wordcamp-mumbai/">My Journey from being a Dyslexic kid to becoming A Co-organiser For WordCamp Mumbai</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Dec 2017 02:23:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Meher Bala";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: NORAD’s Santa Tracker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:43:"https://ma.tt/2017/12/norads-santa-tracker/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://ma.tt/2017/12/norads-santa-tracker/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:432:"<p>Politico has <a href="https://www.politico.com/amp/story/2017/12/24/norads-crazy-santa-cause-260254">a lovely story on the history and present of the NORAD Santa Tracker</a>, which started because a 1955 Sears department store ad had &#8220;a digit wrong — and was instead the direct line into the secret military nerve center in Colorado Springs, Colo., where the Pentagon was on the lookout to prevent nuclear war.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 24 Dec 2017 14:25:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Dev Blog: WordPress User Survey Data for 2015-2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5310";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:61756:"<p>For many years, we&#8217;ve invited folks to tell us how they use WordPress by filling out an annual survey. In the past, interesting results from this survey have been shared in the annual <a href="https://ma.tt/2017/12/state-of-the-word-2017/">State of the Word</a> address. This year, for the first time, the results of the 2017 survey are being published on WordPress News, along with the results of the 2015 and 2016 survey.</p>\n<p>So that information from the survey doesn&#8217;t reveal anything that respondents might consider private, we do not publish a full export of the raw data. We’d love to make this information as accessible as possible, though, so if you have a suggestion for an OS project or tool we can put the data into that allows people to play with it that still protects individual response privacy, please leave a comment on this post!</p>\n<h4>Major Groups</h4>\n<p>This survey features multiple groups, dividing respondents at the first question:</p>\n<blockquote><p>Which of the following best describes how you use WordPress? (<em>Mandatory</em>)</p></blockquote>\n<p>Those who selected &#8220;I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, or other custom work.)&#8221; were served questions from what we&#8217;ll call the &#8220;WordPress Professionals&#8221; group.</p>\n<p>This &#8220;WordPress Professionals&#8221; group is further divided into WordPress Company and WordPress Freelancer/Hobbyist groups, based on how the respondent answered the question, &#8220;Which of the following best describes your involvement with WordPress? (2015) / Do you work for a company, or on your own? (2016-17).&#8221;</p>\n<p>Those who selected &#8220;I own, run, or contribute to a blog or website that is built with WordPress.&#8221; were served questions in what we&#8217;re calling the &#8220;WordPress Users&#8221; group.</p>\n<p>The relevant survey group is noted in each table below. In the case of questions that were served to different groups in 2015 but then served to all respondents in 2016 and 2017, the group responses from 2015 have been consolidated into one set of data for easier comparison between years.</p>\n<h4>Survey results</h4>\n<p><a href="https://wordpress.org/news/feed/#pro">Jump to answers from WordPress Professionals</a></p>\n<p><a href="https://wordpress.org/news/feed/#user">Jump to answers from WordPress Users</a></p>\n<p><a href="https://wordpress.org/news/feed/#all">Jump to answers from All Respondents</a></p>\n<p><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></p>\n<h3>Which of the following best describes how you use WordPress? (Mandatory)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td>Number of responses (since this question was mandatory, the number of responses here is the total number for the survey)</td>\n<td>45,995</td>\n<td></td>\n<td>15,585</td>\n<td></td>\n<td>16,029</td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, other custom work.)</td>\n<td>26,662</td>\n<td>58%</td>\n<td>8,838</td>\n<td>57%</td>\n<td>9,099</td>\n<td>57%</td>\n</tr>\n<tr>\n<td>I own, run, or contribute to a blog or website that is built with WordPress.</td>\n<td>16,130</td>\n<td>35%</td>\n<td>5,293</td>\n<td>34%</td>\n<td>5,625</td>\n<td>35%</td>\n</tr>\n<tr>\n<td>Neither of the above.</td>\n<td>3,204</td>\n<td>7%</td>\n<td>1,460</td>\n<td>9%</td>\n<td>1,306</td>\n<td>8%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="pro">WordPress Professionals</h2>\n<h3><strong>Which of the following best describes your involvement with WordPress? (Mandatory, 2015) / Do you work for a company, or on your own? (Mandatory, 2016-17)</strong></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>26,699</td>\n<td></td>\n<td>8,838</td>\n<td></td>\n<td>9,101</td>\n<td></td>\n</tr>\n<tr>\n<td>My primary job is working for a company or organization that uses WordPress.</td>\n<td>9,505</td>\n<td>36%</td>\n<td>3,529</td>\n<td>40%</td>\n<td>3,660</td>\n<td>40%</td>\n</tr>\n<tr>\n<td>My primary job is as a self-employed designer or developer that uses WordPress.</td>\n<td>9,310</td>\n<td>35%</td>\n<td>3,188</td>\n<td>36%</td>\n<td>3,440</td>\n<td>38%</td>\n</tr>\n<tr>\n<td>I earn money from part-time or occasional freelance work involving WordPress.</td>\n<td>5,954</td>\n<td>22%</td>\n<td>1,633</td>\n<td>18%</td>\n<td>1,590</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>Work that I do involving WordPress is just a hobby, I don&#8217;t make money from it.</td>\n<td>1,930</td>\n<td>7%</td>\n<td>491</td>\n<td>6%</td>\n<td>411</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>How does your company or organization work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,342</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations.</td>\n<td>7,772</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or customize themes.</td>\n<td>5,404</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for my own use.</td>\n<td>4,733</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Host websites for customers.</td>\n<td>4,397</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or distribute plugins.</td>\n<td>3,181</td>\n<td>11%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress.</td>\n<td>1,349</td>\n<td>5%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps.</td>\n<td>1,127</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core.</td>\n<td>914</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>182</td>\n<td> 1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,457</td>\n<td></td>\n<td>3,598</td>\n<td></td>\n</tr>\n<tr>\n<td>We make websites for others.</td>\n<td></td>\n<td></td>\n<td>2,695</td>\n<td>24%</td>\n<td>2,722</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>We make websites for ourselves.</td>\n<td></td>\n<td></td>\n<td>2,355</td>\n<td>21%</td>\n<td>2,470</td>\n<td>21%</td>\n</tr>\n<tr>\n<td>We develop or customize themes.</td>\n<td></td>\n<td></td>\n<td>1,866</td>\n<td>16%</td>\n<td>1,910</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>We host websites for others.</td>\n<td></td>\n<td></td>\n<td>1,564</td>\n<td>14%</td>\n<td>1,595</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>We develop or distribute plugins.</td>\n<td></td>\n<td></td>\n<td>1,283</td>\n<td>11%</td>\n<td>1,342</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>We provide educational resources to help others to use WordPress.</td>\n<td></td>\n<td></td>\n<td>581</td>\n<td>5%</td>\n<td>631</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We sponsor and/or attend WordCamps.</td>\n<td></td>\n<td></td>\n<td>561</td>\n<td>5%</td>\n<td>579</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We contribute bug reports and/or patches to WordPress core.</td>\n<td></td>\n<td></td>\n<td>444</td>\n<td>4%</td>\n<td>468</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>98</td>\n<td>1%</td>\n<td>96</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How would you describe the business of your typical client(s)? (2015) / How would you describe the business of your typical client/customer? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,154</td>\n<td></td>\n<td>3,317</td>\n<td></td>\n<td>3,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>6,893</td>\n<td>32%</td>\n<td>2,398</td>\n<td>31%</td>\n<td>2,510</td>\n<td>31%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>3,635</td>\n<td>17%</td>\n<td>1,361</td>\n<td>18%</td>\n<td>1,447</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>2,644</td>\n<td>12%</td>\n<td>934</td>\n<td>12%</td>\n<td>992</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>2,600</td>\n<td>12%</td>\n<td>888</td>\n<td>12%</td>\n<td>1,022</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>2,344</td>\n<td>11%</td>\n<td>854</td>\n<td>11%</td>\n<td>966</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>2,065</td>\n<td>10%</td>\n<td>637</td>\n<td>8%</td>\n<td>677</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,410</td>\n<td>6%</td>\n<td>524</td>\n<td>7%</td>\n<td>552</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>127</td>\n<td>1%</td>\n<td>66</td>\n<td>1%</td>\n<td>64</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How does your company or organization use WordPress when developing websites? (2015) / When making websites, how does your company or organization use WordPress? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,078</td>\n<td></td>\n<td>3,369</td>\n<td></td>\n<td>3,552</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>6,361</td>\n<td>70%</td>\n<td>2,482</td>\n<td>74%</td>\n<td>2,640</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>1,222</td>\n<td>13%</td>\n<td>370</td>\n<td>11%</td>\n<td>383</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>721</td>\n<td>8%</td>\n<td>137</td>\n<td>4%</td>\n<td>129</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>629</td>\n<td>7%</td>\n<td>303</td>\n<td>9%</td>\n<td>303</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>145</td>\n<td>2%</td>\n<td>78</td>\n<td>2%</td>\n<td>97</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,054</td>\n<td></td>\n<td>3,302</td>\n<td></td>\n<td>3,473</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>5,651</td>\n<td>62%</td>\n<td>2,025</td>\n<td>61%</td>\n<td>2,105</td>\n<td>61%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>2,230</td>\n<td>25%</td>\n<td>799</td>\n<td>24%</td>\n<td>905</td>\n<td>26%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>756</td>\n<td>8%</td>\n<td>302</td>\n<td>9%</td>\n<td>298</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>417</td>\n<td>5%</td>\n<td>177</td>\n<td>5%</td>\n<td>165</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly how many currently active WordPress sites has your company or organization built?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,801</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>1,074</td>\n<td>12%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,721</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>1,718</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>1,284</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>1,109</td>\n<td>13%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>1,418</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>390</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>87</td>\n<td>1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,358</td>\n<td></td>\n<td>3,540</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>291</td>\n<td>9%</td>\n<td>331</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>770</td>\n<td>23%</td>\n<td>894</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>1,144</td>\n<td>34%</td>\n<td>1,177</td>\n<td>33%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>926</td>\n<td>28%</td>\n<td>896</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>228</td>\n<td>7%</td>\n<td>242</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many person-hours (of your company&#8217;s work) does the typical site take to complete?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,091</td>\n<td></td>\n<td>3,353</td>\n<td></td>\n<td>3,522</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>939</td>\n<td>10%</td>\n<td>309</td>\n<td>9%</td>\n<td>325</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>1080</td>\n<td>12%</td>\n<td>329</td>\n<td>10%</td>\n<td>367</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>1541</td>\n<td>17%</td>\n<td>527</td>\n<td>16%</td>\n<td>513</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>1854</td>\n<td>20%</td>\n<td>583</td>\n<td>17%</td>\n<td>620</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>2066</td>\n<td>23%</td>\n<td>691</td>\n<td>21%</td>\n<td>685</td>\n<td>19%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>1611</td>\n<td>18%</td>\n<td>479</td>\n<td>14%</td>\n<td>519</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>Prefer not to answer (2016, 2017)</td>\n<td></td>\n<td></td>\n<td>436</td>\n<td>13%</td>\n<td>493</td>\n<td>14%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your company or organization&#8217;s output is based around WordPress (as opposed to other platforms or software)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,950</td>\n<td></td>\n<td>3,345</td>\n<td></td>\n<td>3,503</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>1,089</td>\n<td>12%</td>\n<td>438</td>\n<td>13%</td>\n<td>480</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,043</td>\n<td>12%</td>\n<td>417</td>\n<td>12%</td>\n<td>459</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>955</td>\n<td>11%</td>\n<td>367</td>\n<td>11%</td>\n<td>424</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>831</td>\n<td>9%</td>\n<td>305</td>\n<td>9%</td>\n<td>344</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>534</td>\n<td>6%</td>\n<td>246</td>\n<td>7%</td>\n<td>226</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>973</td>\n<td>11%</td>\n<td>335</td>\n<td>10%</td>\n<td>338</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>613</td>\n<td>7%</td>\n<td>245</td>\n<td>7%</td>\n<td>202</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>877</td>\n<td>10%</td>\n<td>335</td>\n<td>10%</td>\n<td>310</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>806</td>\n<td>9%</td>\n<td>242</td>\n<td>7%</td>\n<td>280</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,039</td>\n<td>12%</td>\n<td>344</td>\n<td>10%</td>\n<td>348</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>190</td>\n<td>2%</td>\n<td>72</td>\n<td>2%</td>\n<td>92</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>In which of the following ways do you work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>17,009</td>\n<td></td>\n<td>5,221</td>\n<td></td>\n<td>5,425</td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations</td>\n<td>15,342</td>\n<td>34%</td>\n<td>4,795</td>\n<td>34%</td>\n<td>5,064</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Develop or customize themes</td>\n<td>10,549</td>\n<td>24%</td>\n<td>2,997</td>\n<td>21%</td>\n<td>3,021</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Host websites for customers</td>\n<td>8,142</td>\n<td>18%</td>\n<td>2,466</td>\n<td>17%</td>\n<td>2,728</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Develop or distribute plugins</td>\n<td>4,125</td>\n<td>9%</td>\n<td>1,395</td>\n<td>10%</td>\n<td>1,416</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress</td>\n<td>3,276</td>\n<td>7%</td>\n<td>1,187</td>\n<td>8%</td>\n<td>1,308</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps</td>\n<td>1,559</td>\n<td>4%</td>\n<td>648</td>\n<td>5%</td>\n<td>724</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core</td>\n<td>1,107</td>\n<td>2%</td>\n<td>381</td>\n<td>3%</td>\n<td>393</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>389</td>\n<td>1%</td>\n<td>243</td>\n<td>2%</td>\n<td>299</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How would you describe the business of your typical client(s)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,863</td>\n<td></td>\n<td>5,151</td>\n<td></td>\n<td>5,353</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>14,185</td>\n<td>35%</td>\n<td>4,342</td>\n<td>35%</td>\n<td>4,622</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>8,513</td>\n<td>21%</td>\n<td>2,581</td>\n<td>21%</td>\n<td>2,583</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>6,585</td>\n<td>16%</td>\n<td>2,004</td>\n<td>16%</td>\n<td>2,113</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>4,301</td>\n<td>11%</td>\n<td>1,258</td>\n<td>10%</td>\n<td>1,216</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>3,458</td>\n<td>8%</td>\n<td>1,049</td>\n<td>8%</td>\n<td>1,139</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>2,391</td>\n<td>6%</td>\n<td>805</td>\n<td>6%</td>\n<td>857</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,150</td>\n<td>3%</td>\n<td>300</td>\n<td>2%</td>\n<td>329</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>173</td>\n<td>0%</td>\n<td>101</td>\n<td>1%</td>\n<td>99</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How do you use WordPress in your development?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,768</td>\n<td></td>\n<td>5,145</td>\n<td></td>\n<td>5,372</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>11,754</td>\n<td>70%</td>\n<td>3,641</td>\n<td>71%</td>\n<td>3,959</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>2,825</td>\n<td>17%</td>\n<td>812</td>\n<td>16%</td>\n<td>721</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>1,012</td>\n<td>6%</td>\n<td>343</td>\n<td>7%</td>\n<td>344</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>992</td>\n<td>6%</td>\n<td>246</td>\n<td>5%</td>\n<td>226</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>185</td>\n<td>1%</td>\n<td>105</td>\n<td>2%</td>\n<td>122</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,699</td>\n<td></td>\n<td>5,131</td>\n<td></td>\n<td>5,317</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>9,457</td>\n<td>57%</td>\n<td>2,837</td>\n<td>55%</td>\n<td>2,998</td>\n<td>56%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>5,526</td>\n<td>33%</td>\n<td>1,694</td>\n<td>33%</td>\n<td>1,781</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>977</td>\n<td>6%</td>\n<td>341</td>\n<td>7%</td>\n<td>310</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>739</td>\n<td>4%</td>\n<td>261</td>\n<td>5%</td>\n<td>228</td>\n<td>4%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many currently active WordPress sites have you built? (2015) / Roughly how many currently active WordPress sites have you built? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,690</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>514</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,728</td>\n<td>10%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>3,000</td>\n<td>18%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>3,146</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>3,405</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>3,838</td>\n<td>23%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>698</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>361</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,165</td>\n<td></td>\n<td>5367</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>110</td>\n<td>2%</td>\n<td>104</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>603</td>\n<td>12%</td>\n<td>713</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>2,264</td>\n<td>44%</td>\n<td>2,457</td>\n<td>46%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>1,871</td>\n<td>36%</td>\n<td>1,813</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>319</td>\n<td>6%</td>\n<td>280</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your working time is spent working with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,658</td>\n<td></td>\n<td>5,039</td>\n<td></td>\n<td>5,241</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>949</td>\n<td>6%</td>\n<td>459</td>\n<td>9%</td>\n<td>461</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,300</td>\n<td>8%</td>\n<td>527</td>\n<td>10%</td>\n<td>540</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>1,784</td>\n<td>11%</td>\n<td>637</td>\n<td>13%</td>\n<td>711</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>1,850</td>\n<td>11%</td>\n<td>608</td>\n<td>12%</td>\n<td>627</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>1,313</td>\n<td>8%</td>\n<td>438</td>\n<td>9%</td>\n<td>465</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>2,095</td>\n<td>13%</td>\n<td>612</td>\n<td>12%</td>\n<td>639</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>1,438</td>\n<td>9%</td>\n<td>391</td>\n<td>8%</td>\n<td>384</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>2,076</td>\n<td>12%</td>\n<td>530</td>\n<td>11%</td>\n<td>511</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>1,743</td>\n<td>10%</td>\n<td>445</td>\n<td>9%</td>\n<td>429</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,819</td>\n<td>11%</td>\n<td>342</td>\n<td>7%</td>\n<td>419</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>291</td>\n<td>2%</td>\n<td>52</td>\n<td>1%</td>\n<td>55</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many hours of your work does the typical site take to complete? (2015) / How many hours of work does your typical WordPress project take to launch? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,670</td>\n<td></td>\n<td>5,164</td>\n<td></td>\n<td>5,378</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>503</td>\n<td>3%</td>\n<td>222</td>\n<td>4%</td>\n<td>245</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>973</td>\n<td>6%</td>\n<td>386</td>\n<td>7%</td>\n<td>393</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>2,277</td>\n<td>14%</td>\n<td>788</td>\n<td>15%</td>\n<td>815</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>3,896</td>\n<td>23%</td>\n<td>1,153</td>\n<td>22%</td>\n<td>1,216</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>6,068</td>\n<td>36%</td>\n<td>1,487</td>\n<td>29%</td>\n<td>1,582</td>\n<td>29%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>2,953</td>\n<td>18%</td>\n<td>712</td>\n<td>14%</td>\n<td>751</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>418</td>\n<td>8%</td>\n<td>376</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which of the following have you done with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" /> </colgroup>\n</table>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional (Company/Freelancer/Hobbyist)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>20,687</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a theme from scratch.</td>\n<td>11,894</td>\n<td>25%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a plugin.</td>\n<td>9,719</td>\n<td>21%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve answered a question in the WordPress forum.</td>\n<td>8,805</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordPress meetup.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve submitted a WordPress bug report.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordCamp.</td>\n<td>3,571</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed to WordPress documentation.</td>\n<td>1,778</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1,739</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed a WordPress core patch.</td>\n<td>1,055</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="https://wordpress.org/news/feed/#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>22,718</td>\n<td></td>\n<td>7,891</td>\n<td></td>\n<td>8,267</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>9,450</td>\n<td>42%</td>\n<td>3,454</td>\n<td>44%</td>\n<td>3,852</td>\n<td>47%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>8,601</td>\n<td>38%</td>\n<td>3,116</td>\n<td>39%</td>\n<td>3,555</td>\n<td>43%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>3,806</td>\n<td>17%</td>\n<td>1,211</td>\n<td>15%</td>\n<td>1,340</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>2,291</td>\n<td>10%</td>\n<td>802</td>\n<td>10%</td>\n<td>908</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>249</td>\n<td>1%</td>\n<td>86</td>\n<td>1%</td>\n<td>187</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3> What&#8217;s the most frustrating thing about WordPress?<a href="https://wordpress.org/news/feed/#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>21,144</td>\n<td></td>\n<td>7,294</td>\n<td></td>\n<td>7,691</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>6,122</td>\n<td>29%</td>\n<td>2,194</td>\n<td>30%</td>\n<td>2,187</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilities/hacks</td>\n<td>2,321</td>\n<td>11%</td>\n<td>712</td>\n<td>10%</td>\n<td>829</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>1,544</td>\n<td>7%</td>\n<td>422</td>\n<td>6%</td>\n<td>508</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Nothing/I don&#8217;t know/can&#8217;t think of anything</td>\n<td>1,276</td>\n<td>6%</td>\n<td>344</td>\n<td>5%</td>\n<td>476</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Speed/performance/slow/heavy</td>\n<td>1,196</td>\n<td>6%</td>\n<td>644</td>\n<td>9%</td>\n<td>516</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not asked in the 2015 survey)</td>\n<td></td>\n<td></td>\n<td>8,672</td>\n<td></td>\n<td>9,059</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>7551</td>\n<td>87%</td>\n<td>7836</td>\n<td>87%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>754</td>\n<td>9%</td>\n<td>795</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>370</td>\n<td>4%</td>\n<td>428</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="user">WordPress Users</h2>\n<h3>Which of the following describes how you use WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,169</td>\n<td></td>\n<td>5,043</td>\n<td></td>\n<td>5,521</td>\n<td></td>\n</tr>\n<tr>\n<td>My personal blog (or blogs) uses WordPress.</td>\n<td>9,395</td>\n<td>36%</td>\n<td>3,117</td>\n<td>36%</td>\n<td>3,424</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>My company or organization&#8217;s website is built with WordPress software.</td>\n<td>7,480</td>\n<td>29%</td>\n<td>2,519</td>\n<td>29%</td>\n<td>2,841</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>I have a hobby or side project that has a website built with WordPress.</td>\n<td>6,112</td>\n<td>23%</td>\n<td>1,973</td>\n<td>23%</td>\n<td>2,200</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>I write (or otherwise work) for an online publication that uses WordPress.</td>\n<td>2,329</td>\n<td>9%</td>\n<td>806</td>\n<td>9%</td>\n<td>821</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>872</td>\n<td>3%</td>\n<td>234</td>\n<td>3%</td>\n<td>288</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>Who installed your WordPress website?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,055</td>\n<td></td>\n<td>5,020</td>\n<td></td>\n<td>5,523</td>\n<td></td>\n</tr>\n<tr>\n<td>I did.</td>\n<td>11,216</td>\n<td>66%</td>\n<td>3,659</td>\n<td>73%</td>\n<td>4,129</td>\n<td>75%</td>\n</tr>\n<tr>\n<td>My hosting provider</td>\n<td>2,236</td>\n<td>13%</td>\n<td>667</td>\n<td>13%</td>\n<td>767</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>An external company</td>\n<td>909</td>\n<td>5%</td>\n<td>182</td>\n<td>4%</td>\n<td>178</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>An internal web person/team or a colleague</td>\n<td>874</td>\n<td>5%</td>\n<td>178</td>\n<td>4%</td>\n<td>191</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>A friend or family member</td>\n<td>787</td>\n<td>5%</td>\n<td>192</td>\n<td>4%</td>\n<td>172</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>I don&#8217;t know</td>\n<td>502</td>\n<td>3%</td>\n<td>145</td>\n<td>3%</td>\n<td>87</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>345</td>\n<td>2%</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n</tr>\n</tbody>\n</table>\n<h3>How much has the site been customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,789</td>\n<td></td>\n<td>4,997</td>\n<td></td>\n<td>5,494</td>\n<td></td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>7,465</td>\n<td>50%</td>\n<td>2,337</td>\n<td>47%</td>\n<td>2,660</td>\n<td>48%</td>\n</tr>\n<tr>\n<td>A lot of work has been done, the site itself is unrecognizable from the original theme, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>4,715</td>\n<td>32%</td>\n<td>1,707</td>\n<td>34%</td>\n<td>1,872</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as it was when I started out.</td>\n<td>1,841</td>\n<td>12%</td>\n<td>635</td>\n<td>13%</td>\n<td>673</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything has been customized.</td>\n<td>768</td>\n<td>5%</td>\n<td>321</td>\n<td>6%</td>\n<td>290</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="https://wordpress.org/news/feed/#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,328</td>\n<td></td>\n<td>4,613</td>\n<td></td>\n<td>5,076</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>7,391</td>\n<td>52%</td>\n<td>2,276</td>\n<td>49%</td>\n<td>2,511</td>\n<td>49%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>4,219</td>\n<td>29%</td>\n<td>1,569</td>\n<td>34%</td>\n<td>1,632</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>1,586</td>\n<td>11%</td>\n<td>493</td>\n<td>11%</td>\n<td>538</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>1,085</td>\n<td>8%</td>\n<td>388</td>\n<td>8%</td>\n<td>458</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>223</td>\n<td>2%</td>\n<td>74</td>\n<td>2%</td>\n<td>48</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the most frustrating thing about WordPress?<a href="https://wordpress.org/news/feed/#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>13,681</td>\n<td></td>\n<td>4,287</td>\n<td></td>\n<td>4,758</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>2,531</td>\n<td>19%</td>\n<td>1,183</td>\n<td>28%</td>\n<td>1,300</td>\n<td>27%</td>\n</tr>\n<tr>\n<td>Customization/design/look/template</td>\n<td>1,273</td>\n<td>9%</td>\n<td>381</td>\n<td>9%</td>\n<td>408</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Code/coding/PHP</td>\n<td>931</td>\n<td>7%</td>\n<td>306</td>\n<td>7%</td>\n<td>277</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>926</td>\n<td>7%</td>\n<td>209</td>\n<td>5%</td>\n<td>296</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilites/hacks</td>\n<td>785</td>\n<td>6%</td>\n<td>255</td>\n<td>6%</td>\n<td>292</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,026</td>\n<td></td>\n<td>5,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>4,038</td>\n<td>80%</td>\n<td>4,462</td>\n<td>81%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>737</td>\n<td>15%</td>\n<td>782</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>5%</td>\n<td>255</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="all">All Respondents</h2>\n<h3>Can you (truthfully!) say &#8220;I make my living from WordPress&#8221;?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,236</td>\n<td></td>\n<td>14,906</td>\n<td></td>\n<td>15,616</td>\n<td></td>\n</tr>\n<tr>\n<td>Not really, but I do get some or all of my income as a result of working with WordPress.</td>\n<td>16,607</td>\n<td>39%</td>\n<td>5,408</td>\n<td>36%</td>\n<td>5,702</td>\n<td>37%</td>\n</tr>\n<tr>\n<td>Yes.</td>\n<td>9,635</td>\n<td>23%</td>\n<td>4,791</td>\n<td>32%</td>\n<td>5,033</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>No.</td>\n<td>15,995</td>\n<td>38%</td>\n<td>4,713</td>\n<td>32%</td>\n<td>4,882</td>\n<td>31%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which devices do you access WordPress on?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,433</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Web</td>\n<td>40,503</td>\n<td>95%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android phone</td>\n<td>15,396</td>\n<td>36%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPhone</td>\n<td>12,353</td>\n<td>29%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPad</td>\n<td>11,748</td>\n<td>28%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android tablet</td>\n<td>9,223</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Desktop app, like MarsEdit</td>\n<td>6,018</td>\n<td>14%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1837</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not broken out by group in 2016-2017)</td>\n<td></td>\n<td></td>\n<td>14,840</td>\n<td></td>\n<td>15,597</td>\n<td></td>\n</tr>\n<tr>\n<td>Web browser on a desktop or laptop</td>\n<td></td>\n<td></td>\n<td>14,160</td>\n<td>54%</td>\n<td>15,052</td>\n<td>55%</td>\n</tr>\n<tr>\n<td>Web browser on a mobile device (tablet or phone)</td>\n<td></td>\n<td></td>\n<td>7,952</td>\n<td>30%</td>\n<td>8,248</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>An app on a mobile device (table or phone)</td>\n<td></td>\n<td></td>\n<td>3,309</td>\n<td>13%</td>\n<td>3,311</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>A desktop app like MarsEdit</td>\n<td></td>\n<td></td>\n<td>517</td>\n<td>2%</td>\n<td>498</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>282</td>\n<td>1%</td>\n<td>240</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress now updates minor &amp; security releases automatically for you. Check all that apply: (question not asked in 2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups)</td>\n<td>39,726</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I love auto-updates.</td>\n<td>17,367</td>\n<td>44%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for plugins.</td>\n<td>12,796</td>\n<td>32%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Initially, I was nervous about auto updates.</td>\n<td>11,868</td>\n<td>30%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates still make me nervous.</td>\n<td>10,809</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates don&#8217;t make me nervous now.</td>\n<td>10,708</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for themes.</td>\n<td>10,449</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto updates for major versions of WordPress.</td>\n<td>10,225</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>This is the first I&#8217;ve heard of auto-updates.</td>\n<td>8,660</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I hate auto-updates.</td>\n<td>3,293</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What is your gender?<a href="https://wordpress.org/news/feed/#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>13,953</td>\n<td></td>\n<td>14,680</td>\n<td></td>\n</tr>\n<tr>\n<td>Male</td>\n<td></td>\n<td></td>\n<td>10,978</td>\n<td>78.68%</td>\n<td>11,570</td>\n<td>78.81%</td>\n</tr>\n<tr>\n<td>Female</td>\n<td></td>\n<td></td>\n<td>2,340</td>\n<td>16.77%</td>\n<td>2,511</td>\n<td>21.70%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>601</td>\n<td>4.31%</td>\n<td>562</td>\n<td>3.83%</td>\n</tr>\n<tr>\n<td>Transgender</td>\n<td></td>\n<td></td>\n<td>11</td>\n<td>0.08%</td>\n<td>8</td>\n<td>0.05%</td>\n</tr>\n<tr>\n<td>Nonbinary</td>\n<td></td>\n<td></td>\n<td>8</td>\n<td>0.06%</td>\n<td>17</td>\n<td>0.12%</td>\n</tr>\n<tr>\n<td>Genderqueer</td>\n<td></td>\n<td></td>\n<td>4</td>\n<td>0.03%</td>\n<td>3</td>\n<td>0.02%</td>\n</tr>\n<tr>\n<td>Androgynous</td>\n<td></td>\n<td></td>\n<td>6</td>\n<td>0.04%</td>\n<td>5</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Fluid</td>\n<td></td>\n<td></td>\n<td>3</td>\n<td>0.02%</td>\n<td>4</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Demimale</td>\n<td></td>\n<td></td>\n<td>2</td>\n<td>0.01%</td>\n<td>0</td>\n<td>0</td>\n</tr>\n</tbody>\n</table>\n<h3>Where are you located?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>14,562</td>\n<td></td>\n<td>15,343</td>\n<td></td>\n</tr>\n<tr>\n<td>United States</td>\n<td></td>\n<td></td>\n<td>3,770</td>\n<td>25.89%</td>\n<td>4,067</td>\n<td>26.51%</td>\n</tr>\n<tr>\n<td>India</td>\n<td></td>\n<td></td>\n<td>1,456</td>\n<td>10.00%</td>\n<td>1,424</td>\n<td>9.28%</td>\n</tr>\n<tr>\n<td>United Kingdom</td>\n<td></td>\n<td></td>\n<td>810</td>\n<td>5.56%</td>\n<td>900</td>\n<td>5.87%</td>\n</tr>\n<tr>\n<td>Germany</td>\n<td></td>\n<td></td>\n<td>555</td>\n<td>3.81%</td>\n<td>729</td>\n<td>4.75%</td>\n</tr>\n<tr>\n<td>Canada</td>\n<td></td>\n<td></td>\n<td>511</td>\n<td>3.51%</td>\n<td>599</td>\n<td>3.90%</td>\n</tr>\n<tr>\n<td>Australia</td>\n<td></td>\n<td></td>\n<td>389</td>\n<td>2.67%</td>\n<td>460</td>\n<td>3.00%</td>\n</tr>\n<tr>\n<td>Italy</td>\n<td></td>\n<td></td>\n<td>298</td>\n<td>2.05%</td>\n<td>356</td>\n<td>2.32%</td>\n</tr>\n<tr>\n<td>Netherlands</td>\n<td></td>\n<td></td>\n<td>343</td>\n<td>2.36%</td>\n<td>350</td>\n<td>2.28%</td>\n</tr>\n<tr>\n<td>France</td>\n<td></td>\n<td></td>\n<td>232</td>\n<td>1.59%</td>\n<td>283</td>\n<td>1.84%</td>\n</tr>\n<tr>\n<td>Bangladesh</td>\n<td></td>\n<td></td>\n<td>257</td>\n<td>1.76%</td>\n<td>263</td>\n<td>1.71%</td>\n</tr>\n<tr>\n<td>Spain</td>\n<td></td>\n<td></td>\n<td>271</td>\n<td>1.86%</td>\n<td>252</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Brazil</td>\n<td></td>\n<td></td>\n<td>239</td>\n<td>1.64%</td>\n<td>251</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Pakistan</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>1.74%</td>\n<td>240</td>\n<td>1.56%</td>\n</tr>\n<tr>\n<td>Indonesia</td>\n<td></td>\n<td></td>\n<td>230</td>\n<td>1.58%</td>\n<td>226</td>\n<td>1.47%</td>\n</tr>\n<tr>\n<td>Iran, Islamic Republic of</td>\n<td></td>\n<td></td>\n<td>190</td>\n<td>1.30%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Sweden</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Nigeria</td>\n<td></td>\n<td></td>\n<td>196</td>\n<td>1.35%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>South Africa</td>\n<td></td>\n<td></td>\n<td>193</td>\n<td>1.33%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>Russian Federation</td>\n<td></td>\n<td></td>\n<td>181</td>\n<td>1.24%</td>\n<td>151</td>\n<td>0.98%</td>\n</tr>\n<tr>\n<td>Poland</td>\n<td></td>\n<td></td>\n<td>129</td>\n<td>0.89%</td>\n<td>137</td>\n<td>0.89%</td>\n</tr>\n<tr>\n<td>Romania</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>132</td>\n<td>0.86%</td>\n</tr>\n<tr>\n<td>Switzerland</td>\n<td></td>\n<td></td>\n<td>122</td>\n<td>0.84%</td>\n<td>130</td>\n<td>0.85%</td>\n</tr>\n<tr>\n<td>Philippines</td>\n<td></td>\n<td></td>\n<td>92</td>\n<td>0.63%</td>\n<td>125</td>\n<td>0.81%</td>\n</tr>\n<tr>\n<td>China</td>\n<td></td>\n<td></td>\n<td>136</td>\n<td>0.93%</td>\n<td>123</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Austria</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>122</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Ukraine</td>\n<td></td>\n<td></td>\n<td>105</td>\n<td>0.72%</td>\n<td>118</td>\n<td>0.77%</td>\n</tr>\n<tr>\n<td>Denmark</td>\n<td></td>\n<td></td>\n<td>107</td>\n<td>0.73%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Greece</td>\n<td></td>\n<td></td>\n<td>120</td>\n<td>0.82%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Portugal</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>109</td>\n<td>0.71%</td>\n</tr>\n<tr>\n<td>Vietnam</td>\n<td></td>\n<td></td>\n<td>101</td>\n<td>0.69%</td>\n<td>108</td>\n<td>0.70%</td>\n</tr>\n<tr>\n<td>Mexico</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>105</td>\n<td>0.68%</td>\n</tr>\n<tr>\n<td>Nepal</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>97</td>\n<td>0.63%</td>\n</tr>\n<tr>\n<td>Ireland</td>\n<td></td>\n<td></td>\n<td>72</td>\n<td>0.49%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>Israel</td>\n<td></td>\n<td></td>\n<td>78</td>\n<td>0.54%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>New Zealand</td>\n<td></td>\n<td></td>\n<td>77</td>\n<td>0.53%</td>\n<td>91</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Finland</td>\n<td></td>\n<td></td>\n<td>63</td>\n<td>0.43%</td>\n<td>90</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Turkey</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>86</td>\n<td>0.56%</td>\n</tr>\n<tr>\n<td>Malaysia</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>81</td>\n<td>0.53%</td>\n</tr>\n<tr>\n<td>Belgium</td>\n<td></td>\n<td></td>\n<td>84</td>\n<td>0.58%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Norway</td>\n<td></td>\n<td></td>\n<td>66</td>\n<td>0.45%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Argentina</td>\n<td></td>\n<td></td>\n<td>65</td>\n<td>0.45%</td>\n<td>76</td>\n<td>0.50%</td>\n</tr>\n<tr>\n<td>Bulgaria</td>\n<td></td>\n<td></td>\n<td>74</td>\n<td>0.51%</td>\n<td>72</td>\n<td>0.47%</td>\n</tr>\n<tr>\n<td>Japan</td>\n<td></td>\n<td></td>\n<td>61</td>\n<td>0.42%</td>\n<td>68</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Thailand</td>\n<td></td>\n<td></td>\n<td>69</td>\n<td>0.47%</td>\n<td>67</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Czech Republic</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>66</td>\n<td>0.43%</td>\n</tr>\n<tr>\n<td>Serbia</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>63</td>\n<td>0.41%</td>\n</tr>\n<tr>\n<td>Kenya</td>\n<td></td>\n<td></td>\n<td>58</td>\n<td>0.40%</td>\n<td>62</td>\n<td>0.40%</td>\n</tr>\n<tr>\n<td>Colombia</td>\n<td></td>\n<td></td>\n<td>39</td>\n<td>0.27%</td>\n<td>59</td>\n<td>0.38%</td>\n</tr>\n<tr>\n<td>Egypt</td>\n<td></td>\n<td></td>\n<td>40</td>\n<td>0.27%</td>\n<td>52</td>\n<td>0.34%</td>\n</tr>\n</tbody>\n</table>\n<h3>What is your age?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td colspan="2" rowspan="1"><strong>2015</strong></td>\n<td colspan="2" rowspan="1"><strong>2016</strong></td>\n<td colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (This question was not asked in 2015.)</td>\n<td></td>\n<td></td>\n<td>14,944</td>\n<td></td>\n<td>15,636</td>\n<td></td>\n</tr>\n<tr>\n<td>60 and over</td>\n<td></td>\n<td></td>\n<td>1,139</td>\n<td>8%</td>\n<td>1,641</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>50-59</td>\n<td></td>\n<td></td>\n<td>1,537</td>\n<td>10%</td>\n<td>1,996</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>40-49</td>\n<td></td>\n<td></td>\n<td>2,205</td>\n<td>15%</td>\n<td>2,643</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>30-39</td>\n<td></td>\n<td></td>\n<td>3,914</td>\n<td>26%</td>\n<td>3,972</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>20-29</td>\n<td></td>\n<td></td>\n<td>5,013</td>\n<td>34%</td>\n<td>4,444</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Under 20</td>\n<td></td>\n<td></td>\n<td>1142</td>\n<td>8%</td>\n<td>941</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<p>Thank you to everyone who made time to fill out the survey &#8212; we&#8217;re so happy you use WordPress, and we&#8217;re very grateful that you&#8217;re willing to share your experiences with us! Thanks also to everyone who spread the word about this survey, and to those of you who read all the way to the bottom of this post. <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f609.png" alt="😉" class="wp-smiley" /></p>\n<p><small><a id="text"></a>*Text Field Questions: Each survey included some questions that could be answered only by filling out a text field. In the case of the questions &#8220;What is the best thing about WordPress?&#8221; and &#8220;What is the most frustrating thing about WordPress?&#8221; we listed the five most common responses, aggregated when applicable. In the case of the question “What is your gender?” in the 2016 and 2017 surveys, we aggregated responses as best we could. Responses meant to obscure respondents’ gender entirely are aggregated in “prefer not to answer.”</small></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Dec 2017 21:40:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: WPWeekly Episode 298 – GDPR, User Privacy, and More With Heather Burns";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77110&preview=true&preview_id=77110";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/wpweekly-episode-298-gdpr-user-privacy-and-more-with-heather-burns";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2570:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I are joined by <a href="https://twitter.com/webdevlaw?lang=en">Heather Burns</a>, Founder of <a href="https://webdevlaw.uk/">WebDevLaw</a>. We have a lengthy discussion about <a href="https://www.eugdpr.org/">GDPR</a> (General Data Protection Regulation), what it is, what&#8217;s at stake, and its potential impacts on the WordPress ecosystem. We also discuss the cultural differences between the North American and European views on user privacy.</p>\n<p>When asked what she hopes to see as we approach May of 2018, Burns replied:</p>\n<p>&#8220;I want to see all hands on deck making WordPress a force for good, that people can trust, and that people can be empowered to change for the better. Don&#8217;t let the fact that it involves law put you off. GDPR is a toolkit for empowerment, it&#8217;s a means for protecting and safeguarding your users in these quite scary times we&#8217;re living in. And it will make you a better developer and site administrator in the end.&#8221;</p>\n<p>For questions related to GDPR or how to make your site or WordPress plugins compliant, <a href="https://webdevlaw.uk/">please get in touch with Burns</a>. You can also <a href="https://videopress.com/v/JkKwb2zi">view her presentation</a> on WordPress.TV from WordCamp Belfast, 2016.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/wp-site-care-acquires-wp-radius">WP Site Care Acquires WP Radius</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://frontenberg.tomjn.com/">Frontenberg</a> by Tom J. Nowell is a new site that displays Gutenberg to the frontend of WordPress. It allows visitors to tinker with Gutenberg without having to login to a site or install a plugin.</p>\n<p>John gave props to <a href="https://github.com/renatonascalves">Renato Alves</a> who has been working on adding WP-CLI support for <a href="https://github.com/bbpress/wp-cli-bbpress">bbPress</a> and <a href="https://github.com/buddypress/wp-cli-buddypress">BuddyPress</a>.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 27th 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #298:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 21 Dec 2017 01:21:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Matt: Design in Kentucky";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47730";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"https://ma.tt/2017/12/design-in-kentucky/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:352:"<p>Fast Company Design has written ﻿<a href="https://www.fastcodesign.com/90154530/tech-has-a-diversity-problem-so-this-designer-went-to-kentucky">Tech Has A Diversity Problem–So This Designer Went To Kentucky</a>, about John Maeda&#x27;s work pairing some of the top designers in the world with students in Paintsville, Kentucky. </p>\n\n\n\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Dec 2017 21:17:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"WPTavern: WP Site Care Acquires WP Radius";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77086";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wptavern.com/wp-site-care-acquires-wp-radius";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1407:"<p><a href="https://www.wpsitecare.com">WP Site Care</a>, a WordPress management and maintenance service provider<a href="https://www.wpsitecare.com/weve-acquired-wp-radius/"> has acquired</a> <a href="https://www.wpradius.com/">WP Radius</a>.﻿ Ryan Sullivan, Founder of WP Site Care, says the acquisition has been in the works for some time. </p>\n\n\n\n<p>"We’ve been working toward growing our customer base and learning about new business models in the WordPress support space for quite some time, and the WP Radius acquisition allows us to accomplish both of those goals," he said.<br /></p>\n\n\n\n<p>The move increases WP Site Care&#x27;s customer base by 20% and will allow it to experiment with <a href="https://www.wpradius.com/plans/">an unlimited jobs model</a>, something that set WP Radius apart. </p>\n\n\n\n<p>"We’ve been very interested in the unlimited jobs model and what that really means from an operations standpoint for quite some time, and whether or not it’s <em>actually</em> better for customers, so this move will allow us to learn a lot more about how that all plays out in the real world," Sullivan said.</p>\n\n\n\n<p>WP Radius will continue to operate as a separate entity and will eventually be consolidated into the WP Site Care brand. </p>\n\n\n\n<p>WP Radius was founded in 2015 by Todd Schwartzfarb and Brandon Yanofsky. Financial details of the acquisition were not disclosed. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Dec 2017 19:38:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"HeroPress: WordPress allowed me to have a Dream Job";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2357";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:128:"https://heropress.com/essays/wordpress-allowed-dream-job/#utm_source=rss&utm_medium=rss&utm_campaign=wordpress-allowed-dream-job";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:13836:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2017/12/121917-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: You know that you should never stop dreaming, right?" /><p>I was always interested in computers but I did not know I would become a developer. As a kid, a dream job, was playing and reviewing video games. I believe, many kids had a similar dream job. I guess, that’s where I started seeing a dream job would be a job where you would be happy to go to and maybe even sad when going from it.</p>\n<p>Today, I see myself as having a dream job. Let me tell you how I got to my current situation.</p>\n<h3>Programming was not for me</h3>\n<p>While going to high school, I was introduced to programming. We did some Turbo C++ and I could not understand a thing. Even a simple for-loop was hard for me. I would rather play Counter-Strike with friends who attended that class. After that, as I did not understand programming, I chose not to follow such career path. I did not want my parents to pay for my college expenses since I would have to go to another city. Especially since I realised I don’t understand how to code.</p>\n<p>Since I live in Croatia, I did not have access to a high speed internet. At that time, a high speed internet was an ADSL with a download speed of 200kb/s.</p>\n<blockquote><p>I was using the 56k modem which was too expensive so I had only 2 hours per week to spend on it.</p></blockquote>\n<p>I used those 2 hours for playing games instead of learning.</p>\n<p>Once I got the ADSL, somewhere near the end of high school, I was able to get my hands on Photoshop and learned how to manipulate images. After high school, I went to the Maritime College but soon after I knew I did not want to spend years and years working on ships, not seeing my family or friends. That was not my dream job.</p>\n<h3>Second Try</h3>\n<p>I decided to give another chance to programming, but with a different learning path. Since I already knew how to use Photoshop, I realized there was an option “Slice for Web..”. That was my first introduction to web development.</p>\n<p>I knew having a web page composed of images from Photoshop was not how it should be done. I was used to 56k modem and I knew how a page like that would take long to load.</p>\n<p>The luck was on my side now since I had ADSL and I could spend hours and hours weekly search the Internet. I searched how to slice images and prepare them for web pages by reading PSD Tuts+. Back then there were only PSD and Net TutsPlus sites in their network.</p>\n<p>I learned a lot on PSD to HTML and how to use CSS to style your web sites. After that, I wanted to learn how do blogging sites work. How do they show those articles. I mean, it couldn’t be that for each article, they would open one HTML file and edit it. That’s just too much work. So, I found about PHP and MySQL and got some courses on Lynda on that.</p>\n<p>I learned about creating a blog using PHP and MySQL. I also learned a little on advanced coding and I was really happy with my knowledge. All that was just a month or two from where I knew nothing on programming.</p>\n<h3>Looking for a CMS</h3>\n<p>With my knowledge, I knew how to build various types of sites. I asked other businesses if I could build a site for them in return of a favour or even product. Some of them were up to that. I didn’t want to charge since I knew I still had a lot to learn.</p>\n<p>After a while, I was a bit tired (read: lazy) of building SQL tables and all the base functions for each project. I wanted to see if there are some tools I could use for a faster development. Something that would give me a starting point with basic functionalities such as content, users, settings etc.</p>\n<p>After reading a lot of tutorials on PHP, I also read about Joomla, WordPress and similar. So I went for both. I was so confused by Joomla and how everything I wanted to do required me several clicks. After that, I tried WordPress. I loved it. Joomla had articles, which you could set as pages. WordPress had Posts and Pages. I really loved how everything was so easy to setup. At that time, there were no custom post types or featured images, but I did not need them yet. I was just beginning my journey with WordPress.</p>\n<p>From there forward I downloaded many themes and plugins just to read their code and learn how they’ve been developed.</p>\n<h3>The First Breadcrumbs &amp; Disappointments</h3>\n<p>Even though I did not know too much, I did know how to develop something, how to use a library and integrate it into my own and so on.</p>\n<blockquote><p>The first time I realised that WordPress could help me have a dream job is when I created a simple Dropbox plugin for my own needs.</p></blockquote>\n<p>Once I’ve built it and scanned through CodeCanyon, I saw there was nothing like that (now there are several). So I went and uploaded it there. It went live after a week or so.</p>\n<p>I did not expect much from it. I could gather around $300 from it after several months. As a college student who didn’t work on a side job, such income was really great for me.</p>\n<p>That is where it all started for me. I decided to use WordPress for any new projects and build custom ones to learn more.</p>\n<p>Don’t get me wrong. It was not so easy to get new projects. I did get a job as a student which was a failure in the sense that I did not get paid for it. I also had another freelancing experience that was not good. But that did not let me down.</p>\n<p>You WILL get those clients from hell. It is something I think most of us get to know. But in time, you will learn how to identify such clients and pass on such projects.</p>\n<p>Fast forward a year and I got a job where I did not use WordPress. But I did not intend to leave it. I joined Elance (now Upwork) so I could earn some side money using WordPress.</p>\n<p>I did not earn anything on Elance and on my daily job, for a year, I was getting only 60% of the monthly paycheck because the Company did not have enough money. Somehow they did get the other 40% by the end of the month.</p>\n<p>But can you imagine how stressful was that? You can never know if you can travel or save some money. I could not afford purchasing a course which could improve my knowledge.</p>\n<p>I had a job where I liked to work, but the money situation was really stressful and I did not want to rely just on the company. WordPress to the rescue!</p>\n<h3>WordPress Community</h3>\n<p>Not long after, I learned about WordPress Croatia. Before that, I never used social media for such discussions and networking. That Facebook group was the first group I joined to discuss about WordPress and help each other.</p>\n<p>That was really a great experience. I learned about WordCamps and Meetups and that group pushed me into making my first eBook on WordPress. Another product I was able to earn some side money which involved WordPress. My mindset started to change.</p>\n<blockquote><p>By helping others through teaching and discussion, I can also help the WordPress Community.</p></blockquote>\n<p>My first experience on public speaking was on a WordPress Meetup in Zagreb. I would never go if I was not invited by Emanuel Blagonić. A great guy who with his brother Lucijan and several other folks really started a WordPress movement in Croatia.</p>\n<p>I never seen anything like that before. People helping each others, going so much to take their own free time to fix or at least investigate a bug on someone else’s site. I really liked it and wanted to be a part of such a community.</p>\n<p>Even if such a community does not help you directly to land a job or get a new gig, it really does help you indirectly with all the knowledge that is shared (from development to business).</p>\n<h3>Teaching &amp; Job Opportunities</h3>\n<p>Because of the WordPress community in Croatia, I wanted to help by teaching others. So I also started a site where I have written a lot of tutorials on WordPress development. That site was in Croatian so people can start much sooner (even if they don’t know English).</p>\n<p>I used to sleep only for 2 to 3 hours so I could get up much earlier and start to write tutorials or make videos. I did not have a microphone at first, so I used a webcam as a microphone. You can imagine how awful the audio was. Even if it’s in Croatian, you can check the quality of it on <a href="https://www.youtube.com/channel/UCzcRclnBSnJRPM5h4PfnqWw">YouTube</a>.</p>\n<blockquote><p>But I was really happy I could help someone who knows less than me.</p></blockquote>\n<p>By teaching, I have learned a lot and I am so thankful to the community which was one of the reasons I kept going like that. I also got invited to several WordPress projects just because people saw me as someone who understands WordPress.</p>\n<h3>WordCamps &amp; WebCamps</h3>\n<p>You can make friends there. Seems a bit odd maybe, but you can. Due to the community I made some friends such as Ana &amp; Marko from <a href="https://www.anarieldesign.com/">anarieldesign.com</a> and Goran Jakovljević from <a href="https://wpgens.com/">wpgens.com</a>.</p>\n<p>We have become friends through the community on social media. I’ve met them all just after a year or so on WordCamp Zagreb 2017. But we talked as if we were friends for years and years. I’ve seen how people from all over the world talk to each other and how a friendly and welcoming this WordPress Community is.</p>\n<p>Even today, I frequently talk to all of them and we help each other as we can. That is something that you can’t have everywhere.</p>\n<p><a href="https://heropress.com/wp-content/uploads/2017/12/codeable.png"><img class="alignleft size-medium wp-image-2359" src="https://heropress.com/wp-content/uploads/2017/12/codeable-300x270.png" alt="Codeable sticker on a ski helmet" width="300" height="270" /></a>My dream job progress came after WebCamp Zagreb 2016 where I met other people from the IT community. I got introduced to Toptal and just a month from it, I joined Toptal. Codeable was also something I wanted to try and I did. As if those platform communicated together, I got invited into <a href="https://codeable.io/">Codeable</a> a week after I joined <a href="https://www.toptal.com/">Toptal</a>.</p>\n<p>That is where it all has started getting real to me. I was able to freelance as much as I wanted and when I wanted. It was the first time I could go do my hobbies without worrying about money.</p>\n<h3>The Dream Job we all seek</h3>\n<p>My definition of a dream job is the feeling when you’re waking up happy and not sad because you have to go to work. Such job should also challenge you so you learn something new. Sometimes it may even get you out of your comfort zone, but you’ll be a better person because of it.</p>\n<p>I still have an occupied day, working on a daily job and then working with my own clients. It may not suit all. But I am finally able to feel somehow financially free, going happy to work and making friends while doing it. Even if I don’t have any side projects, I am working on my plugins and writing tutorials on my own site (I love it).</p>\n<p>Today, for the first time, I am planning to go to a WordCamp outside Croatia.</p>\n<p><strong>That is all thanks to WordPress.</strong></p>\n<p>You know that you should never stop dreaming, right?</p>\n<p>I guess, I wanted to let you know that WordPress can help you get a dream job! It can be something totally different, but as long as it involves Internet, I think WordPress can help you with it.</p>\n<p><strong>WordPress would not be where it is today if it was not to the whole WordPress Community. So, thanks to all involved in it!</strong></p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: WordPress allowed me to have a Dream Job" class="rtsocial-twitter-button" href="https://twitter.com/share?text=WordPress%20allowed%20me%20to%20have%20a%20Dream%20Job&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: WordPress allowed me to have a Dream Job" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F&title=WordPress+allowed+me+to+have+a+Dream+Job" rel="nofollow" target="_blank" title="Share: WordPress allowed me to have a Dream Job"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/wordpress-allowed-dream-job/&media=https://heropress.com/wp-content/uploads/2017/12/121917-150x150.jpg&description=WordPress allowed me to have a Dream Job" rel="nofollow" target="_blank" title="Pin: WordPress allowed me to have a Dream Job"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/wordpress-allowed-dream-job/" title="WordPress allowed me to have a Dream Job"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/wordpress-allowed-dream-job/">WordPress allowed me to have a Dream Job</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Dec 2017 07:00:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Igor Benić";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Akismet: Version 4.0.2 of the Akismet WordPress Plugin Is Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1982";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"https://blog.akismet.com/2017/12/18/version-4-0-2-of-the-akismet-wordpress-plugin-is-now-available/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1161:"<p>Version 4.0.2 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.2 contains a few helpful changes:</p>\n<ul>\n<li class="p1"><span class="s1">Fixed a bug that could cause Akismet to recheck a comment that has already been manually approved or marked as spam.</span></li>\n<li class="p1"><span class="s1">Fixed a bug that could cause Akismet to claim that some comments are still waiting to be checked when no comments are waiting to be checked.</span></li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1982/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1982/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1982&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 18 Dec 2017 16:56:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Stephane Daury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: Jetpack 5.6.1 Increases Security of the Contact Form Module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77061";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wptavern.com/jetpack-5-6-1-increases-security-of-the-contact-form-module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:575:"<p>Jetpack has <a href="https://jetpack.com/2017/12/14/jetpack-5-6-1/">released version 5.6.1</a> which hardens the Contact Form module by improving permissions checking when updating a form&#x27;s settings. In addition to security fixes, the character count for when Publicize publishes content to Twitter has been increased to 280. </p>\n\n\n\n<p>This release also fixes a bug that disabled the ability to save widgets after removing a Widget Visibility rule. Users are encouraged to update as soon as possible, especially if you make heavy use of the Contact Form module. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 15 Dec 2017 22:49:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: WPWeekly Episode 297 – WordCamp US 2017 Recap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77042&preview=true&preview_id=77042";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wptavern.com/wpweekly-episode-297-wordcamp-us-2017-recap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2715:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I are joined by <a href="https://mor10.com/">Morten Rand-Hendriksen</a>. We have an engaging conversation about WordCamp US 2017, Gutenberg, and what it&#8217;s going to take for it to succeed. Rand-Hendriksen shared what he thinks are <a href="https://mor10.com/gutenberg-and-the-future-of-wordpress-conditions-for-success/">the three conditions</a> that need to be met before Gutenberg can be shipped.</p>\n<p>Near the end of the show, we discuss the possible impacts Gutenberg&#8217;s timeline may have on the WordPress economy. Jacoby and I round out the show by reviewing the 2017 State of the Word and our picks of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/storify-to-close-may-16-2018-wordpress-plugin-discontinued">Storify to Close May 16, 2018, WordPress Plugin Discontinued</a><br />\n<a href="https://wptavern.com/gutenberg-and-the-wordpress-of-tomorrow-by-morten-rand-hendriksen" rel="bookmark">Gutenberg and the WordPress of Tomorrow by Morten Rand-Hendriksen</a><br />\n<a href="https://bridgetwillard.com/economic-impact-timeline-gutenberg-rollout/">The Economic Impact of the Timeline of the Gutenberg Rollout</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://www.copytrans.net/copytransheic/">CopyTrans</a> is a plugin for Windows to view HEIC files. In iOS 11, Apple started using HEIC/HEIF. HEIF stands for High Efficiency Image Format, and, as the name suggests, is a more streamlined way to store image files. It allows digital photographs to be created in smaller files sizes while retaining higher image quality than its JPEG alternative. The image format is currently not supported in Windows 7, 8, and 10.</p>\n<p>CopyTrans HEIC for Windows is a simple Windows plugin that allows you to open HEIC files using Windows Photo Viewer. This format is also <a href="https://core.trac.wordpress.org/ticket/42775">not compatible with WordPress.</a></p>\n<p><a href="http://github.com/10up/wpsnapshots">WP Snapshots</a> is a command line interface (CLI) tool by 10Up that empowers engineering teams to quickly share WordPress projects, including files and the database.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #297:</strong> </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Dec 2017 00:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"HeroPress: Finding My Way Out Of My Comfort Zone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2341";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:122:"https://heropress.com/essays/finding-way-comfort-zone/#utm_source=rss&utm_medium=rss&utm_campaign=finding-way-comfort-zone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:20133:"<img width="960" height="480" src="https://heropress.com/wp-content/uploads/2017/12/121317-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: As web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky." /><p>I don&#8217;t remember when we had a computer for the first time. I practically grew up with them. Hungary was a communist country when I was born in &#8217;84, so while everyone had a job, no one could really do their own thing. Everything was state owned.</p>\n<p>In 1989-1990 there was a change of regime which followed the collapse of the Berlin wall, and suddenly the country became a democracy, and people were free to start and own companies. Yes, the era also had other problems, like 35% inflation at one point, but at least we were &#8220;free&#8221;.</p>\n<p>My parents started out by importing computers from Hong Kong. That was a huge thing. We had one of the first of those, a 286 with a whopping speed of 8 Mhz which went up to 16 if I pressed the Turbo button! I had no idea what that meant though besides the number being higher.</p>\n<p><a href="https://heropress.com/wp-content/uploads/2017/12/young_gabor.jpg"><img class="aligncenter size-large wp-image-2343" src="https://heropress.com/wp-content/uploads/2017/12/young_gabor-1024x576.jpg" alt="Gabor about age 3, at a computer" width="960" height="540" /></a></p>\n<p>It was a good time of Sim City, Prince of Persia, and Sokoban.</p>\n<h3>Finding the Web</h3>\n<p>My first &#8220;website&#8221; was one my grandmother asked me to make for her Quaker group. I was 12. I created it with tables and inline styling (CSS wasn&#8217;t a thing back then), but never got it live &#8211; hosting wasn&#8217;t something I really knew about.</p>\n<p>Fast forward to 2003 when I started university studying architecture in Budapest. It was fun, I loved physics, I loved drawing, I loved math, I <em>especially</em> loved descriptive geometry! The latter is pretty much &#8220;how to represent a 3d thing on a sheet of paper&#8221;. Incidentally that brought me my first high paying consulting job. As a student in 2nd year I coached a student in first year in descriptive geometry &#8211; he had broken his leg so couldn&#8217;t actually make the classes, but he had to pass that subject to advance. So every week I would go to their house and spend about 3 hours helping him draw and figure out how to draw what to draw and why to draw those things that way. That experience taught him everything he needed to know to pass with a 4 (on a scale of 5, 5 being best), which translates to around 80%. I had my first satisfied customer. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" /></p>\n<p>It also taught me two very important things:</p>\n<ol>\n<li>if you&#8217;re good at it, they will overlook the fact that you&#8217;re not actually &#8220;qualified&#8221; to do the thing (I wasn&#8217;t a TA / lecturer. I was merely another student in an upper class. An upperclassman. 先輩)</li>\n<li>if you&#8217;re good at it, you can charge people a lot more than you otherwise think. I got paid about 3x the standard hourly wage of adults working the majority of hourly jobs, and as a student, that was awesome!</li>\n</ol>\n<p>For context though, there is no tuition fee for your first degree (i.e.: it&#8217;s paid for by the government for you which gets that money from taxes).</p>\n<p>The second formative experience was between 2004-2006. I joined an extracurricular architecture club. Basically students who don&#8217;t just want to bumble through the university but actually get good! Like, REALLY GOOD. We pitched to host EASA &#8211; European Architecture Students&#8217; Assembly &#8211; in Budapest in 2006. For that we needed a website, both an internal forum, and a public facing site for sponsors / attendees / workshops / visitors / everyone.</p>\n<p>I knew nothing besides basic html.</p>\n<p>So naturally I volunteered.</p>\n<h3>Leveling up</h3>\n<p>I learned PHP, MySQL, and Flash from books: learn php in 24 hours, PHP 4 reference, learn mysql in 24 hours, learn flash in 24 hours, etc. I had one guy over the internet who helped me figure out things in PHP, but other than that I was all alone. Stack Overflow wasn&#8217;t a thing either. Wild times. From memory I could probably exploit that engine in one of 284 ways today. I&#8217;m glad it&#8217;s not online any more. The flash site is, it&#8217;s somewhat broken, but here you go: <a href="https://javorszky.github.io/ancientflashsite/" rel="nofollow">https://javorszky.github.io/ancientflashsite/</a></p>\n<p>I built a forum engine and a full actionscript site. We also had a requirement that whoever applies to host whatever workshop, we need to judge the workshop on its own merit, not on who submits it, so I built the submit form in such a way that it took the files, and renamed them, scrubbed the email addresses that reached the judging committee, and we made it a rule that if there&#8217;s any identifying information ON the pdf, it&#8217;s immediately disqualified. The year is 2005.</p>\n<p>Looking back, I realized two things:</p>\n<ol>\n<li>learn to learn on the job, and learn to enjoy not knowing stuff. Nobody does, really</li>\n<li>biases are real. Mitigate them. Even the ones you don&#8217;t know about. Especially the ones you don&#8217;t know about! Or at least have a framework by which you acknowledge if you&#8217;re called out</li>\n</ol>\n<h3>Moving On</h3>\n<p>I then decided to not continue my studies there. I was failed in one class where I expected a strong pass. We were split into 12 groups, and groups 1 and 2 got mostly failed, and groups 3-12 got overwhelmingly passed. Something wasn&#8217;t right, I spoke up, but I was a student, and they were faculty. I left because I didn&#8217;t feel like fighting and losing my soul over it.</p>\n<blockquote><p>Something wasn&#8217;t right, I spoke up, but I was a student, and they were faculty. I left because I didn&#8217;t feel like fighting and losing my soul over it.</p></blockquote>\n<p>I continued making websites for myself and got introduced to WordPress around this time. I don&#8217;t remember my first project. I <em>think</em> it was a site I built for myself in 8 hours for a competition which led me to my first paying website job, which I totally screwed up.</p>\n<p>In 2010 I decided to move countries with 3 friends I went to university with, at the time I was studying International Tourism Management, and I could transfer to Oxford Brookes University (not the one you heard about).</p>\n<p>I missed the application deadline.</p>\n<p>Which meant that I had to find work. When I bought my plane ticket I decided that whatever it takes, I will make it work. Staying in Hungary was not an option for me: I didn&#8217;t like the politics, I didn&#8217;t like where the country was heading economically, and I longed for a more cheerful society to surround me. Movement rights and language I can speak and other people going the same way helped me decide on the UK.</p>\n<h3>Restarting</h3>\n<p>So I made it work: I accepted the first full time job that I got offered. I worked as a wait staff at the restaurant of one of the luxury hotels in the city. It had very little to do with computers, but I had income, I could pay back the help I got from my friends (and by extension, their families), and I could actually take control of my own life instead of just bumping into furniture.</p>\n<blockquote><p>It had very little to do with computers, but I had income, I could pay back the help I got from my friends (and by extension, their families), and I could actually take control of my own life [&#8230;]</p></blockquote>\n<p>I&#8217;ve learned a lot from working there. Chef taught me that literally no one cares WHY there was a mistake at that time in putting through an order &#8211; what&#8217;s important is what the error was, what&#8217;s needed to correct it. Everything else is wasting everyone&#8217;s time. Of course we&#8217;d go through these after the service.</p>\n<p>I&#8217;ve learned that to work in hospitality, you have to leave your ego at the door. Doesn&#8217;t mean you should take abuse, but there you&#8217;re part of a &#8211; hopefully &#8211; finely tuned, oiled machinery, and keeping the whole thing operating is the number one goal. Turns out that&#8217;s also applicable to working in teams in general.</p>\n<p>A year goes by, and we need to move out of the house we&#8217;re renting. In a break between morning and evening shifts I look at the job postings in the local newspaper: someone&#8217;s looking for a developer! It was a Wednesday. I got an interview for Friday, and started on Monday. I had to talk to my supervisor to move me to evening-only shifts because I have a second desk job. My days: 9am &#8211; 4:45pm developer, 5pm &#8211; 2am (ish, whenever we finished) waiting tables. Rinse and repeat.</p>\n<p>Working 60-80 hours could only go on for so long. After about 3 months I had a very sharp chest pain while on shift at the restaurant. Had to walk home (normally I cycle), and then made my way to the emergency room where after having waited 5 hours, I got an X-ray, and EKG, and the doctor determined there&#8217;s nothing wrong, so here&#8217;s some Ibuprofen (3&#215;1) and some Paracetamol (1&#215;1).</p>\n<blockquote><p>Kids, don&#8217;t work 60-80 hours a week.</p></blockquote>\n<p>&#8220;Uh, which one should I take on a day?&#8221; &#8220;Oh&#8230; both!&#8221;</p>\n<p>I went home, took the first dose, and slept for 22 hours. I handed in my resignation 2 days later at the restaurant because I needed to not work that much. My manager pleaded me to stay at least on part time, which I did, because they were genuinely lovely people.</p>\n<p>Kids, don&#8217;t work 60-80 hours a week.</p>\n<h3>Back to the web with full steam</h3>\n<p>After a year at the development agency + restaurant combo, I got hired to a WordPress agency through recruiters. My new boss asked me why I haven&#8217;t applied to them directly, even though I saw their ad, why I waited to go through a recruiter. I said I didn&#8217;t think I was good enough. That decision ended up costing him a few thousand pounds in recruitment fees.</p>\n<p>I quit my restaurant job for good. I also learned a lesson to actually trust myself.</p>\n<p>Something that during the 2,5 years with them I would question a lot of times. There have been instances when I made mistakes that were incredibly easy to avoid had I just taken 5 more minutes to think. But every time it was something we could correct fairly fast (shoutout to hospitality experience!) and then I had a postmortem, and changed the way I work to avoid similar problems.</p>\n<p>I had the privilege to work on some seriously challenging WordPress sites while with them. That was my first actual commercial experience with it. We built blogs from Oxford University (the one you heard about) to eCommerce site migrations from Magento using Jigoshop and later WooCommerce.</p>\n<p>I&#8217;ve had to disassemble how WooCommerce worked fairly fast because of some of the client requirements, and I got pretty good at it.</p>\n<p>In November 2014 I got hired to one of the product companies around WooCommerce and spent a year and a half with them maintaining their plugins, answering customer queries and helping them fix their sites occasionally. That was my first help desk experience.</p>\n<p>I got access to some incredibly large eCommerce stores and I quickly discovered where the bottlenecks were in our plugins, WordPress, and WooCommerce itself. Some of the customers had access to New Relic, which I could use to help me find what&#8217;s taking so long.</p>\n<p>From then on it was just a case of finding what&#8217;s slow, following it back, reading the documentation and code on why it&#8217;s slow, and coming up with ideas on how to fix it.</p>\n<p>I got really good at this.</p>\n<h3>The Freelance Days</h3>\n<p>At the end of July 2016 our ways parted, and I had a buffer of about 3 months when I didn&#8217;t need to worry about having to find another job. While trying to figure out what to do, where next, I started getting requests to work on some projects. They asked me my hourly rate. I said a number I was slightly uncomfortable with, they said yeah, and off I went.</p>\n<blockquote><p>[&#8230;] I started getting requests to work on some projects. They asked me my hourly rate. I said a number I was slightly uncomfortable with, they said yeah [&#8230;]</p></blockquote>\n<p>It also helped that I was at the time known for my love of hard problems and actually figuring out why things break and fixing them.</p>\n<p>I thought &#8220;hey, if I can command that much hourly rate, I could make this work!&#8221;</p>\n<p>I took on clients, and managed to make things work for&#8230; a surprisingly long time. Having GREAT accountants is a must for self employment.</p>\n<p>I suddenly also had time to pursue some of my other interests: I learned how to ride a motorcycle.</p>\n<p><a href="https://heropress.com/wp-content/uploads/2017/12/gabor_motorcycle.jpg"><img class="aligncenter size-large wp-image-2344" src="https://heropress.com/wp-content/uploads/2017/12/gabor_motorcycle-1024x576.jpg" alt="Gabor standing by a sporty motorcycle" width="960" height="540" /></a></p>\n<p>I started learning Japanese! I got back onto the slackline.</p>\n<p><a href="https://heropress.com/wp-content/uploads/2017/12/gabor_slackline.jpg"><img class="aligncenter size-large wp-image-2345" src="https://heropress.com/wp-content/uploads/2017/12/gabor_slackline-1024x768.jpg" alt="Gabor balancing on a narrow strap hung between two trees" width="960" height="720" /></a></p>\n<p>I got to speak at WordCamp Brighton in 2017!</p>\n<p><a href="https://heropress.com/wp-content/uploads/2017/12/gabor_wordcamp.jpg"><img class="aligncenter wp-image-2346 size-large" src="https://heropress.com/wp-content/uploads/2017/12/gabor_wordcamp-1024x683.jpg" alt="Gabor, on stage at WordCamp Brighton" width="960" height="640" /></a></p>\n<p>Until very recently, it was a game of &#8220;how long can I be self employed before I need to look for a job?&#8221; Turns out I couldn&#8217;t answer this, because an opportunity came up to join Mindsize as a lead backend developer.</p>\n<p>When I heard about them starting up a few months prior, I had two thoughts:</p>\n<ol>\n<li>they are probably the only company I would stop doing freelance work for</li>\n<li>I&#8217;m not good enough to work with them yet</li>\n</ol>\n<p>Statement 1 was true :).</p>\n<h3>Catching up with the present</h3>\n<p>This brings us into the very recent present. It&#8217;s maybe a month old development at the time of publication. Since then I&#8217;ve been working really hard to reclaim my time of about 40 hours worked a week. With the holiday push of the clients I had as a freelancer, there was a transition phase where I had to work 60-80 hours.</p>\n<p>Don&#8217;t work 60-80 hours a week, kids!</p>\n<p>Looking back it was incredibly humbling experience so far, but also exciting, and full of challenges, and learnings. I&#8217;ve made a lot of excellent friends, and luckily very few enemies. I am grateful for each and every one of them.</p>\n<p>I don&#8217;t know where life takes me. For the foreseeable future I&#8217;ll be with Mindsize and will make eCommerce sites awesome, and will make awesome eCommerce sites. But I&#8217;ll also try and pass on some of the things I&#8217;ve learned by helping people new to the industry.</p>\n<p>There are a lot more things I could say, but they aren&#8217;t necessarily part of my journey, so I&#8217;ll save them for some other time.</p>\n<h3>On privilege</h3>\n<blockquote><p>We, as web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky.</p></blockquote>\n<p>Except for one thing. When I worked at the WordPress agency, Twitter, and by extension, society, started the &#8220;check your privilege&#8221; trend. It took a while to understand what it was all about, but it&#8217;s something I wish everyone did.</p>\n<p>We, as web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky. I&#8217;ve realized that my journey wouldn&#8217;t have been possible had I been born to less fortunate circumstances:</p>\n<p>If my parents didn&#8217;t make the decision to start teaching me English when I was 3.</p>\n<p>If I didn&#8217;t have the financial stability in my family to be able to just explore what I like to do.</p>\n<p>If I didn&#8217;t have the financial stability to just drop out of university after 3 years because &#8220;I didn&#8217;t like it&#8221;. And another one after a semester. And never finish my Tourism Management course.</p>\n<p>If I didn&#8217;t live in a developed nation with easy access and high standards of living.</p>\n<p>This brings into mind one of my favorite tweets:</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Your job, lucky person, is to help others less lucky than you to improve their odds.</p>\n<p>&mdash; Dylan Wilbanks, Human Grumpy Cat (@dylanw) <a href="https://twitter.com/dylanw/status/522060876304486400?ref_src=twsrc%5Etfw">October 14, 2014</a></p></blockquote>\n<p></p>\n<p>Not everyone has these opportunities and every day I am conscious of it.</p>\n<p>Humans are hard. Interpersonal skills are hard. Treating each other with dignity, respect, and grace is hard if you haven&#8217;t been brought up with those values as a kid. It&#8217;s been a challenge for me to shed the &#8220;boys will be boys&#8221; upbringing I was carrying.</p>\n<p>Let&#8217;s use our power and means and help the less fortunate walk their own paths. Let&#8217;s lessen marginalization with the view of ending it. Let&#8217;s be excellent to each other!</p>\n<p>And don&#8217;t use &#8220;guys&#8221; to mean everyone!</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Finding My Way Out Of My Comfort Zone" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Finding%20My%20Way%20Out%20Of%20My%20Comfort%20Zone&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Finding My Way Out Of My Comfort Zone" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F&title=Finding+My+Way+Out+Of+My+Comfort+Zone" rel="nofollow" target="_blank" title="Share: Finding My Way Out Of My Comfort Zone"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/finding-way-comfort-zone/&media=https://heropress.com/wp-content/uploads/2017/12/121317-150x150.jpg&description=Finding My Way Out Of My Comfort Zone" rel="nofollow" target="_blank" title="Pin: Finding My Way Out Of My Comfort Zone"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/finding-way-comfort-zone/" title="Finding My Way Out Of My Comfort Zone"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/finding-way-comfort-zone/">Finding My Way Out Of My Comfort Zone</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Dec 2017 08:00:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gabor Javorszky";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WPTavern: Storify to Close May 16, 2018, WordPress Plugin Discontinued";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76992";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/storify-to-close-may-16-2018-wordpress-plugin-discontinued";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2906:"<p><a href="https://storify.com/">Storify</a>, a service that launched in 2010 and opened to the public in 2013 has announced that it is shutting down version one of its service on May 16th, 2018. Concurrently, its WordPress plugin that is actively installed on more than 2,000 sites has been <a href="https://wordpress.org/plugins/storify/">discontinued</a>. </p>\n\n\n\n<img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/12/StorifyPluginDiscontinued.png?w=627&ssl=1" />\n    Storify Plugin is Discontinued\n\n\n\n\n<p>Storify enabled journalists and others to build stories and timelines similar to Twitter and other social networks. The service <a href="https://techcrunch.com/2013/09/09/livefyre-acquires-storify/">was acquired</a> by <a href="http://www.livefyre.com">Livefyre</a> in 2013 and became part of Adobe when it <a href="https://techcrunch.com/2016/05/03/adobe-acquires-livefyre/">acquired Livefyre</a> in 2016. </p>\n\n\n\n<p>Storify has disabled new accounts from being created and will delete stories and accounts on May 16th, 2018. Existing users who want to move to Storify 2, a paid feature of Livefyre, will need to purchase a license. The service has <a href="https://storify.com/faq-eol">published a FAQ</a> that includes directions on how to export content. </p>\n\n\n\n<h2>New Plugin Opportunity</h2>\n\n\n\n<p>According to some users, the export process is cumbersome, providing an excellent opportunity for a prospecting developer to create a WordPress plugin that makes the process easier. A search of the WordPress plugin directory for Storify Export produces zero results. <br /></p>\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">A fantastic <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> dev opportunity: <a href="https://twitter.com/Storify?ref_src=twsrc%5Etfw">@Storify</a> just announced its "End of Life" for May 2018. The export is kinda lame. If I could import a story from Storify into a WordPress Post/Page that would be fabulous! I have a few stories that I wouldn''t want to lose. <a href="https://twitter.com/hashtag/biz?src=hash&ref_src=twsrc%5Etfw">#biz</a></p>&mdash; Birgit Pauli-Haack (@bph) <a href="https://twitter.com/bph/status/940706045449703424?ref_src=twsrc%5Etfw">December 12, 2017</a></blockquote>\n\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">I have a lot of Storify stories I''d hate to lose, too. If you hear of someone doing this, I''d love to know about it.</p>&mdash; Deborah Edwards-Onoro (@redcrew) <a href="https://twitter.com/redcrew/status/940729186469253120?ref_src=twsrc%5Etfw">December 12, 2017</a></blockquote>\n\n\n\n\n<p>If you know of any methods or plugins that eases the process of exporting content from Storify and importing it to WordPress, please share them in the comments. Also feel free to let us know if you create a plugin that performs this task. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Dec 2017 07:30:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: Gutenberg and the WordPress of Tomorrow by Morten Rand-Hendriksen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76959";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wptavern.com/gutenberg-and-the-wordpress-of-tomorrow-by-morten-rand-hendriksen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1054:"<p>While attending WordCamp US 2017, there were a number of sessions that stood out to me. <a href="https://wordpress.tv/2017/12/10/morten-rand-hendriksen-gutenberg-and-the-wordpress-of-tomorrow/">Gutenberg and the WordPress of Tomorrow</a> by Morten Rand-Hendriksen was one of them. </p>\n\n\n\n<p>Hendriksen explains the state of WYSIWYG in WordPress and how it doesn&#x27;t really exist but Gutenberg provides opportunities to change that. He explores developing sites without being confined to a small view port. He also performs a live demo of Gutenberg showing off its capabilities.</p>\n\n\n\n<p>An interesting outcome from his presentation is the amount of optimism and excitement it generated from the audience. During the question and answer session, a member of the audience commented on how far Gutenberg has advanced in the last three months and that it looks cool to use now. </p>\n\n\n\n<p>To gain insight into how Gutenberg can moonshot WordPress over its competition, watch Hendriksen&#x27;s presentation. </p>\n\n\n\n\n    <div class="embed-wrap"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Dec 2017 20:57:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 02 Feb 2018 13:36:11 GMT";s:12:"content-type";s:8:"text/xml";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Fri, 02 Feb 2018 13:30:28 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(166, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1517621773', 'no'),
(167, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1517578573', 'no'),
(168, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1517621773', 'no'),
(169, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2018/02/the-month-in-wordpress-january-2018/''>The Month in WordPress: January 2018</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2018/02/the-month-in-wordpress-january-2018/''>Dev Blog: The Month in WordPress: January 2018</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordpress-4-9-3-rescheduled-for-february-5th''>WPTavern: WordPress 4.9.3 Rescheduled for February 5th</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/woocommerce-3-3-removed-from-plugin-directory-due-to-theme-conflicts''>WPTavern: WooCommerce 3.3 Removed From Plugin Directory Due to Theme Conflicts</a></li></ul></div>', 'no'),
(174, 'theme_mods_newTheme', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517588166;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(189, 'category_children', 'a:0:{}', 'yes'),
(194, 'theme_mods_raniaTheme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517588345;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(196, 'theme_mods_MyTheme', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517601622;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(203, 'theme_mods_arabum', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517600808;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(204, '_site_transient_timeout_theme_roots', '1517603420', 'no'),
(205, '_site_transient_theme_roots', 'a:7:{s:20:"Mohamed hassan Theme";s:7:"/themes";s:7:"MyTheme";s:7:"/themes";s:6:"arabum";s:7:"/themes";s:8:"newTheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(207, '_transient_timeout_plugin_slugs', '1517687803', 'no'),
(208, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:28:"social-share/SocialShare.php";}', 'no'),
(209, 'recently_activated', 'a:0:{}', 'yes'),
(210, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1517601386;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:9:"hello.php";s:3:"1.6";s:28:"social-share/SocialShare.php";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:28:"social-share/SocialShare.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/social-share";s:4:"slug";s:12:"social-share";s:6:"plugin";s:28:"social-share/SocialShare.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/plugins/social-share/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/social-share.1.3.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(211, 'widget_socialshare-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(212, 'widget_fb-activity-feed-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(213, 'widget_fb-recommendations-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(214, 'widget_fb-light-box-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(215, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1517612221', 'no'),
(216, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4425;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2555;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2534;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2394;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1857;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1627;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1626;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1444;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1377;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1376;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1368;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1294;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1282;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1178;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1081;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1056;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1010;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:986;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:855;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:849;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:821;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:791;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:786;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:687;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:684;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:681;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:671;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:669;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:653;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:650;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:639;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:626;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:626;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:604;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:601;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:594;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:594;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:584;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:584;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:577;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:552;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:540;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:535;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:525;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:516;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:509;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:509;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:501;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:487;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:484;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:483;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:475;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:471;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:463;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:461;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:456;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:450;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:449;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:432;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:422;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:419;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:416;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:414;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:411;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:407;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:400;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:392;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:388;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:383;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:360;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:360;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:353;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:351;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:340;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:339;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:339;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:337;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:333;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:332;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:331;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:331;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:329;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:327;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:325;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:317;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:311;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:308;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:304;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:299;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:293;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:289;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:289;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:286;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:286;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:284;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:282;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:280;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_edit_lock', '1517584218:1'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1517583205:1'),
(7, 1, '_edit_last', '1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1517584720:1'),
(18, 10, '_edit_last', '1'),
(19, 10, '_edit_lock', '1517584771:1'),
(24, 12, '_edit_last', '1'),
(25, 12, '_edit_lock', '1517584846:1'),
(28, 14, '_edit_last', '1'),
(29, 14, '_edit_lock', '1517589281:1'),
(32, 16, '_wp_attached_file', '2018/02/Screenshot-from-2018-01-29-22-44-23.png'),
(33, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:47:"2018/02/Screenshot-from-2018-01-29-22-44-23.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"Screenshot-from-2018-01-29-22-44-23-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:47:"Screenshot-from-2018-01-29-22-44-23-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:47:"Screenshot-from-2018-01-29-22-44-23-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:48:"Screenshot-from-2018-01-29-22-44-23-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:11:"nozha_thumb";a:4:{s:4:"file";s:47:"Screenshot-from-2018-01-29-22-44-23-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"nozha_thumb2";a:4:{s:4:"file";s:45:"Screenshot-from-2018-01-29-22-44-23-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 14, '_thumbnail_id', '16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-31 22:28:54', '2018-01-31 22:28:54', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-02 14:56:12', '2018-02-02 14:56:12', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-31 22:28:54', '2018-01-31 22:28:54', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-01-31 22:28:54', '2018-01-31 22:28:54', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-31 22:29:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-31 22:29:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2018-01-31 22:39:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-31 22:39:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2018-02-02 14:55:44', '2018-02-02 14:55:44', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaa', 'post2', '', 'publish', 'open', 'open', '', 'post2', '', '', '2018-02-02 14:55:44', '2018-02-02 14:55:44', '', 0, 'http://localhost/?p=5', 0, 'post', '', 0),
(6, 1, '2018-02-02 14:55:44', '2018-02-02 14:55:44', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\naaaaaaaaaaaaaaaaaaaaaaaaaa', 'post2', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-02 14:55:44', '2018-02-02 14:55:44', '', 5, 'http://localhost/index.php/2018/02/02/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-02-02 14:56:12', '2018-02-02 14:56:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\n\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-02 14:56:12', '2018-02-02 14:56:12', '', 1, 'http://localhost/index.php/2018/02/02/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-02 15:19:34', '2018-02-02 15:19:34', 'موضه موضه موضه موضه موضه موضه موضه موضه  موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه\r\n\r\nموضه موضه موضه موضه موضه موضه موضه\r\n\r\nموضه ر  موضه  موضه  موضه  موضه  موضه موضه موضه  موضه موضه موضه\r\n\r\nموضه  موضه موضه موضه موضه موضه  موضه موضه', 'مقال موضه', '', 'publish', 'open', 'open', '', '%d9%85%d9%82%d8%a7%d9%84-%d9%85%d9%88%d8%b6%d9%87', '', '', '2018-02-02 15:20:23', '2018-02-02 15:20:23', '', 0, 'http://localhost/?p=8', 0, 'post', '', 0),
(9, 1, '2018-02-02 15:19:34', '2018-02-02 15:19:34', 'موضه موضه موضه موضه موضه موضه موضه موضه  موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه موضه\r\n\r\nموضه موضه موضه موضه موضه موضه موضه\r\n\r\nموضه ر  موضه  موضه  موضه  موضه  موضه موضه موضه  موضه موضه موضه\r\n\r\nموضه  موضه موضه موضه موضه موضه  موضه موضه', 'مقال موضه', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-02 15:19:34', '2018-02-02 15:19:34', '', 8, 'http://localhost/index.php/2018/02/02/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-02-02 15:21:39', '2018-02-02 15:21:39', 'ديكور ديكور  ديكور ديكور ر ديكور ديكور ديكور ديكور\r\n\r\nديكور ديكور ديكور ديكور ديكور ديكور ديكور\r\n\r\nديكور ديكور ديكور ر ديكور ديكور ديكور ديكور', 'ديكور', '', 'publish', 'open', 'open', '', '%d8%af%d9%8a%d9%83%d9%88%d8%b1', '', '', '2018-02-02 15:21:50', '2018-02-02 15:21:50', '', 0, 'http://localhost/?p=10', 0, 'post', '', 0),
(11, 1, '2018-02-02 15:21:39', '2018-02-02 15:21:39', 'ديكور ديكور  ديكور ديكور ر ديكور ديكور ديكور ديكور\r\n\r\nديكور ديكور ديكور ديكور ديكور ديكور ديكور\r\n\r\nديكور ديكور ديكور ر ديكور ديكور ديكور ديكور', 'ديكور', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-02 15:21:39', '2018-02-02 15:21:39', '', 10, 'http://localhost/index.php/2018/02/02/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-02-02 15:23:07', '2018-02-02 15:23:07', 'لايف ستايل\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل\r\n\r\nر\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل لايف ستايل ر لايف ستايل ر ر لايف ستايل لايف ستايل لايف ستايل ر لايف ستايل ر ر لايف ستايل لايف ستايل لايف ستايل لايف ستايل  ر لايف ستايل ر لايف ستايل', 'لايف ستايل', '', 'publish', 'open', 'open', '', '%d9%84%d8%a7%d9%8a%d9%81-%d8%b3%d8%aa%d8%a7%d9%8a%d9%84', '', '', '2018-02-02 15:23:07', '2018-02-02 15:23:07', '', 0, 'http://localhost/?p=12', 0, 'post', '', 0),
(13, 1, '2018-02-02 15:23:07', '2018-02-02 15:23:07', 'لايف ستايل\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل\r\n\r\nر\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل\r\n\r\nلايف ستايل لايف ستايل ر لايف ستايل ر ر لايف ستايل لايف ستايل لايف ستايل ر لايف ستايل ر ر لايف ستايل لايف ستايل لايف ستايل لايف ستايل  ر لايف ستايل ر لايف ستايل', 'لايف ستايل', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-02-02 15:23:07', '2018-02-02 15:23:07', '', 12, 'http://localhost/index.php/2018/02/02/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-02-02 15:23:51', '2018-02-02 15:23:51', 'جمال جمال ر جمال  جمال جمال ر جمال  ر جمال\r\n\r\nجمال  جمال جمال جمال جمال جمال جمال جمالجمال\r\n\r\nر  جمال  جمال جمال جمال جمال جمالر\r\n\r\nجمالجمال جمال جمال جمال ر جمال', 'جمال', '', 'publish', 'open', 'open', '', '%d8%ac%d9%85%d8%a7%d9%84', '', '', '2018-02-02 16:34:40', '2018-02-02 16:34:40', '', 0, 'http://localhost/?p=14', 0, 'post', '', 0),
(15, 1, '2018-02-02 15:23:51', '2018-02-02 15:23:51', 'جمال جمال ر جمال  جمال جمال ر جمال  ر جمال\r\n\r\nجمال  جمال جمال جمال جمال جمال جمال جمالجمال\r\n\r\nر  جمال  جمال جمال جمال جمال جمالر\r\n\r\nجمالجمال جمال جمال جمال ر جمال', 'جمال', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-02 15:23:51', '2018-02-02 15:23:51', '', 14, 'http://localhost/index.php/2018/02/02/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-02-02 16:33:33', '2018-02-02 16:33:33', '', 'Screenshot from 2018-01-29 22-44-23', '', 'inherit', 'open', 'closed', '', 'screenshot-from-2018-01-29-22-44-23', '', '', '2018-02-02 16:33:33', '2018-02-02 16:33:33', '', 14, 'http://localhost/wp-content/uploads/2018/02/Screenshot-from-2018-01-29-22-44-23.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(8, 2, 0),
(10, 3, 0),
(10, 4, 0),
(12, 5, 0),
(12, 6, 0),
(14, 7, 0),
(14, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'موضه', '%d9%85%d9%88%d8%b6%d9%87', 0),
(3, 'ديكور', '%d8%af%d9%8a%d9%83%d9%88%d8%b1', 0),
(4, 'ديكور', '%d8%af%d9%8a%d9%83%d9%88%d8%b1', 0),
(5, 'لايف ستايل', '%d9%84%d8%a7%d9%8a%d9%81-%d8%b3%d8%aa%d8%a7%d9%8a%d9%84', 0),
(6, 'لايف ستايل', '%d9%84%d8%a7%d9%8a%d9%81-%d8%b3%d8%aa%d8%a7%d9%8a%d9%84', 0),
(7, 'جمال', '%d8%ac%d9%85%d8%a7%d9%84', 0),
(8, 'جمال', '%d8%ac%d9%85%d8%a7%d9%84', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mhassan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"28d5a5b20de3b279c2b71c426f33dffe3448d8841060ed6776acd1c5d3919304";a:4:{s:10:"expiration";i:1518647348;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36";s:5:"login";i:1517437748;}s:64:"0246356262bd73543631fa4a38af6ce59fe17576557242043e747173fe2efa55";a:4:{s:10:"expiration";i:1517751361;s:2:"ip";s:3:"::1";s:2:"ua";s:68:"Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1517578561;}s:64:"a32dc57a71fa0edb887e33e1e005a491131ca22d11f38048321029f0f08ebb05";a:4:{s:10:"expiration";i:1517753089;s:2:"ip";s:3:"::1";s:2:"ua";s:68:"Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1517580289;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'wp_user-settings', 'mfold=o&editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1517589241');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mhassan', '$P$BIF9YhcCxKRo.aV6CiTNBsfyt4VPM//', 'mhassan', 'mohamed.hassan.pet@gmail.com', '', '2018-01-31 22:28:54', '1517577792:$P$BgQN0v/eRGy1LvqlnlVt.FxFrla3400', 0, 'mhassan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `wpDB`
--
--
-- Database: `xoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) DEFAULT NULL,
  `moves` varchar(20) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(8) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `high_score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `high_score`) VALUES
(1, '676', '12345', 20),
(2, 'ahmed', '12345', 80),
(3, 'mohamed', '123456', 40),
(5, 'mohagagag', '123456', 0),
(7, 'rania', '123456', 30),
(8, 'aliaa', '123456', 40),
(9, 'abdallah', '123456', 50),
(10, 'omran', '123456', 0),
(11, 'dad', '1', 0),
(12, 'medo', '1', 0),
(16, 'momo', '123', 0),
(17, 'ahhhef', '121', 0),
(21, 'aliaaaa', '123', 0),
(22, 'ahmeddd', '122', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_id` (`game_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
