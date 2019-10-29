-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 09:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_10_28_091435_create_posts_table', 1),
(7, '2019_10_29_070758_create_verifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mahmoud@gmail.com', '$2y$10$sECIDGvu3Xs3lIb.HAWqZ.vJ/66ti3UHmm55VopM3KFJhNrShXxRm', '2019-10-29 06:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `detail`, `author`, `created_at`, `updated_at`) VALUES
(4, 'AJAX', 'IS Asynchronous java script', 'keee', NULL, NULL),
(5, 'html', 'www', 'ccc', NULL, NULL),
(6, 'laravel6', 'fffff', 'ggggggggggggggg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahmoud', 'mahmoud@gmail.com', '$2y$10$cullaDzprBiIDD2EluOI1euWRCnh15KTNilvIn4g5643GOI0a3Hga', 1, '8M42vHAaKDVid2XAk9hOXQRnH3rBI4xzFoT3w0rroIBqVvAraSJlrCUxAnLB', '2019-10-29 05:19:57', '2019-10-29 05:19:57'),
(2, 'ahmed', 'ahmed@gmail.com', '$2y$10$9EBBWjQ/5zVZhGmDra3eTuuHeJlcNPphI8SR/UuNMw1bXXTOKD746', 0, NULL, '2019-10-29 06:08:53', '2019-10-29 06:08:53'),
(3, 'ibra', 'IBRA@M.COM', '$2y$10$Z4QwuvXLb9YZ44gr9ZtIZeU4rVTbVwMypCZPHXHK8rPywGG0XQGQ6', 0, NULL, '2019-10-29 06:12:36', '2019-10-29 06:12:36'),
(4, 'basem', 'basem@gmail.com', '$2y$10$c0NUNVvUZPvJOrIMrL62tOhyAbkGepA.V6L36PogZm6fZ2QoPwf46', 0, NULL, '2019-10-29 06:17:42', '2019-10-29 06:17:42'),
(5, 'ismail', 'd@d.com', '$2y$10$lhxYpXvjElQ987W6UTYw4u5F0OZ3qAdJsT/cLkHoindzh/Vhm7aPa', 0, NULL, '2019-10-29 06:19:45', '2019-10-29 06:19:45'),
(6, 'noor', 'noor@gmail.com', '$2y$10$/G.9Yy4svCUAOb0JAK16L.Rvqex8t/FETiNifyZ1ohgMywHJbeSrS', 1, 'kJcFltnZ3cH3AqVb6eE56oykWCfIr6UNo3ElbaBunbLGnPgAQOZ6DZGVT8Sq', '2019-10-29 06:26:06', '2019-10-29 06:26:19'),
(7, 'eg', 'eg@b.com', '$2y$10$WQepwHpeFd9R3AKXcvMbAeLrl97YDFS0amOl4M4xltcS8MjNWaR3C', 1, 'ckzMa5x6RqMC0DmhEqnhNiC9gMt4HwnM4h9tgn3Id28t5MvFarR4hcI2QQYN', '2019-10-29 06:34:36', '2019-10-29 06:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(2, 'B07IFg8NdWnGqLQDgUoMwt11oUttFOiJ5q8RYDNS', '2019-10-29 06:08:53', '2019-10-29 06:08:53'),
(3, 'GTLeZQTulUXgr7NFik1gaaT4lNrgVkRFGYk1homW', '2019-10-29 06:12:36', '2019-10-29 06:12:36'),
(4, 'w2GqbO7j5UcAeUsmUCCfh3SKtc5yRXAvupNVrKSc', '2019-10-29 06:17:42', '2019-10-29 06:17:42'),
(5, 'sUM0rmORJqNA3iV40yQXciez77fMMfKTAcjgzHnh', '2019-10-29 06:19:45', '2019-10-29 06:19:45'),
(6, 'LnHZzel7cYJypcc0kYvXkSYwjBInDqW6DhlBsSqT', '2019-10-29 06:26:06', '2019-10-29 06:26:06'),
(7, 'FHpR0zzkwz6O7tnx2bRNd6mElmUcUG07pnh3Lrwl', '2019-10-29 06:34:36', '2019-10-29 06:34:36');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
