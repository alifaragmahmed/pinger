-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 12:52 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinger`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `main_order_id` varchar(255) DEFAULT NULL,
  `backup_order_id` varchar(255) DEFAULT NULL,
  `isp` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `finance_code` varchar(255) DEFAULT NULL,
  `wan_ip` varchar(255) DEFAULT NULL,
  `lan_ip` varchar(255) DEFAULT NULL,
  `tunnel_ip` varchar(255) DEFAULT NULL,
  `ips` text DEFAULT NULL,
  `solution_info` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `last_update` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_field1` varchar(255) DEFAULT NULL,
  `custom_field2` varchar(255) DEFAULT NULL,
  `custom_field3` varchar(255) DEFAULT NULL,
  `custom_field4` varchar(255) DEFAULT NULL,
  `custom_field5` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'branch', '2022-07-02 08:45:56', '2022-07-02 08:45:56', NULL),
(2, 'user', '2022-07-02 08:45:56', '2022-07-02 08:45:56', NULL),
(3, 'role', '2022-07-02 08:45:56', '2022-07-02 08:45:56', NULL),
(4, 'notification', '2022-07-02 08:45:56', '2022-07-02 08:45:56', NULL),
(5, 'setting', '2022-07-02 08:45:56', '2022-07-02 08:45:56', NULL),
(6, 'add role', '2022-07-02 08:46:12', '2022-07-02 08:46:12', NULL),
(7, 'edit role', '2022-07-02 08:46:12', '2022-07-02 08:46:12', NULL),
(8, 'add permission', '2022-07-02 08:46:12', '2022-07-02 08:46:12', NULL),
(9, 'remove role', '2022-07-02 08:46:12', '2022-07-02 08:46:12', NULL),
(10, 'add user', '2022-07-02 08:46:14', '2022-07-02 08:46:14', NULL),
(11, 'edit user', '2022-07-02 08:46:15', '2022-07-02 08:46:15', NULL),
(12, 'remove user', '2022-07-02 08:46:15', '2022-07-02 08:46:15', NULL),
(13, 'add branch', '2022-07-02 08:50:32', '2022-07-02 08:50:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الإدارة', '2020-05-17 02:25:59', '2020-05-23 02:54:03', NULL),
(3, 'مراقب عمال', '2020-05-23 02:30:10', '2020-05-23 02:54:23', NULL),
(4, 'مسؤول العدد والأدوات', '2020-05-23 02:51:34', '2020-05-23 02:51:34', NULL),
(5, 'مسؤول التوريد', '2020-05-23 02:52:20', '2020-05-23 02:52:20', NULL),
(6, 'مسؤول المشتريات والنفقات', '2020-05-23 02:52:29', '2020-05-23 02:52:29', NULL),
(7, 'مسؤل التطبيق', '2020-07-20 14:56:49', '2020-07-20 14:56:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_has_permissions`
--

CREATE TABLE `roles_has_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles_has_permissions`
--

INSERT INTO `roles_has_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(2, 1, 2, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(3, 1, 3, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(4, 1, 4, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(5, 1, 5, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(6, 1, 6, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(7, 1, 7, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(8, 1, 8, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(9, 1, 10, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(10, 1, 11, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(11, 1, 12, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(12, 1, 13, '2020-05-17 02:27:27', '2020-05-17 02:27:27'),
(13, 1, 14, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(14, 1, 15, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(15, 1, 16, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(16, 1, 17, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(17, 1, 18, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(18, 1, 19, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(19, 1, 20, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(20, 1, 21, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(21, 1, 22, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(22, 1, 23, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(23, 1, 24, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(24, 1, 25, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(25, 1, 26, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(26, 1, 27, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(27, 1, 28, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(28, 1, 29, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(29, 1, 30, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(30, 1, 31, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(31, 1, 32, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(32, 1, 33, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(33, 1, 34, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(34, 1, 35, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(35, 1, 36, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(36, 1, 37, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(37, 1, 38, '2020-05-17 02:27:28', '2020-05-17 02:27:28'),
(38, 1, 39, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(39, 1, 40, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(40, 1, 41, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(41, 1, 42, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(42, 1, 43, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(43, 1, 44, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(44, 1, 45, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(45, 1, 46, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(46, 1, 47, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(47, 1, 48, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(48, 1, 49, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(49, 1, 50, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(50, 1, 51, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(51, 1, 52, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(52, 1, 53, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(53, 1, 54, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(54, 1, 55, '2020-05-17 02:27:29', '2020-05-17 02:27:29'),
(55, 1, 56, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(56, 1, 57, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(57, 1, 58, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(58, 1, 59, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(59, 1, 60, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(60, 1, 61, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(61, 1, 62, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(62, 1, 63, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(63, 1, 64, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(64, 1, 65, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(65, 1, 66, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(66, 1, 67, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(67, 1, 68, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(68, 1, 69, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(69, 1, 70, '2020-05-17 02:27:30', '2020-05-17 02:27:30'),
(70, 4, 2, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(71, 4, 3, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(72, 4, 4, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(73, 4, 5, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(74, 4, 6, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(75, 4, 7, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(76, 4, 8, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(77, 4, 10, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(78, 4, 11, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(79, 4, 12, '2020-05-23 02:55:35', '2020-05-23 02:55:35'),
(80, 1, 72, '2020-05-23 20:45:23', '2020-05-23 20:45:23'),
(81, 1, 71, '2020-05-23 20:45:23', '2020-05-23 20:45:23'),
(82, 1, 73, '2020-05-23 20:45:36', '2020-05-23 20:45:36'),
(83, 1, 74, '2020-06-02 22:11:58', '2020-06-02 22:11:58'),
(84, 1, 75, '2020-06-02 22:11:58', '2020-06-02 22:11:58'),
(85, 1, 76, '2020-06-03 00:00:14', '2020-06-03 00:00:14'),
(86, 1, 77, '2020-06-03 00:28:44', '2020-06-03 00:28:44'),
(87, 1, 78, '2020-06-15 05:20:22', '2020-06-15 05:20:22'),
(88, 7, 56, '2020-07-20 14:57:06', '2020-07-20 14:57:06'),
(89, 1, 80, '2020-07-24 11:25:27', '2020-07-24 11:25:27'),
(90, 1, 79, '2020-07-24 11:25:27', '2020-07-24 11:25:27'),
(91, 1, 81, '2020-08-01 08:06:01', '2020-08-01 08:06:01'),
(92, 1, 83, '2020-08-16 20:36:29', '2020-08-16 20:36:29'),
(93, 1, 82, '2020-08-16 20:36:30', '2020-08-16 20:36:30'),
(94, 1, 84, '2020-10-31 15:58:45', '2020-10-31 15:58:45'),
(95, 1, 85, '2020-10-31 15:58:45', '2020-10-31 15:58:45'),
(96, 1, 87, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(97, 1, 86, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(98, 1, 92, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(99, 1, 88, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(100, 1, 90, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(101, 1, 89, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(102, 1, 91, '2020-10-31 16:10:47', '2020-10-31 16:10:47'),
(103, 1, 95, '2020-10-31 16:14:26', '2020-10-31 16:14:26'),
(104, 1, 93, '2020-10-31 16:14:26', '2020-10-31 16:14:26'),
(105, 1, 94, '2020-10-31 16:15:20', '2020-10-31 16:15:20'),
(106, 1, 96, '2020-10-31 19:46:21', '2020-10-31 19:46:21'),
(107, 1, 97, '2020-10-31 19:46:21', '2020-10-31 19:46:21'),
(108, 1, 100, '2020-11-05 10:39:43', '2020-11-05 10:39:43'),
(109, 1, 98, '2020-11-05 10:39:43', '2020-11-05 10:39:43'),
(110, 1, 99, '2020-11-05 10:39:43', '2020-11-05 10:39:43'),
(111, 1, 101, '2020-11-05 12:02:06', '2020-11-05 12:02:06'),
(112, 1, 102, '2020-11-05 12:03:51', '2020-11-05 12:03:51'),
(113, 1, 103, '2020-11-05 12:03:51', '2020-11-05 12:03:51'),
(114, 1, 104, '2020-11-05 12:03:51', '2020-11-05 12:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'domain', 'admin@admin.com', NULL, '2019-10-31 04:44:30', NULL),
(2, 'title', 'Oillixe', NULL, '2020-03-28 17:31:59', NULL),
(3, 'theme', 'skin-blue-light', NULL, '2020-05-23 21:03:18', NULL),
(4, 'phone', '011122255468', NULL, '2019-10-31 05:50:50', NULL),
(5, 'about_ar', 'We offer the widest range of quality', NULL, '2020-02-11 08:45:20', NULL),
(6, 'about_en', 'We offer the widest range of quality', NULL, '2020-02-11 08:45:19', NULL),
(7, 'language', 'ar', NULL, '2020-05-17 02:29:46', NULL),
(8, 'additional_value', '14', NULL, NULL, NULL),
(9, 'available sheet days', '30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `key` varchar(191) NOT NULL,
  `word_en` varchar(255) DEFAULT NULL,
  `word_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `word_en`, `word_ar`, `created_at`, `updated_at`) VALUES
