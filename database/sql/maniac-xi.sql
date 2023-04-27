-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 06:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maniac-xi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'dani123', '$2y$10$ztbEZm38Qfx619XKCWICROM73SyfKxUQCqs3OR67qVOvKVhfMNWbu', 0, NULL, NULL),
(2, 'danub', '$2y$10$AXY7dwTuHF9.yADZbz8dmuF.J4Vf10INe7mV6geT05PvfPp1c5Cta', 0, NULL, NULL),
(3, 'admin', '$2y$10$kg/2Mw7qTYrBhWLM2OuuZOX326aRvsPq4Rp3rA5XfkyysSp5JfxKy', 1, '2022-05-19 05:03:30', '2022-05-19 05:03:30'),
(4, 'SuperSI', '$2y$10$oc712QbBO0JkCEKsSiZscOkaTsboHY5q9mJ0Kzg/AZD0NPfAwmv.a', 2, '2022-05-22 06:32:45', '2022-05-22 06:32:45');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_09_113545_create_accounts_table', 1),
(5, '2022_05_09_113605_create_teams_table', 1),
(6, '2022_05_09_113617_create_team_details_table', 1),
(7, '2022_05_09_115637_update_foreignkey_accounts', 1),
(8, '2022_05_09_115712_update_foreignkey_teams', 1),
(9, '2022_05_09_115719_update_foreignkey_team_details', 1),
(10, '2022_07_31_064841_create_workshops_table', 2),
(11, '2022_07_31_065944_create_team_has_workshop_table', 3);

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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `account_id`, `team_name`, `school_name`, `school_address`, `school_number`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pasti Menang', 'Sekolah Jaya', '123 Street', '081222222', 'pending', NULL, NULL, NULL),
(2, 3, 'horee', 'SMA Kr. Petra 2', 'Jl Manyar Tirtoasri 1-3, Surabaya, 123456', '03123456789', 'accepted', '', '2022-05-19 05:03:30', '2022-05-19 05:38:34'),
(3, 4, 'Super SI', 'Sekolah SI Setempat', 'tidak ada alamat', '03123456789', 'pending', NULL, '2022-05-22 06:32:45', '2022-05-22 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`id`, `team_id`, `name`, `role`, `phone_number`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wardi Halim', 'Leader', '0992 5481 984', 'amelia02@yahoo.co.id', 'id1.jpg', NULL, NULL),
(2, 1, 'ElonS Saputra', 'Member', '0967 3637 998', 'gantar.rahmawati@gmail.co.id', 'id2.jpg', NULL, NULL),
(3, 1, 'Rangga Putra', 'Member', '0627 4559 833', 'rizki32@yahoo.co.id', 'id3.jpg', NULL, NULL),
(4, 2, 'Hueyan', 'Leader', '08322222222', 'admin@gmail.com', '1652961810_student_card.png', '2022-05-19 05:03:30', '2022-05-19 05:03:30'),
(5, 2, 'Andi', 'Member', '081222222333', 'andi@gmail.com', '1652961810_student_card.png', '2022-05-19 05:03:30', '2022-05-19 05:03:30'),
(6, 2, 'Hiro', 'Member', '087123456789', 'hiro@gmail.com', '1652963346_file156914.pdf', '2022-05-19 05:03:30', '2022-05-19 05:29:06'),
(7, 3, 'Hueyan Roberto', 'Leader', '-', 'admin@gmail.com', '1653226365_481720.jpg', '2022-05-22 06:32:45', '2022-05-22 06:32:45'),
(8, 3, 'anggota 1', 'Member', '-', '2@gmail.com', '1653226365_277089.jpg', '2022-05-22 06:32:45', '2022-05-22 06:32:45'),
(9, 3, 'anggota 2', 'Member', '-', '3@gmail.com', '1653226365_360_F_297798377_VB9egqGnRKcZxU53wybEHLRnnTrcvlAH.jpg', '2022-05-22 06:32:45', '2022-05-22 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `team_has_workshop`
--

CREATE TABLE `team_has_workshop` (
  `team_detail_id` bigint(20) UNSIGNED NOT NULL,
  `workshop_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_has_workshop`
--

INSERT INTO `team_has_workshop` (`team_detail_id`, `workshop_id`) VALUES
(2, 1),
(3, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `name`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Workshop Game Concept Design', '2022-08-26 17:00:00', NULL, NULL),
(2, 'Workshop Game Asset Design', '2022-08-27 17:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_username_unique` (`username`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_account_id_foreign` (`account_id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_details_team_id_foreign` (`team_id`);

--
-- Indexes for table `team_has_workshop`
--
ALTER TABLE `team_has_workshop`
  ADD PRIMARY KEY (`team_detail_id`,`workshop_id`),
  ADD KEY `team_has_workshop_workshop_id_foreign` (`workshop_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `team_details`
--
ALTER TABLE `team_details`
  ADD CONSTRAINT `team_details_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `team_has_workshop`
--
ALTER TABLE `team_has_workshop`
  ADD CONSTRAINT `team_has_workshop_team_detail_id_foreign` FOREIGN KEY (`team_detail_id`) REFERENCES `team_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_has_workshop_workshop_id_foreign` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
