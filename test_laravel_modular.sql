-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 04:59 AM
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
-- Database: `test_laravel_modular`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2022-02-12 23:42:24', '2022-02-12 23:42:24'),
(2, 'Entertainment', '2022-02-12 23:42:44', '2022-02-12 23:42:44'),
(3, 'Life and society', '2022-02-12 23:42:53', '2022-02-12 23:42:53'),
(4, 'Sport', '2022-02-12 23:42:57', '2022-02-12 23:42:57'),
(5, 'Test', '2022-02-14 03:56:23', '2022-02-14 03:56:23');

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
(5, '2022_02_11_084348_Category', 2),
(7, '2022_01_26_063642_Post', 3);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyToken', 'f9cd440308ad60fec8323936245652772518bedbee50fd0f00b759cd64799b3e', '[\"*\"]', NULL, '2022-02-12 23:41:01', '2022-02-12 23:41:01'),
(2, 'App\\Models\\User', 2, 'MyToken', '09a0e0fcd931e316fad5ba8d564537e629fc0ccb33e8d246de383c476c932933', '[\"*\"]', NULL, '2022-02-12 23:41:18', '2022-02-12 23:41:18'),
(3, 'App\\Models\\User', 3, 'MyToken', 'fc1095a2d9f5a8d97554c916b6b7cbdd74726c3d6f5b5c962128a82e6e8ad262', '[\"*\"]', NULL, '2022-02-12 23:41:31', '2022-02-12 23:41:31'),
(4, 'App\\Models\\User', 4, 'MyToken', 'dbfc03566eb0bcc28241e0b8220e183a71d88cd33b70e53f62a6457f65399ca8', '[\"*\"]', NULL, '2022-02-12 23:41:43', '2022-02-12 23:41:43'),
(5, 'App\\Models\\User', 5, 'MyToken', '2ab022e68925c9b9147e6b93a59369ab2ecc92b77603de388204fa0c2817300a', '[\"*\"]', NULL, '2022-02-12 23:41:57', '2022-02-12 23:41:57'),
(6, 'App\\Models\\User', 6, 'MyToken', 'c66acb93278384e4f626732f657486083ea5732d8b1f51bde3df28a282c31358', '[\"*\"]', NULL, '2022-02-14 03:41:28', '2022-02-14 03:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Post 1', 'Description 1', 'C:\\xampp\\tmp\\php8059.tmp', '2022-02-12 23:50:47', '2022-02-12 23:50:47'),
(2, 2, 2, 'Post 2', 'Description 2', 'C:\\xampp\\tmp\\phpBD73.tmp', '2022-02-12 23:51:03', '2022-02-12 23:51:03'),
(3, 3, 3, 'Post 3', 'Description 3', 'C:\\xampp\\tmp\\php88A3.tmp', '2022-02-12 23:51:55', '2022-02-12 23:51:55'),
(4, 4, 4, 'Post 4', 'Description 4', 'C:\\xampp\\tmp\\phpAD43.tmp', '2022-02-12 23:52:04', '2022-02-12 23:52:04'),
(6, 1, 2, 'Post test', 'Test', 'C:\\xampp\\Xampp\\tmp\\php9342.tmp', '2022-02-14 03:51:13', '2022-02-14 03:51:13');

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
(1, 'Lyden', 'lyden@gmail.com', NULL, '$2y$10$bsP5SnuMpWITIa7xoo8ZdODp6RZ/Hy3gf/iPZ7i0JUr3wF/ZO4Odm', '3038854.jpg', NULL, '2022-02-12 23:41:01', '2022-02-12 23:41:01'),
(2, 'Koemsak', 'koemsak@gmail.com', NULL, '$2y$10$Wh54v97DNvNUxc0yMD1XAO0vdydGE16h9c8PPNhhV4UYWEx8Nw6UC', '3038854.jpg', NULL, '2022-02-12 23:41:18', '2022-02-12 23:41:18'),
(3, 'Lyheang', 'lyheang@gmail.com', NULL, '$2y$10$/Nf97fUGYRvCOzUoZ9hlR.SxSGw2j.KtyubYAK/HWO6pnUrr/QhNq', '3038854.jpg', NULL, '2022-02-12 23:41:31', '2022-02-12 23:41:31'),
(4, 'Thon', 'thon@gmail.com', NULL, '$2y$10$JseUE3ao3s2bl1wpXxuDoe9LWo6XAUK6LL5BqgBF4wMDBwTXK5GeC', '3038854.jpg', NULL, '2022-02-12 23:41:43', '2022-02-12 23:41:43'),
(6, 'Vantheav', 'vantheav@gamil.com', NULL, '$2y$10$1l0p/Vqtr1YjHmos171GsO/XCK8iWUqSHRl9Wsh9i8sfISifH/ANG', 'images.png', NULL, '2022-02-14 03:41:28', '2022-02-14 03:41:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