(1, 'proccess_has_been_success', 'proccess has been success', NULL, '2022-07-02 08:46:43', '2022-07-02 08:46:43'),
(2, 'dashboard', 'dashboard', NULL, '2022-07-02 08:47:07', '2022-07-02 08:47:07'),
(3, 'item', 'item', NULL, '2022-07-02 08:47:07', '2022-07-02 08:47:07'),
(4, 'users', 'users', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(5, 'dont\'t_has_role', 'dont\'t has role', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(6, 'id', 'id', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(7, 'name', 'name', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(8, 'username', 'username', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(9, 'password', 'password', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(10, 'birthdate', 'birthdate', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(11, 'national_id', 'national id', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(12, 'address', 'address', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(13, 'role', 'role', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(14, 'email', 'email', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(15, 'tel_1', 'tel 1', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(16, 'tel_2', 'tel 2', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(17, 'add_user', 'add user', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(18, 'edit_user', 'edit user', NULL, '2022-07-02 08:47:12', '2022-07-02 08:47:12'),
(19, 'off', 'off', NULL, '2022-07-02 08:47:13', '2022-07-02 08:47:13'),
(20, 'national_id_must_be_numbers_only', 'national id must be numbers only', NULL, '2022-07-02 08:47:27', '2022-07-02 08:47:27'),
(21, 'national_id_must_14_digits', 'national id must 14 digits', NULL, '2022-07-02 08:47:27', '2022-07-02 08:47:27'),
(22, 'roles', 'roles', NULL, '2022-07-02 08:47:33', '2022-07-02 08:47:33'),
(23, 'add_role', 'add role', NULL, '2022-07-02 08:47:33', '2022-07-02 08:47:33'),
(24, 'edit_role', 'edit role', NULL, '2022-07-02 08:47:33', '2022-07-02 08:47:33'),
(25, 'set_permissions', 'set permissions', NULL, '2022-07-02 08:47:33', '2022-07-02 08:47:33'),
(26, 'permission_name', 'permission name', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(27, 'select_all', 'select all', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(28, 'branch', 'branch', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(29, 'user', 'user', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(30, 'notification', 'notification', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(31, 'setting', 'setting', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(32, 'add_permission', 'add permission', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(33, 'remove_role', 'remove role', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(34, 'remove_user', 'remove user', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(35, 'save', 'save', NULL, '2022-07-02 08:47:44', '2022-07-02 08:47:44'),
(36, 'branches', 'branches', NULL, '2022-07-02 08:49:50', '2022-07-02 08:49:50'),
(37, 'code', 'code', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(38, 'branch_name', 'branch_name', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(39, 'main_order_id', 'main_order_id', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(40, 'backup_order_id', 'backup_order_id', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(41, 'isp', 'isp', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(42, 'region', 'region', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(43, 'finance_code', 'finance_code', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(44, 'lan_ip', 'lan_ip', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(45, 'wan_ip', 'wan_ip', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(46, 'tunnel_ip', 'tunnel_ip', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(47, 'ips', 'ips', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(48, 'solution_info', 'solution_info', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(49, 'speed', 'speed', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(50, 'last_update', 'last_update', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(51, 'notes', 'notes', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(52, 'add_branch', 'add branch', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(53, 'edit_branch', 'edit branch', NULL, '2022-07-02 08:50:32', '2022-07-02 08:50:32'),
(54, 'settings', 'settings', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(55, 'theme', 'theme', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(56, 'reload_the_page_to_see_the_changes', 'reload the page to see the changes', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(57, 'blue_sky_night', 'blue sky night', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(58, 'light_sky', 'light sky', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(59, 'nature', 'nature', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(60, 'colorfully', 'colorfully', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(61, 'language', 'language', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(62, 'english', 'english', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(63, 'arabic', 'arabic', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(64, 'translation', 'translation', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(65, 'you_can_translate_each_word_in_english_or_arabic', 'you can translate each word in English or Arabic', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(66, 'key', 'key', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(67, 'word_in_english', 'word in English', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54'),
(68, 'word_in_arabic', 'word in Arabic', NULL, '2022-07-02 08:50:54', '2022-07-02 08:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `loan_balance` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `birthdate`, `national_id`, `address`, `email`, `tel1`, `tel2`, `user_id`, `project_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `loan_balance`) VALUES
(1, 'الاداراه', 'admin', 'admin', '2020-05-16', '-', '-', NULL, '-', '-', 1, 1, 1, NULL, '2020-08-01 08:23:16', NULL, 0),
(2, 'على فرج', 'ali', 'ali', '2020-05-16', '123456789123445', 'بنى سويف شارع احمد عرابي', NULL, NULL, NULL, 1, NULL, 3, '2020-05-16 14:07:09', '2020-08-16 19:14:38', NULL, 50),
(3, 'alif', 'alif', 'alif', '2020-05-16', '12345678912345', 'بنى سويف شارع احمد عرابيf', NULL, NULL, NULL, 1, NULL, NULL, '2020-05-16 14:08:37', '2020-05-16 14:08:42', '2020-05-16 14:08:42', 0),
(4, 'fdsfsd', 'fsdf', 'fsddfs', '2020-05-23', '423423423', 'esdfsd', NULL, NULL, NULL, 1, NULL, NULL, '2020-05-23 02:32:18', '2020-05-23 02:32:24', '2020-05-23 02:32:24', 0),
(5, 'على فرج', 'ali_farag', '123456789', '1996-05-24', '12345678912345', 'بنى سويف شارع احمد عرابي', NULL, NULL, NULL, 1, NULL, NULL, '2020-05-23 20:48:44', '2020-05-23 20:48:44', NULL, 0),
(6, 'test1', 'test1', 'test1', '2020-07-20', '12345678912345', 'بنى سويف شارع احمد عرابي', NULL, NULL, NULL, 1, NULL, NULL, '2020-07-20 14:45:09', '2020-08-01 08:21:03', NULL, 0),
(7, 'test2', 'test2', 'test2', '2020-07-20', '12345678912345', 'بنى سويف شارع احمد عرابي', NULL, NULL, NULL, 1, NULL, NULL, '2020-07-20 14:45:20', '2020-08-01 08:23:16', NULL, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_has_permissions`
--
ALTER TABLE `roles_has_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles_has_permissions`
--
ALTER TABLE `roles_has_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
