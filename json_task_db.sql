-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 09:34 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json_task_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `status`, `payload`, `created_at`, `updated_at`) VALUES
(1, '1', 'published', ' {\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]\r\n }', '2020-04-17 21:00:00', '2020-04-17 21:00:00'),
(2, '1', 'published', '  {\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]\r\n }', '2020-04-17 21:00:00', '2020-04-18 15:03:40'),
(3, '1', 'draft', '{}', '2020-04-18 12:04:22', '2020-04-18 12:04:22'),
(4, '1', 'draft', '{}', '2020-04-18 12:05:12', '2020-04-18 12:05:12'),
(5, '1', 'draft', '{}', '2020-04-18 12:05:27', '2020-04-18 12:05:27'),
(6, '1', 'published', '{\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]}', '2020-04-18 12:06:02', '2020-04-18 16:45:47'),
(7, '1', 'published', '{\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]}', '2020-04-18 12:07:37', '2020-04-19 04:21:39'),
(8, '1', 'draft', '{\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]}', '2020-04-18 12:07:46', '2020-04-18 11:20:43'),
(9, '1', 'draft', '{\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]}', '2020-04-18 12:09:00', '2020-04-18 11:19:41'),
(10, '1', 'draft', '{\r\n \"actor\": \"The fox\",\r\n \"meta\": {\r\n \"type\": \"quick\",\r\n \"color\": \"brown\"\r\n },\r\n \"actions\": [\r\n {\r\n \"action\": \"jump over\",\r\n \"actor\": \"lazy dog\"\r\n }\r\n ]}', '2020-04-18 12:10:37', '2020-04-18 11:19:17'),
(11, '1', 'draft', '{}', '2020-04-18 19:17:41', '2020-04-18 19:17:41'),
(12, '1', 'draft', '{}', '2020-04-18 19:18:35', '2020-04-18 19:18:35'),
(13, '1', 'draft', '{}', '2020-04-18 19:19:38', '2020-04-18 19:19:38'),
(14, '1', 'draft', '{}', '2020-04-18 19:20:31', '2020-04-18 19:20:31'),
(15, '1', 'draft', '{}', '2020-04-18 19:21:48', '2020-04-18 19:21:48'),
(16, '1', 'draft', '{}', '2020-04-18 19:21:53', '2020-04-18 19:21:53'),
(17, '1', 'draft', '{}', '2020-04-18 19:22:26', '2020-04-18 19:22:26'),
(18, '1', 'draft', '{}', '2020-04-18 19:23:06', '2020-04-18 19:23:06'),
(19, '1', 'draft', '{}', '2020-04-18 19:23:11', '2020-04-18 19:23:11'),
(20, '1', 'draft', '{}', '2020-04-18 19:23:15', '2020-04-18 19:23:15'),
(21, '1', 'draft', '{}', '2020-04-18 19:23:17', '2020-04-18 19:23:17'),
(22, '1', 'draft', '{}', '2020-04-18 19:45:38', '2020-04-18 19:45:38'),
(23, '1', 'draft', '{ \"actor\": \"The fox\", \"meta\": { \"type\": \"quick\", \"color\": \"brown\" }, \"actions\": [ { \"action\": \"jump over\", \"actor\": \"lazy dog\" } ]}', '2020-04-18 20:02:21', '2020-04-19 04:22:26'),
(24, '1', 'draft', '{}', '2020-04-19 07:28:27', '2020-04-19 07:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_18_063037_create_documents_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2020_04_18_194856_add_user_id_to_users_table', 3),
(6, '2020_04_18_195303_add_paid_to_documents_table', 4);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fattah', 'admin@mail.ru', NULL, '$2y$10$KEl5fd8n7rpCCj0QBt80ouNRKw7P5CJFg4KGdUHzAkLvtYZmZo2bS', NULL, '2020-04-18 16:41:49', '2020-04-18 16:41:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
