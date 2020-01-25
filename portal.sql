-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2020 at 01:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-25 07:29:56.553958'),
(2, 'auth', '0001_initial', '2020-01-25 07:30:06.609278'),
(3, 'admin', '0001_initial', '2020-01-25 07:30:09.239330'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-25 07:30:09.297801'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-25 07:30:09.417829'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-25 07:30:11.011177'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-25 07:30:11.658988'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-25 07:30:12.474298'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-25 07:30:12.521952'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-25 07:30:13.531324'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-25 07:30:13.586770'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-25 07:30:13.647437'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-25 07:30:14.457456'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-25 07:30:15.371218'),
(15, 'sessions', '0001_initial', '2020-01-25 07:30:15.952087'),
(16, 'user', '0001_initial', '2020-01-25 07:30:16.396878');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1m6qmaksvdf3q7ncylvtiz23mknobwth', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 10:50:52.113026'),
('2357fa22tzmti4u1plj6b7bqk8orjlkf', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 09:02:41.948221'),
('2sh96u1a4ioets1rkwn39ro5fgab146c', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 11:52:00.651806'),
('3fke8mks10btmioguxgug55cyumjypro', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 07:46:47.767712'),
('53uonjv7u03pda7iq21f88dvjtmwl20i', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 11:57:00.239626'),
('dishy2drjxb9tj3r5wvihcg4viwzzq77', 'MDlkMGE1NGQxOTMyNDJmYzQwNWZiMmNiOTEyM2FhYmMwYmM3MTM3Yjp7InVzZXJfbmFtZSI6bnVsbH0=', '2020-02-08 12:04:35.511530'),
('ducp2jm1v9yuyn95d510skoaingxb0k9', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 08:38:42.193154'),
('ivhvi0xvi58kkjcuvjneunc6y0l2p6l8', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 08:46:35.090377'),
('j9n1ybcd2ahnespohegfqfzhdt4habc5', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 12:04:49.802810'),
('l6kafedogxzedw3ep58ozfynxnxlhbsw', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 12:03:32.236866'),
('m1doxbdnrgco8xmlfm1seeoj34s53q7y', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 07:33:49.700869'),
('mo8dxp8cfvp52vewj8uh6jiyofyue64e', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 08:48:14.777652'),
('n76dfev3z1r20ogbwujjh47tps0ng2el', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 08:38:17.047393'),
('r0can37dl741wk27gultsugosi0kw7j8', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 07:39:14.863119'),
('rqvo9j8794snqx0ocd8x38ozxgyo402a', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 07:48:58.293871'),
('skvklmd6ipt4hruv6s3an3hiu6c4fpiq', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 10:54:01.272421'),
('wmw94c8kqbyauyjkdkvj96tij27gaoc5', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 07:53:13.080245'),
('wtfyxb6ij5iptlrlawwmbe7sz4ieb19k', 'NWM1MGI2Mjc4NDg4NDM1ODU0ZWE3NmRkYTIxOWE3NDQwYWUwMDgyMjp7InVzZXJfbmFtZSI6ImFkbWluQGxvY2FsaG9zdC5sb2NhbCJ9', '2020-02-08 11:32:22.360341'),
('wv5ar2385bjnmwpfiv9ahwa9cqrnibuz', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 08:15:52.215782'),
('xwlvifn0xrqjmcrphwk5obimvghkp5xq', 'MDlkMGE1NGQxOTMyNDJmYzQwNWZiMmNiOTEyM2FhYmMwYmM3MTM3Yjp7InVzZXJfbmFtZSI6bnVsbH0=', '2020-02-08 12:24:08.902985'),
('y8vils6yveg3qbhfbn4y2m2o53xew8ek', 'MTBiOGQ0YTZhNjcxNjEzZjMyZDcxYzgzMmEzZjBmZTVkNTExYWMyMjp7InVzZXJfbmFtZSI6InphaGlkQGdtYWlsLmNvbSJ9', '2020-02-08 11:46:02.756811');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` longtext,
  `phone` longtext,
  `email` varchar(255) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `address`, `phone`, `email`, `dob`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Zahid', 'Hasan', 'Nikunja-2, Khilkhet, Dhaka', '1745522198', 'zahid@gmail.com', 'Sun Oct 05 1997 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'zzz555', 0, '2020-01-25 07:33:34.059185', '2020-01-25 07:34:11.432949'),
(2, 'ADMIN', '', 'Banani, Dhaka', '01563256698', 'admin@localhost.local', 'Sun Oct 05 1997 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'admin', 1, '2020-01-25 07:33:34.059185', '2020-01-25 07:34:11.432949'),
(3, 'Noman', 'Khan', 'sjdnbfhfnb', '54154545454', 'noman@gmail.com', 'Wed Aug 10 2005 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'nnn555', 0, '2020-01-25 07:40:26.398701', '2020-01-25 07:40:26.398791'),
(4, 'Nadim', 'Hassan', 'njdvhb dhvhd dhv', '1525563565', 'nadim@hsdv.com', 'Fri Sep 09 1994 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'dhvghdbv', 0, '2020-01-25 07:41:22.249741', '2020-01-25 07:41:22.249777'),
(5, 'hgvbv', 'jbhjnb', 'hjghjvjknm', '54636534534', 'vchc@hvhj.com', 'Mon Jul 09 2001 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'fvdcvncb', 0, '2020-01-25 07:42:20.698447', '2020-01-25 07:42:20.698513'),
(6, 'gcgmvbcb', 'hnvjhnmv', 'jbfhj', '541024105', 'ghhfhg@hjgvg.cjkb', 'Tue Oct 25 2016 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'nvgnb hjg', 0, '2020-01-25 07:42:54.176368', '2020-01-25 07:42:54.176437'),
(7, 'bvcbvgh', 'hnvjhn', NULL, '5521521201', 'dfgd2h@gfytg.jgh', 'Thu Nov 19 2009 00:00:00 GMT+0700 (Bangladesh Summer Time)', 'ghvgxhfgvc', 0, '2020-01-25 07:43:25.547120', '2020-01-25 07:43:25.547161'),
(8, 'Kamal', 'Khan', 'sjdnbfhfnb hjvbjv', '54154545545', 'kamal@gmail.com', 'Wed Aug 10 2005 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'nnn555', 0, '2020-01-25 07:40:26.398701', '2020-01-25 07:40:26.398791'),
(9, 'Malik', 'Hassan', 'njdvhb dhvhd dhvdfg er', '152556356555', 'malik@hsdv.com', 'Fri Sep 09 1994 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'dhvghdbv', 0, '2020-01-25 07:41:22.249741', '2020-01-25 07:41:22.249777'),
(10, 'hdgfvhj', 'ndvfdgh', 'njdvhb dhvhd dhv', '1525563565', 'dfhddf@hsdv.com', 'Fri Sep 09 1994 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'dhvghdbv', 0, '2020-01-25 07:41:22.249741', '2020-01-25 07:41:22.249777'),
(11, 'hgvbvsfdf', 'sfdg', 'hjghjvjknm', '54636534534', 'vchcnb@hvhj.com', 'Mon Jul 09 2001 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'fvdcvncb', 0, '2020-01-25 07:42:20.698447', '2020-01-25 07:42:20.698513'),
(12, 'gcgmvbcb ddd', '', 'jbfhj', '541024105', 'ghh25fhg@hjgvg.cjkb', 'Tue Oct 25 2016 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'nvgnb hjg', 0, '2020-01-25 07:42:54.176368', '2020-01-25 07:42:54.176437'),
(13, 'jgdhf55s', 'hnvjhn', NULL, '5521521201', 'dfgd2h98@gfytg.jgh', 'Thu Nov 19 2009 00:00:00 GMT+0700 (Bangladesh Summer Time)', 'ghvgxhfgvc', 0, '2020-01-25 07:43:25.547120', '2020-01-25 07:43:25.547161'),
(14, 'Rakib', 'Hasan', 'xgchdjxmb', '1522855625', 'rakib@gmail.com', 'Wed Sep 17 2003 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'rrr555', 0, '2020-01-25 07:48:48.703598', '2020-01-25 07:48:48.703655'),
(15, 'Rohan', 'vdbhj', 'MLBDJCVKJB', '24523451241', 'vscgf@xhvgf.com', 'Wed Aug 14 2030 00:00:00 GMT+0600 (Bangladesh Standard Time)', 'dhvfgd', 0, '2020-01-25 07:52:57.166623', '2020-01-25 07:52:57.166666');

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
