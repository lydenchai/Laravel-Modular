-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 05:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_laravel_modules`
--

-- --------------------------------------------------------

--
-- Table structure for table `disciples`
--

CREATE TABLE `disciples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dateWn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disciples`
--

INSERT INTO `disciples` (`id`, `user_id`, `dateWn`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '22-02-2022', 'Notation', 'test', '2022-02-22 09:44:54', '2022-02-22 09:44:54'),
(2, 2, '26-02-2022', 'Notation', 'test', '2022-02-23 03:09:59', '2022-02-23 03:09:59'),
(3, 3, '27-02-2022', 'Notation', 'test', '2022-02-23 03:10:08', '2022-02-23 03:10:08'),
(4, 5, '01-03-2022', 'Notation', 'test', '2022-02-23 03:10:21', '2022-02-23 03:10:21'),
(5, 8, '01-03-2022', 'Notation', 'test', '2022-02-24 07:23:41', '2022-02-24 07:23:41'),
(7, 8, '01-03-2022', 'Warning letter', 'Just test1', '2022-02-28 08:05:44', '2022-02-28 08:10:44');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_16_054400_create_students_table', 1),
(6, '2022_02_16_055542_Disciple', 2),
(7, '2022_02_16_055529_Permission', 3),
(8, '2022_02_17_065324_Score', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `startAt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endAt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `startAt`, `endAt`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '28-02-2022', '02-03-2022', 'Authorize', 'test', '2022-02-22 09:44:42', '2022-02-22 09:44:42'),
(2, 2, '02-03-2022', '04-03-2022', 'Authorize', 'test', '2022-02-23 03:09:25', '2022-02-23 03:09:25'),
(3, 3, '05-03-2022', '08-03-2022', 'Authorize', 'test', '2022-02-23 03:09:38', '2022-02-23 03:09:38'),
(4, 5, '05-03-2022', '08-03-2022', 'Authorize', 'test', '2022-02-23 03:09:45', '2022-02-23 03:09:45');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyToken', '2f97732264bcfbcadc01129c8b95826b7306f390ea4e066e11565d6ea163f995', '[\"*\"]', NULL, '2022-02-22 09:43:24', '2022-02-22 09:43:24'),
(2, 'App\\Models\\User', 2, 'MyToken', 'cd311b6679debb6553fc0003b0bcb8e43e175fe33b70646f2dc1d9772c735091', '[\"*\"]', NULL, '2022-02-22 09:57:21', '2022-02-22 09:57:21'),
(3, 'App\\Models\\User', 3, 'MyToken', '1474f1a9ced4549cb45013fc28e37358284a6987c6fb2b51509291b177e06f78', '[\"*\"]', NULL, '2022-02-23 01:20:43', '2022-02-23 01:20:43'),
(4, 'App\\Models\\User', 4, 'MyToken', '76973f8a95d96ff52c7db1e99e92021fcabeba0ab477d222e73bd3bd37e9aacc', '[\"*\"]', NULL, '2022-02-23 01:21:09', '2022-02-23 01:21:09'),
(5, 'App\\Models\\User', 5, 'MyToken', 'fb4617930ea877a9bfe59efe3f7c1292ce4a5a1806413a6714d79c4a82bab179', '[\"*\"]', NULL, '2022-02-23 01:22:13', '2022-02-23 01:22:13'),
(6, 'App\\Models\\User', 6, 'MyToken', '10e548bbc00ba0378d63a3e281c9d2075270075fcfb9228f96d97e7e384848c4', '[\"*\"]', NULL, '2022-02-23 03:34:41', '2022-02-23 03:34:41'),
(7, 'App\\Models\\User', 7, 'MyToken', '251320d7c5ccceb65175e383637511685429ebe594ae41a0a6c78537fa408542', '[\"*\"]', NULL, '2022-02-24 02:06:07', '2022-02-24 02:06:07'),
(8, 'App\\Models\\User', 8, 'MyToken', 'e1d2aa365b366087d5733cbaa5c493d8f2da9dc40bd6775a4a0cfd24530e0b5a', '[\"*\"]', NULL, '2022-02-24 02:07:12', '2022-02-24 02:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `htmlcss` int(11) NOT NULL,
  `javascript` int(11) NOT NULL,
  `python` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `laravel` int(11) NOT NULL,
  `java` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `htmlcss`, `javascript`, `python`, `php`, `laravel`, `java`, `created_at`, `updated_at`) VALUES
(1, 1, 75, 78, 83, 85, 80, 70, '2022-02-22 09:44:23', '2022-02-22 09:44:23'),
(2, 2, 70, 79, 86, 56, 87, 67, '2022-02-23 03:07:26', '2022-02-23 03:07:26'),
(3, 3, 80, 86, 56, 67, 85, 82, '2022-02-23 03:08:06', '2022-02-23 03:08:06'),
(4, 5, 79, 87, 78, 67, 89, 78, '2022-02-23 03:08:27', '2022-02-23 03:08:27'),
(5, 8, 90, 87, 89, 85, 93, 81, '2022-02-24 03:40:47', '2022-02-24 03:40:47'),
(6, 6, 90, 94, 89, 90, 93, 81, '2022-02-24 03:41:42', '2022-02-24 03:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `first_name`, `last_name`, `class`, `phone`, `gender`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lyden', 'Chai', 'WEB-2021 A', 70645336, 'Male', '3aor703nDJDsfeNL7hqALDTCZuFvz3JubrpkyAtY.jpg', '2022-02-22 09:43:41', '2022-02-22 09:43:41'),
(2, 2, 'Vantheav', 'Thav', 'WEB-2021 A', 70645336, 'Male', 'rsgCpoYgGnUCvxFRv2NRxyjkOgZMrOIbQZUJHAkw.png', '2022-02-23 01:31:30', '2022-02-23 01:31:30'),
(3, 3, 'Vicheka', 'Lo', 'WEB-2021 A', 698486101, 'Female', 'TYEn6z08cEIKrINngs6B62M6pX8AnloB3mmuue21.png', '2022-02-23 01:32:14', '2022-02-23 01:36:02'),
(4, 5, 'Sopheak', 'Vun', 'WEB-2021 A', 698486101, 'Female', '4t7fGKjCm4CsZXcRXgnHjqO82fVlHrdYwjVS7XgF.jpg', '2022-02-23 01:32:44', '2022-02-23 01:32:44'),
(5, 6, 'Koemsak', 'Mean', 'WEB-2021 A', 978475456, 'Female', 'IMG_4329.jpg', '2022-02-23 04:05:42', '2022-02-23 04:05:42'),
(7, 8, 'Na vin', 'Chhorn', '2023 A', 87546956, 'Female', 'IMG_4329.jpg', '2022-02-24 02:18:37', '2022-02-24 02:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lyden', 'lyden@gmail.com', NULL, '$2y$10$lFUbU5SIylP1i/vFuy/.N.2vprQWKcsVyI.a6uTwiSq1v.QWFK6aC', 'UrJPyMxy3RpVtej460vAZjCsmigIEo9NJREn10pv.jpg', NULL, '2022-02-22 09:43:24', '2022-02-22 09:43:24'),
(2, 'Vantheav', 'vantheav@gmail.com', NULL, '$2y$10$VO/sRTSZILaBDEoBEqi2guHqnom0eD/ri2ekmxm2MV9qeElOfHhcK', '7knHW3WOkY0MfsTvFhuVk9edN1SUgKyoydk1BNFM.png', NULL, '2022-02-22 09:57:21', '2022-02-22 09:57:21'),
(3, 'Vicheka', 'vicheka@gmail.com', NULL, '$2y$10$8.eWwn36nk7l2LdGIrewJ.pHPBuHS06LZg5I4oIbAwKRTnZtRqI7m', 'sxVlJwrirvCRuTJ2HhgC2xIONQ8jp5SH8NjWYuu7.jpg', NULL, '2022-02-23 01:20:43', '2022-02-23 03:25:42'),
(5, 'Sopheak', 'sopheak@gmail.com', NULL, '$2y$10$OltOuW8ZHzn.gXxWEYm2TeSeNxN.LQp6aI2l0oY9IZp4Eks2crRHG', 'rtEue6167FWP232sSuILCcZTpF9hyFguRNyoZpyu.jpg', NULL, '2022-02-23 01:22:13', '2022-02-23 01:22:13'),
(6, 'Koemsak', 'koemsak@gmail.com', NULL, '$2y$10$cl5QQQNcoCsv2dCvQelNf.XdYkuz2J8GcGSGWGOzsTJ3CYB/OWRKu', 'IMG_4329.jpg', NULL, '2022-02-23 03:34:41', '2022-02-23 03:47:16'),
(7, 'Chanthy', 'chanthy@gmail.com', NULL, '$2y$10$pI.MsVLubYVseRGI5XofWOcTf1PYJKB.jYXW2hon/oxDH3dHtnddy', 'chanthy.jpg', NULL, '2022-02-24 02:06:07', '2022-02-24 02:06:07'),
(8, 'Navin', 'navin@gmail.com', NULL, '$2y$10$eCRvw97R2R.uFxk7UzfmvuN21m65Y7Crp9KmAOHtTYVXC3lFpENva', '84b03bb005601589b80b114d47c24a1c.jpg', NULL, '2022-02-24 02:07:12', '2022-02-24 02:07:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciples`
--
ALTER TABLE `disciples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disciples_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_user_id_foreign` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `disciples`
--
ALTER TABLE `disciples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disciples`
--
ALTER TABLE `disciples`
  ADD CONSTRAINT `disciples_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
