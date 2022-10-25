-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2022 at 04:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bk_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `fullname`, `phone`, `email`, `cv`, `job_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Muganga Maurice', '0781167275', 'emmizokwizera@gmail.com', 'cv/Muganga_Maurice_cv.pdf', 2, NULL, 1, '2022-10-23 09:08:44', '2022-10-23 09:08:44'),
(2, 'Muganga Maurice', '0781167275', 'emmizokwizera@gmail.com', 'cv/Muganga_Maurice_cv.pdf', 3, NULL, 2, '2022-10-23 09:27:18', '2022-10-23 09:27:18'),
(3, 'Kwizera Emmanuel', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_Emmanuel_cv.pdf', 1, NULL, 1, '2022-10-24 05:00:06', '2022-10-24 05:00:06'),
(4, 'Kwizera Emmanuel', '0781167333', 'againtest2020@gmail.com', 'cv/Kwizera Emmanuel_cv.pdf', 4, NULL, 0, '2022-10-24 12:41:12', '2022-10-24 12:41:12'),
(5, 'Kwizera Emmanuel', '0781167333', 'againtest2020@gmail.com', 'cv/Kwizera Emmanuel_cv.pdf', 4, NULL, 0, '2022-10-24 12:41:15', '2022-10-24 12:41:15'),
(6, 'Kwizera Emmanuel', '0781167333', 'againtest2020@gmail.com', 'cv/Kwizera Emmanuel_cv.pdf', 4, NULL, 0, '2022-10-24 12:41:30', '2022-10-24 12:41:30'),
(7, 'Kashi', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kashi_cv.pdf', 2, NULL, 0, '2022-10-25 12:16:02', '2022-10-25 12:16:02'),
(8, 'Kashi', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kashi_cv.pdf', 2, NULL, 0, '2022-10-25 12:16:05', '2022-10-25 12:16:05'),
(9, 'Jado', '0781167333', 'jado@gmailcom', 'cv/Jado_cv.pdf', 4, NULL, 0, '2022-10-25 12:36:37', '2022-10-25 12:36:37'),
(10, 'Kwizera', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_cv.pdf', 2, NULL, 0, '2022-10-25 12:39:57', '2022-10-25 12:39:57'),
(11, 'Kwizera', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_cv.pdf', 2, NULL, 0, '2022-10-25 12:39:59', '2022-10-25 12:39:59'),
(12, 'Kwizera', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_cv.pdf', 2, NULL, 0, '2022-10-25 12:40:02', '2022-10-25 12:40:02'),
(13, 'Kwizera', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_cv.pdf', 2, NULL, 0, '2022-10-25 12:40:16', '2022-10-25 12:40:16'),
(14, 'Kwizera', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera_cv.pdf', 2, NULL, 0, '2022-10-25 12:41:17', '2022-10-25 12:41:17'),
(15, 'Kwizera Emmanuel', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera Emmanuel_cv.pdf', 4, NULL, 0, '2022-10-25 12:45:20', '2022-10-25 12:45:20'),
(16, 'Kwizera Emmanuel', '0781167333', 'emmizokwizera@gmail.com', 'cv/Kwizera Emmanuel_cv.pdf', 2, NULL, 2, '2022-10-25 12:47:32', '2022-10-25 12:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `content`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full stack Developer', 'The System Administrator will assist in planning and be responsible for installation and providing operational support for Temenos T24 application banking software.\nExperience in delivering and operating stable Core Banking Application and all ancillary systems required for Core banking system to operate optimally.\nSupports the Application Management by performing tasks on Temenos T24 TAFJ & related applications in multiple environments\nSupports the Application Management by performing tasks on Temenos T24 TAFJ Integration, Interaction, ATM and IRIS\nManaging Development Environment, Integration testing, Multi-level testing Strategy, Build, UAT, performance testing and production environments\nAble to perform management of specific tasks on other Financial Services applications, including tasks related to change management, release management, and incident management.\nProvides server maintenance in command line operations for non-windows operating system environments (based experience in either Windows, Linux, AIX)\nAdministers web server operations (based on experience in Jboss, Tomcat, Apache)\nLeads the creation of service level objectives and reporting as required\nSupports and provides guidance to desktop support analysts on issues related to Core banking applications. Will be responsible for L1, L2 and L3 support performance.\nDeploys configuration changes and code upgrades including TAFJ, T24 and Core updates & releases\nWorks with on infrastructure management for managing performance and capacity for technologies deployed for the core environment\nAbility to analyze Logs and make recommendations and remediation’s accordingly.\nPerforms tasks to establish and monitor key performance indicators, taking effective action where results are below SLA targets\nEnsures that effective ITIL-based best practices are maintained for interactions with support teams and vendors\nSupports 24/7 production systems. Works off standard hours as part of team to provide daily weekday coverage and 24 hours on call availability', 'Knowledge of API’s management and delivery\nKnowledge on Big Data platforms, like Hadoop\nAbility to code\nExperience with web servers’/ database installation and support\nFlexible and able to adapt to a rapidly changing environment\nFamiliarity with Agile\nMust be organized and have the ability to manage projects of varying length\nPositive, self-motivated individual who can complete tasks independently\nMust be a team player', 0, '2022-10-23 07:44:53', '2022-10-23 07:44:53'),
(2, 'Back end Engineer', 'The System Administrator will assist in planning and be responsible for installation and providing operational support for Temenos T24 application banking software.\nExperience in delivering and operating stable Core Banking Application and all ancillary systems required for Core banking system to operate optimally.\nSupports the Application Management by performing tasks on Temenos T24 TAFJ & related applications in multiple environments\nSupports the Application Management by performing tasks on Temenos T24 TAFJ Integration, Interaction, ATM and IRIS\nManaging Development Environment, Integration testing, Multi-level testing Strategy, Build, UAT, performance testing and production environments\nAble to perform management of specific tasks on other Financial Services applications, including tasks related to change management, release management, and incident management.\nProvides server maintenance in command line operations for non-windows operating system environments (based experience in either Windows, Linux, AIX)\nAdministers web server operations (based on experience in Jboss, Tomcat, Apache)\nLeads the creation of service level objectives and reporting as required\nSupports and provides guidance to desktop support analysts on issues related to Core banking applications. Will be responsible for L1, L2 and L3 support performance.\nDeploys configuration changes and code upgrades including TAFJ, T24 and Core updates & releases\nWorks with on infrastructure management for managing performance and capacity for technologies deployed for the core environment\nAbility to analyze Logs and make recommendations and remediation’s accordingly.\nPerforms tasks to establish and monitor key performance indicators, taking effective action where results are below SLA targets\nEnsures that effective ITIL-based best practices are maintained for interactions with support teams and vendors\nSupports 24/7 production systems. Works off standard hours as part of team to provide daily weekday coverage and 24 hours on call availability', 'Knowledge of API’s management and delivery\nKnowledge on Big Data platforms, like Hadoop\nAbility to code\nExperience with web servers’/ database installation and support\nFlexible and able to adapt to a rapidly changing environment\nFamiliarity with Agile\nMust be organized and have the ability to manage projects of varying length\nPositive, self-motivated individual who can complete tasks independently\nMust be a team player', 0, '2022-10-23 08:21:49', '2022-10-23 08:21:49'),
(3, 'System Engineer', 'The System Administrator will assist in planning and be responsible for installation and providing operational support for Temenos T24 application banking software.\nExperience in delivering and operating stable Core Banking Application and all ancillary systems required for Core banking system to operate optimally.\nSupports the Application Management by performing tasks on Temenos T24 TAFJ & related applications in multiple environments\nSupports the Application Management by performing tasks on Temenos T24 TAFJ Integration, Interaction, ATM and IRIS\nManaging Development Environment, Integration testing, Multi-level testing Strategy, Build, UAT, performance testing and production environments\nAble to perform management of specific tasks on other Financial Services applications, including tasks related to change management, release management, and incident management.\nProvides server maintenance in command line operations for non-windows operating system environments (based experience in either Windows, Linux, AIX)\nAdministers web server operations (based on experience in Jboss, Tomcat, Apache)\nLeads the creation of service level objectives and reporting as required\nSupports and provides guidance to desktop support analysts on issues related to Core banking applications. Will be responsible for L1, L2 and L3 support performance.\nDeploys configuration changes and code upgrades including TAFJ, T24 and Core updates & releases\nWorks with on infrastructure management for managing performance and capacity for technologies deployed for the core environment\nAbility to analyze Logs and make recommendations and remediation’s accordingly.\nPerforms tasks to establish and monitor key performance indicators, taking effective action where results are below SLA targets\nEnsures that effective ITIL-based best practices are maintained for interactions with support teams and vendors\nSupports 24/7 production systems. Works off standard hours as part of team to provide daily weekday coverage and 24 hours on call availability', 'Knowledge of API’s management and delivery\nKnowledge on Big Data platforms, like Hadoop\nAbility to code\nExperience with web servers’/ database installation and support\nFlexible and able to adapt to a rapidly changing environment\nFamiliarity with Agile\nMust be organized and have the ability to manage projects of varying length\nPositive, self-motivated individual who can complete tasks independently\nMust be a team player', 0, '2022-10-23 08:23:04', '2022-10-23 08:23:04'),
(4, 'System Engineer', 'The System Administrator will assist in planning and be responsible for installation and providing operational support for Temenos T24 application banking software.\nExperience in delivering and operating stable Core Banking Application and all ancillary systems required for Core banking system to operate optimally.\nSupports the Application Management by performing tasks on Temenos T24 TAFJ & related applications in multiple environments\nSupports the Application Management by performing tasks on Temenos T24 TAFJ Integration, Interaction, ATM and IRIS\nManaging Development Environment, Integration testing, Multi-level testing Strategy, Build, UAT, performance testing and production environments\nAble to perform management of specific tasks on other Financial Services applications, including tasks related to change management, release management, and incident management.\nProvides server maintenance in command line operations for non-windows operating system environments (based experience in either Windows, Linux, AIX)\nAdministers web server operations (based on experience in Jboss, Tomcat, Apache)\nLeads the creation of service level objectives and reporting as required\nSupports and provides guidance to desktop support analysts on issues related to Core banking applications. Will be responsible for L1, L2 and L3 support performance.\nDeploys configuration changes and code upgrades including TAFJ, T24 and Core updates & releases\nWorks with on infrastructure management for managing performance and capacity for technologies deployed for the core environment\nAbility to analyze Logs and make recommendations and remediation’s accordingly.\nPerforms tasks to establish and monitor key performance indicators, taking effective action where results are below SLA targets\nEnsures that effective ITIL-based best practices are maintained for interactions with support teams and vendors\nSupports 24/7 production systems. Works off standard hours as part of team to provide daily weekday coverage and 24 hours on call availability', 'Knowledge of API’s management and delivery\nKnowledge on Big Data platforms, like Hadoop\nAbility to code\nExperience with web servers’/ database installation and support\nFlexible and able to adapt to a rapidly changing environment\nFamiliarity with Agile\nMust be organized and have the ability to manage projects of varying length\nPositive, self-motivated individual who can complete tasks independently\nMust be a team player', 0, '2022-10-23 08:29:52', '2022-10-23 08:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_10_23_080308_create_jobs_table', 1),
(11, '2022_10_23_080802_create_applications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('17eb605261a4a7bb6b3b75f6f0ddb555b6dc9196a9b44bbf5c7864feae837577c2d99d1bb8dc801b', 1, 1, 'web', '[]', 0, '2022-10-23 07:25:58', '2022-10-23 07:25:59', '2023-10-23 09:25:58'),
('1f5b5ce8e022dabddbe2edc070d68d61da20bcb33aeeadc0ae69711e01fae268fb4c52346452fb41', 1, 1, 'web', '[]', 0, '2022-10-24 07:03:48', '2022-10-24 07:03:48', '2023-10-24 09:03:48'),
('20653e458408111dba8598a81238aba847f47a7f7971af75490ac0d3d7b9add4836bd1bb58453f9f', 1, 1, 'web', '[]', 0, '2022-10-24 12:39:21', '2022-10-24 12:39:21', '2023-10-24 14:39:21'),
('2440d4d6c27ed0ead9a0b3672da189e0d4309f84694d42f5c7588e71c5028a1b4441a06affc1a051', 1, 1, 'web', '[]', 0, '2022-10-24 06:42:55', '2022-10-24 06:42:55', '2023-10-24 08:42:55'),
('2ef6a29c6fc5b45dd2df016fd148786f45d1be5e5d8332051eab7dbf6bf6e5869c1930324a76dcb4', 1, 1, 'web', '[]', 0, '2022-10-24 06:20:42', '2022-10-24 06:20:42', '2023-10-24 08:20:42'),
('38d5f1836cb5b32532d9a3a387accc24014b0ba452a05089dfe9862b4d2bb1126b7d40923a360bc1', 1, 1, 'web', '[]', 0, '2022-10-25 05:37:05', '2022-10-25 05:37:05', '2023-10-25 07:37:05'),
('4146380369f12548611c8159a3e33731bb1cf0d9c8ae27813ece137da32b3a757002595efa030ea1', 1, 1, 'web', '[]', 0, '2022-10-24 06:57:31', '2022-10-24 06:57:31', '2023-10-24 08:57:31'),
('4ff0f9967dccc814f064380164397724b9e90c71064b5ceef05cb7e6f7dfbb601c93801471a6389d', 1, 1, 'web', '[]', 0, '2022-10-24 06:59:59', '2022-10-24 06:59:59', '2023-10-24 08:59:59'),
('58c3ef291a1dba29578f949db01705d22ba281529ced9c8ec291d70cad428e870a8fad402820a8ab', 1, 1, 'web', '[]', 0, '2022-10-24 07:01:04', '2022-10-24 07:01:04', '2023-10-24 09:01:04'),
('6409b3101ad93857b770f0a835bbf059b51b830c44cae771b342765be839114c89a3f775dae1b53a', 1, 1, 'web', '[]', 0, '2022-10-24 07:01:52', '2022-10-24 07:01:52', '2023-10-24 09:01:52'),
('6a3b6e9f8b4e2ed0ee099f452cc8e496f1bb58ee3ffccfaaa9340b11a4e647d54495689ca362174c', 1, 1, 'web', '[]', 0, '2022-10-23 08:14:38', '2022-10-23 08:14:38', '2023-10-23 10:14:38'),
('6bcebfa60d606ded8f8ba995b69fbd325a13a54f25fff849e0774e47e1108b441c54c86300963f3a', 1, 1, 'web', '[]', 0, '2022-10-25 12:48:34', '2022-10-25 12:48:34', '2023-10-25 14:48:34'),
('6db467639511f62ddfec795998f47795735f2e2d030f6d8a3537131df9996a8444835831ec484587', 2, 1, 'web', '[]', 0, '2022-10-25 10:19:20', '2022-10-25 10:19:20', '2023-10-25 12:19:20'),
('776ba92a41cba0e91ecadbef55e1e8274a218f0e11365182de8572b1037d2b9a77b73400e6b6c36e', 1, 1, 'web', '[]', 0, '2022-10-24 06:59:02', '2022-10-24 06:59:02', '2023-10-24 08:59:02'),
('880134c4dbfe4131c05f89e4b676da3435382a26109fd3f389da0fbd0bf00d1172121a924fbdcb0b', 1, 1, 'API Token', '[]', 0, '2022-10-23 07:25:16', '2022-10-23 07:25:16', '2023-10-23 09:25:16'),
('c1560953a2b55938b8d899631e4c6e94fc1469e1a618273e20d8ac3875d0cf4df2a309501a53e88f', 1, 1, 'web', '[]', 0, '2022-10-24 06:41:27', '2022-10-24 06:41:28', '2023-10-24 08:41:27'),
('e555092d3220f46a336beac426ea57df59d0e36cfac8b506e058e319b70fae4999470ffa5e467baa', 1, 1, 'web', '[]', 0, '2022-10-25 12:39:28', '2022-10-25 12:39:28', '2023-10-25 14:39:28'),
('f8ed1186c3a71cd42be0731e5eccb2e6e2ae01bbe117b690c1ad1c0cda1eeb0f92c39f80030f9473', 1, 1, 'web', '[]', 0, '2022-10-24 08:23:32', '2022-10-24 08:23:32', '2023-10-24 10:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'slPg4Zj6J8okeptDthIoSeXxPL1oLHWfYHbQNapa', NULL, 'http://localhost', 1, 0, 0, '2022-10-23 06:38:54', '2022-10-23 06:38:54'),
(2, NULL, 'Laravel Password Grant Client', 'T11hGPibTJJJdTvaZvG7K2IzYsaI9HcVCSF0LOFt', 'users', 'http://localhost', 0, 1, 0, '2022-10-23 06:38:54', '2022-10-23 06:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-23 06:38:54', '2022-10-23 06:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kwizera', 'emmizokwizera@gmail.com', 1, NULL, '$2y$10$CIXXQuw8c4JVNjizrVsz1OvMU2m4zM5P5Cd2Xb3VmhAegduUeivBK', NULL, '2022-10-23 08:56:18', '2022-10-23 08:56:18'),
(2, 'Emmizo', 'emmizokwizera@yahoo.com', 1, NULL, '$2a$08$wtZ5ccqlPrI.eIZeWFRLLuuC.lCDsFAzx4iXlkTgBJAOZ8BxPO5Pu', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_job_id_foreign` (`job_id`),
  ADD KEY `applications_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
