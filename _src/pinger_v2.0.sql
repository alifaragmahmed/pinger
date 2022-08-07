-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 08:38 PM
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
  `user_id` int(11) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `support_suppervisor` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `branch_manager` varchar(255) DEFAULT NULL,
  `manager_phone` varchar(255) DEFAULT NULL,
  `branch_degree` varchar(255) DEFAULT NULL,
  `work_days` varchar(255) DEFAULT NULL,
  `work_hours` varchar(255) DEFAULT NULL,
  `branch_attitude` varchar(255) DEFAULT NULL,
  `ups_attitude` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `connectivity_type` varchar(255) DEFAULT NULL,
  `added_ip_notes` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `connectivity_capacity` varchar(255) DEFAULT NULL,
  `operation_attitude` varchar(255) DEFAULT NULL,
  `router_type` varchar(255) DEFAULT NULL,
  `postal_user_id` varchar(255) DEFAULT NULL,
  `counter_user_id` varchar(255) DEFAULT NULL,
  `voip_no` varchar(255) DEFAULT NULL,
  `ent_serial` varchar(255) DEFAULT NULL,
  `ent_model` varchar(255) DEFAULT NULL,
  `ent_device_type` varchar(255) DEFAULT NULL,
  `ent_system_name` varchar(255) DEFAULT NULL,
  `ent_ip` varchar(255) DEFAULT NULL
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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `body`, `icon`, `user_id`, `created_at`, `updated_at`, `seen`) VALUES
(1, 'add branch', 'add branch الشاطبى', 'fa fa-user', 1, '2022-07-02 09:05:28', '2022-07-02 09:05:41', 1),
(2, 'edit branch', 'edit branch الشاطبى', 'fa fa-user', 1, '2022-07-02 09:24:43', '2022-07-02 09:24:56', 1),
(3, 'edit branch', 'edit branch الشاطبى', 'fa fa-user', 1, '2022-07-02 10:34:21', '2022-07-02 10:34:33', 1),
(4, 'edit branch', 'edit branch الشاطبى', 'fa fa-user', 1, '2022-07-02 10:34:44', '2022-07-02 10:34:48', 1),
(5, 'edit branch', 'edit branch الشاطبى', 'fa fa-user', 1, '2022-07-02 10:34:49', '2022-07-02 10:35:03', 1),
(6, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-02 10:37:33', '2022-07-02 10:37:34', 1),
(7, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-02 10:37:54', '2022-07-02 10:37:54', 1),
(8, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-02 10:39:55', '2022-07-02 10:39:55', 1),
(9, 'edit branch', 'edit branch الشاطبى', 'fa fa-user', 1, '2022-07-02 10:42:43', '2022-07-02 10:42:54', 1),
(10, 'ping 8.8.8.8', 'ping 8.8.8.8', 'fa fa-bullseye', 1, '2022-07-02 10:42:58', '2022-07-02 10:43:09', 1),
(11, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-02 10:53:51', '2022-07-02 10:53:54', 1),
(12, 'ping 8.8.8.8', 'ping 8.8.8.8', 'fa fa-bullseye', 1, '2022-07-02 10:54:48', '2022-07-02 10:54:54', 1),
(13, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:58:35', '2022-07-02 10:59:29', 1),
(14, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:58:42', '2022-07-02 10:59:29', 1),
(15, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:58:49', '2022-07-02 10:59:29', 1),
(16, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:58:56', '2022-07-02 10:59:29', 1),
(17, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:59:03', '2022-07-02 10:59:29', 1),
(18, 'edit setting', 'edit setting ', 'fa fa-cogs', 1, '2022-07-02 10:59:10', '2022-07-02 10:59:29', 1),
(19, 'edit user', 'edit user talaat', 'fa fa-users', 1, '2022-07-02 11:05:17', '2022-07-02 11:05:29', 1),
(20, 'tracert 192.168.1.50', 'tracert 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 03:35:19', '2022-07-25 03:35:19', 1),
(21, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 03:46:30', '2022-07-25 03:46:30', 1),
(22, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 03:46:56', '2022-07-25 03:46:56', 1),
(23, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 03:48:11', '2022-07-25 03:48:12', 1),
(24, 'ping 192.168.1.50', 'ping 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 03:48:58', '2022-07-25 03:48:59', 1),
(25, 'ping 192.168.1.50 -n 15', 'ping 192.168.1.50 -n 15', 'fa fa-bullseye', 1, '2022-07-25 03:51:24', '2022-07-25 03:51:25', 1),
(26, 'tracert -d 192.168.1.50', 'tracert -d 192.168.1.50', 'fa fa-bullseye', 1, '2022-07-25 04:01:16', '2022-07-25 04:01:32', 1),
(27, 'tracert -d 8.8.8.8', 'tracert -d 8.8.8.8', 'fa fa-bullseye', 1, '2022-07-25 04:01:32', '2022-07-25 04:01:32', 1),
(28, 'tracert 8.8.8.8', 'tracert 8.8.8.8', 'fa fa-bullseye', 1, '2022-07-25 04:02:30', '2022-07-25 04:02:30', 1);

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
(13, 'add branch', '2022-07-02 08:50:32', '2022-07-02 08:50:32', NULL),
(14, 'edit branch', '2022-07-02 09:05:29', '2022-07-02 09:05:29', NULL),
(15, 'remove branch', '2022-07-02 09:05:29', '2022-07-02 09:05:29', NULL);

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
(3, 'theme', 'skin-blue-light', NULL, '2022-07-02 10:58:56', NULL),
(4, 'phone', '011122255468', NULL, '2019-10-31 05:50:50', NULL),
(5, 'about_ar', 'We offer the widest range of quality', NULL, '2020-02-11 08:45:20', NULL),
(6, 'about_en', 'We offer the widest range of quality', NULL, '2020-02-11 08:45:19', NULL),
(7, 'language', 'ar', NULL, '2022-07-02 10:59:10', NULL),
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
(1, 'proccess_has_been_success', 'proccess has been success', '', '2022-07-02 08:46:43', '2022-07-02 11:08:25'),
(2, 'dashboard', 'Dashboard', 'Dashboard', '2022-07-02 08:47:07', '2022-07-02 11:08:45'),
(3, 'item', 'item', '', '2022-07-02 08:47:07', '2022-07-02 11:08:25'),
(4, 'users', 'users', 'Users', '2022-07-02 08:47:12', '2022-07-02 11:09:41'),
(5, 'dont\'t_has_role', 'dont\'t has role', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(6, 'id', 'id', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(7, 'name', 'name', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(8, 'username', 'username', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(9, 'password', 'password', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(10, 'birthdate', 'birthdate', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(11, 'national_id', 'national id', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(12, 'address', 'address', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(13, 'role', 'role', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(14, 'email', 'email', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(15, 'tel_1', 'tel 1', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(16, 'tel_2', 'tel 2', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(17, 'add_user', 'add user', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(18, 'edit_user', 'edit user', '', '2022-07-02 08:47:12', '2022-07-02 11:08:25'),
(19, 'off', 'off', '', '2022-07-02 08:47:13', '2022-07-02 11:08:25'),
(20, 'national_id_must_be_numbers_only', 'national id must be numbers only', '', '2022-07-02 08:47:27', '2022-07-02 11:08:25'),
(21, 'national_id_must_14_digits', 'national id must 14 digits', '', '2022-07-02 08:47:27', '2022-07-02 11:08:25'),
(22, 'roles', 'roles', '', '2022-07-02 08:47:33', '2022-07-02 11:08:25'),
(23, 'add_role', 'add role', '', '2022-07-02 08:47:33', '2022-07-02 11:08:25'),
(24, 'edit_role', 'edit role', '', '2022-07-02 08:47:33', '2022-07-02 11:08:25'),
(25, 'set_permissions', 'set permissions', '', '2022-07-02 08:47:33', '2022-07-02 11:08:25'),
(26, 'permission_name', 'permission name', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(27, 'select_all', 'select all', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(28, 'branch', 'branch', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(29, 'user', 'user', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(30, 'notification', 'notification', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(31, 'setting', 'setting', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(32, 'add_permission', 'add permission', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(33, 'remove_role', 'remove role', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(34, 'remove_user', 'remove user', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(35, 'save', 'save', '', '2022-07-02 08:47:44', '2022-07-02 11:08:25'),
(36, 'branches', 'branches', '', '2022-07-02 08:49:50', '2022-07-02 11:08:25'),
(37, 'code', 'code', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(38, 'branch_name', 'branch_name', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(39, 'main_order_id', 'main_order_id', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(40, 'backup_order_id', 'backup_order_id', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(41, 'isp', 'isp', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(42, 'region', 'region', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(43, 'finance_code', 'finance_code', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(44, 'lan_ip', 'lan_ip', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(45, 'wan_ip', 'wan_ip', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(46, 'tunnel_ip', 'tunnel_ip', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(47, 'ips', 'ips', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(48, 'solution_info', 'solution_info', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(49, 'speed', 'speed', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(50, 'last_update', 'last_update', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(51, 'notes', 'notes', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(52, 'add_branch', 'add branch', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(53, 'edit_branch', 'edit branch', '', '2022-07-02 08:50:32', '2022-07-02 11:08:25'),
(54, 'settings', 'settings', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(55, 'theme', 'theme', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(56, 'reload_the_page_to_see_the_changes', 'reload the page to see the changes', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(57, 'blue_sky_night', 'blue sky night', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(58, 'light_sky', 'light sky', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(59, 'nature', 'nature', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(60, 'colorfully', 'colorfully', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(61, 'language', 'language', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(62, 'english', 'english', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(63, 'arabic', 'arabic', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(64, 'translation', 'translation', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(65, 'you_can_translate_each_word_in_english_or_arabic', 'you can translate each word in English or Arabic', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(66, 'key', 'key', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(67, 'word_in_english', 'word in English', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(68, 'word_in_arabic', 'word in Arabic', '', '2022-07-02 08:50:54', '2022-07-02 11:08:26'),
(69, 'new_notfications', 'new notfications', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(70, 'you_have_{n}_notifications', 'you have {n} notifications', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(71, 'profile', 'profile', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(72, 'main_navigation', 'main navigation', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(73, 'users&roles', 'users&roles', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(74, 'notifications', 'notifications', '', '2022-07-02 08:53:34', '2022-07-02 11:08:26'),
(75, 'not_found', 'Not Found', '', '2022-07-02 08:53:35', '2022-07-02 11:08:26'),
(76, 'diaries', 'diaries', '', '2022-07-02 09:01:34', '2022-07-02 11:08:26'),
(77, 'tel1', 'tel1', '', '2022-07-02 09:05:38', '2022-07-02 11:08:26'),
(78, 'tel2', 'tel2', '', '2022-07-02 09:05:38', '2022-07-02 11:08:26'),
(79, 'show_branch', 'show branch', '', '2022-07-02 09:05:38', '2022-07-02 11:08:26'),
(80, 'actions', 'actions', '', '2022-07-02 09:14:55', '2022-07-02 11:08:26'),
(81, 'ping', 'ping', '', '2022-07-02 09:14:55', '2022-07-02 11:08:26'),
(82, 'tracert', 'tracert', '', '2022-07-02 09:14:55', '2022-07-02 11:08:26'),
(83, 'ping_or_tracert', 'ping or tracert', '', '2022-07-02 09:23:04', '2022-07-02 11:08:26'),
(84, 'ping_wan', 'Ping Wan', '', '2022-07-02 09:26:29', '2022-07-02 11:08:26'),
(85, 'ping_lan', 'Ping Lan', '', '2022-07-02 09:26:29', '2022-07-02 11:08:26'),
(86, 'ping_tunnel', 'Ping Tunnel', '', '2022-07-02 09:26:29', '2022-07-02 11:08:26'),
(87, 'tracert_wan', 'Tracert Wan', '', '2022-07-02 10:33:54', '2022-07-02 11:08:26'),
(88, 'tracert_lan', 'Tracert Lan', '', '2022-07-02 10:33:54', '2022-07-02 11:08:26'),
(89, 'tracert_tunnel', 'Tracert Tunnel', '', '2022-07-02 10:33:54', '2022-07-02 11:08:26'),
(90, 'title', 'title', '', '2022-07-02 10:35:01', '2022-07-02 11:08:26'),
(91, 'body', 'body', '', '2022-07-02 10:35:01', '2022-07-02 11:08:26'),
(92, 'user_id', 'user_id', '', '2022-07-02 10:35:01', '2022-07-02 11:08:26'),
(93, 'created_at', 'created_at', '', '2022-07-02 10:35:01', '2022-07-02 11:08:26'),
(94, 'edit_setting', 'edit setting', '', '2022-07-02 10:58:35', '2022-07-02 11:08:26'),
(95, 'phone_must_be_numbers_only', 'phone must be numbers only', '', '2022-07-02 11:05:17', '2022-07-02 11:08:26'),
(96, 'phone_must_11_digits', 'phone must 11 digits', '', '2022-07-02 11:05:17', '2022-07-02 11:08:26'),
(97, 'login_to_your_dashboard_control', 'login to your dashboard control', '', '2022-07-02 11:10:30', '2022-08-07 16:37:44'),
(98, 'login', 'login', '', '2022-07-02 11:10:30', '2022-08-07 16:37:44'),
(99, 'auth', 'auth', '', '2022-07-25 03:33:49', '2022-08-07 16:37:44'),
(100, 'pagination', 'pagination', '', '2022-07-25 03:33:49', '2022-08-07 16:37:44'),
(101, 'passwords', 'passwords', '', '2022-07-25 03:33:49', '2022-08-07 16:37:44'),
(102, 'validation', 'validation', '', '2022-07-25 03:33:49', '2022-08-07 16:37:44'),
(103, '*', '*', '', '2022-07-25 03:33:50', '2022-08-07 16:37:44'),
(104, 'ping_wan_-l_1500', 'Ping Wan -l 1500', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(105, 'ping_lan_-l_1500', 'Ping Lan -l 1500', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(106, 'ping_tunnel_-l_1500', 'Ping Tunnel -l 1500', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(107, 'tracert_wan_-d', 'Tracert Wan -d', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(108, 'tracert_lan_-d', 'Tracert Lan -d', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(109, 'tracert_tunnel_-d', 'Tracert Tunnel -d', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(110, 'ping_wan_-n_15', 'Ping Wan -n 15', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(111, 'ping_lan_-n_15', 'Ping Lan -n 15', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(112, 'ping_tunnel_-n_15', 'Ping Tunnel -n 15', '', '2022-07-25 03:44:50', '2022-08-07 16:37:44'),
(113, 'sector', 'sector', 'القطاع', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(114, 'zip_code', 'zip_code', 'الرقم البريدى', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(115, 'support_suppervisor', 'support_suppervisor', 'مسؤل الدعم الفنى', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(116, 'phone', 'phone', 'رقم الموبيل', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(117, 'branch_manager', 'branch_manager', 'مدير الفرع', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(118, 'manager_phone', 'manager_phone', 'رقم تلفون المدير', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(119, 'branch_degree', 'branch_degree', 'درجة الفرع', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(120, 'work_days', 'work_days', 'ايام العمل', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(121, 'work_hours', 'work_hours', 'ساعات العمل', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(122, 'branch_attitude', 'branch_attitude', 'موقف الفرع من النموجه', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(123, 'ups_attitude', 'ups_attitude', 'مواقف تركيب UPS', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(124, 'telephone', 'telephone', 'رقم التليفون الارضى', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(125, 'connectivity_type', 'connectivity_type', 'نوع خط الربط', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(126, 'added_ip_notes', 'added_ip_notes', 'ملاحظات حول الايبى الاضافى', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(127, 'project_name', 'project_name', 'اسم المشروع', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(128, 'connectivity_capacity', 'connectivity_capacity', 'سعة خط الربط', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(129, 'operation_attitude', 'operation_attitude', 'موقف التركيب و التشغيل فى المشروع', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(130, 'router_type', 'router_type', 'نوع الوتر', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(131, 'postal_user_id', 'postal_user_id', 'Portal User id', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(132, 'counter_user_id', 'counter_user_id', 'E Counter User ID', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(133, 'voip_no', 'voip_no', 'VOIP no', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(134, 'ent_serial', 'ent_serial', 'ent.serial', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(135, 'ent_model', 'ent_model', 'ent.model', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(136, 'ent_device_type', 'ent_device_type', 'ent.devicetype', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(137, 'ent_system_name', 'ent_system_name', 'ent.systemname', '2022-08-07 16:29:55', '2022-08-07 16:37:44'),
(138, 'ent_ip', 'ent_ip', 'ent.ip', '2022-08-07 16:29:55', '2022-08-07 16:37:44');

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
(1, 'talaat', 'admin', 'admin', '2020-05-16', '-', '-', NULL, '-', '-', 1, 1, 1, NULL, '2022-07-02 11:05:17', NULL, 0),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
