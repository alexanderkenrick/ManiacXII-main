-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 06:35 PM
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
-- Database: `maniac_rally`
--

-- --------------------------------------------------------

--
-- Table structure for table `artifacts`
--

CREATE TABLE `artifacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artifacts`
--

INSERT INTO `artifacts` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Territory Scramble', '831313.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(2, 'Capture The Flag', '641389.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(3, 'Bingo', '898624.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(4, 'Food Crisis', '384929.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(5, 'Blind Architect', '254804.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(6, 'Letter Scramble', '631086.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(7, 'Focus On Me', '974181.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(8, 'Crack Code', '628492.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(9, 'Move The Match', '625126.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(10, 'Spot The Difference', '573536.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(11, 'Guess The Color', '800088.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(12, 'Way Out', '127829.png', '2022-08-31 22:06:15', '2022-08-31 22:06:15');

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
-- Table structure for table `game_besars`
--

CREATE TABLE `game_besars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_lingkarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_lingkarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `move` int(11) NOT NULL,
  `poin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_besars`
--

INSERT INTO `game_besars` (`id`, `id_lingkarang`, `pos_lingkarang`, `move`, `poin`, `created_at`, `updated_at`) VALUES
(1, 'k1', '2,11', 7, 0, NULL, '2022-09-01 08:13:22'),
(2, 'k2', '1,19', 7, 0, NULL, '2022-08-31 22:08:42'),
(3, 'k3', '0,0', 8, 0, NULL, NULL),
(4, 'k4', '0,0', 8, 0, NULL, NULL),
(5, 'k5', '0,0', 8, 0, NULL, NULL),
(6, 'k6', '0,0', 8, 0, NULL, NULL),
(7, 'k7', '0,0', 8, 0, NULL, NULL),
(8, 'k8', '0,0', 8, 0, NULL, NULL),
(9, 'k9', '0,0', 8, 0, NULL, NULL),
(10, 'k10', '0,0', 8, 0, NULL, NULL),
(11, 'k11', '0,0', 8, 0, NULL, NULL),
(12, 'k12', '0,0', 8, 0, NULL, NULL),
(13, 'k13', '0,0', 8, 0, NULL, NULL),
(14, 'k14', '0,0', 8, 0, NULL, NULL),
(15, 'k15', '0,0', 8, 0, NULL, NULL),
(16, 'k16', '0,0', 8, 0, NULL, NULL),
(17, 'k17', '0,0', 8, 0, NULL, NULL),
(18, 'k18', '0,0', 8, 0, NULL, NULL),
(19, 'k19', '0,0', 8, 0, NULL, NULL),
(20, 'k20', '0,0', 8, 0, NULL, NULL),
(21, 'k21', '0,0', 8, 0, NULL, NULL),
(22, 'k22', '0,0', 8, 0, NULL, NULL),
(23, 'k23', '0,0', 8, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `harga`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Shovel', 50, 'Menggali tanah yang ada di posisi player', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(2, 'Scanner', 75, 'Scan emas 5 kotak player (atas, bawah, kanan, kiri, tengah)', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(3, 'Mini Scanner', 25, 'Scan emas hanya 1 kotak tepat pada posisi player', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(4, 'Pickaxe', 25, 'Menghancurkan batu di posisi player', '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(5, 'Thief Bag', 200, 'Mengambil 25% emas lawan jika digunakan di tempat yang sama dengan lawan', '2022-08-31 22:06:15', '2022-08-31 22:06:15');

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
(4, '2022_07_02_135219_players', 1),
(5, '2022_07_02_135825_pos', 1),
(6, '2022_07_02_144158_artifact', 1),
(7, '2022_07_02_144736_players_artifacts', 1),
(8, '2022_07_02_170405_items', 1),
(9, '2022_07_02_170714_player_items', 1),
(10, '2022_07_06_101640_create_poins_table', 1),
(11, '2022_07_08_055950_create_game_besars_table', 1),
(12, '2022_07_23_135903_create_tabel_gamebes_table', 1);

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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gamebes_tim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_tim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monyx` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `team_id`, `gamebes_tim`, `nama_tim`, `username`, `password`, `monyx`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'admin', '$2y$10$8Sw6LXmSxfHihFQ9jWAR0OzUYlU/3VuIuWG8PNsyGKR37vExGe0eS', 0, 3, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(2, NULL, NULL, NULL, 'jaga1', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(3, NULL, NULL, NULL, 'jaga2', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(4, NULL, NULL, NULL, 'jaga3', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(5, NULL, NULL, NULL, 'jaga4', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(6, NULL, NULL, NULL, 'jaga5', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(7, NULL, NULL, NULL, 'jaga6', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(8, NULL, NULL, NULL, 'jaga7', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(9, NULL, NULL, NULL, 'jaga8', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(10, NULL, NULL, NULL, 'jaga9', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(11, NULL, NULL, NULL, 'jaga10', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(12, NULL, NULL, NULL, 'jaga11', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(13, NULL, NULL, NULL, 'jaga12', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(14, NULL, NULL, NULL, 'jaga13', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(15, NULL, NULL, NULL, 'jaga14', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(16, NULL, NULL, NULL, 'jaga15', '$2y$10$BomktiUinmpctGQuireDb.RwDjQ1bAzYwfdJhPeEmXZlIkF78pWLi', 0, 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(17, NULL, '1', 'tim1', 'tim1', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(18, NULL, '2', 'tim2', 'tim2', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(19, NULL, '3', 'tim3', 'tim3', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(20, NULL, '4', 'tim4', 'tim4', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(21, NULL, '5', 'tim5', 'tim5', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(22, NULL, '6', 'tim6', 'tim6', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(23, NULL, '7', 'tim7', 'tim7', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(24, NULL, '8', 'tim8', 'tim8', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(25, NULL, '9', 'tim9', 'tim9', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(26, NULL, '10', 'tim10', 'tim10', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(27, NULL, '11', 'tim11', 'tim11', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(28, NULL, '12', 'tim12', 'tim12', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(29, NULL, '13', 'tim13', 'tim13', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(30, NULL, '14', 'tim14', 'tim14', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15'),
(31, NULL, '15', 'tim15', 'tim15', '$2y$10$4/2yEq4qKhxCBfDtcTh8uuDqCvkzcf5U1sPsfQkQaAjxlKqE12Hy6', 0, 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `player_artifacts`
--

CREATE TABLE `player_artifacts` (
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `artifact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--

CREATE TABLE `player_items` (
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poins`
--

CREATE TABLE `poins` (
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `pos_id` bigint(20) UNSIGNED NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penjaga` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `linkZoom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idZoom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passZoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkZoom2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idZoom2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passZoom2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`id`, `nama`, `status`, `status2`, `id_penjaga`, `created_at`, `updated_at`, `linkZoom`, `idZoom`, `passZoom`, `linkZoom2`, `idZoom2`, `passZoom2`, `zoom2`) VALUES
(1, 'Territory Scramble', 'Open', 'Open', 1, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248', '83735932248', '', NULL, NULL, NULL, 0),
(2, 'Capture The Flag', 'Open', 'Open', 2, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=123', '83735932248', '123', NULL, NULL, NULL, 0),
(3, 'Bingo', 'Open', 'Open', 3, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1sa23', '83735932248', '1sa23', NULL, NULL, NULL, 0),
(4, 'Food Crisis', 'Open', 'Open', 4, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1235', '83735932248', '1235', 'https://us05web.zoom.us/j/83735932248', '83735932248', '1235', 1),
(5, 'Blind Architect', 'Open', 'Open', 5, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=12ssa34', '83735932248', '12sssa34', 'https://us05web.zoom.us/j/83735932248', '83735932248', '12sssa34', 1),
(6, 'Letter Scramble', 'Open', 'Open', 6, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1234', '83735932248', '1234', 'https://us05web.zoom.us/j/83735932248', '83735932248', '1234', 1),
(7, 'Focus On Me', 'Open', 'Open', 7, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1234s', '83735932248', '1234s', 'https://us05web.zoom.us/j/83735932248', '83735932248', '1234s', 1),
(8, 'Crack Code', 'Open', 'Open', 8, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=12fff33', '83735932248', '12fff33', 'https://us05web.zoom.us/j/83735932248', '83735932248', '12fff33', 1),
(9, 'Move The Match', 'Open', 'Open', 9, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1sada23', '83735932248', '1sada23', NULL, NULL, NULL, 0),
(10, 'Spot The Difference', 'Open', 'Open', 10, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1233dsa', '83735932248', '1233dsa', 'https://us05web.zoom.us/j/83735932248', '83735932248', '1233dsa', 1),
(11, 'Guess The Color', 'Open', 'Open', 11, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=123sss3', '83735932248', '123sss3', NULL, NULL, NULL, 0),
(12, 'Way Out', 'Open', 'Open', 12, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=1233sa', '83735932248', '1233sa', 'https://us05web.zoom.us/j/83735932248', '83735932248', '1233sa', 1),
(13, 'Dungeon I - Savvy', 'Open', 'Open', 13, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=t12414', '83735932248', 't12414', NULL, NULL, NULL, 0),
(14, 'Dungeon II - Knowledge', 'Open', 'Open', 14, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=123465346', '83735932248', '1234565346', NULL, NULL, NULL, 0),
(15, 'Dungeon III - Truth', 'Open', 'Open', 15, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=123casfs', '83735932248', '123casfs', NULL, NULL, NULL, 0),
(16, 'Treasure Hunt', 'Open', 'Open', 16, '2022-08-31 22:06:15', '2022-08-31 22:06:15', 'https://us05web.zoom.us/j/83735932248?pwd=123casfs', '83735932248', '123456', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_gamebes`
--

CREATE TABLE `tabel_gamebes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baris` int(11) NOT NULL,
  `kolom` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `rock` int(11) NOT NULL,
  `water` int(11) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabel_gamebes`
--

INSERT INTO `tabel_gamebes` (`id`, `baris`, `kolom`, `gold`, `rock`, `water`, `class`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(2, 1, 2, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(3, 1, 3, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(4, 1, 4, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(5, 1, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(6, 1, 6, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(7, 1, 7, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(8, 1, 8, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(9, 1, 9, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(10, 1, 10, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(11, 1, 11, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(12, 1, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(13, 1, 13, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(14, 1, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(15, 1, 15, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(16, 1, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(17, 1, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(18, 1, 18, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(19, 1, 19, 0, 0, NULL, 'lava', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(20, 1, 20, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(21, 2, 1, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(22, 2, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(23, 2, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(24, 2, 4, 2, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(25, 2, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(26, 2, 6, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(27, 2, 7, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(28, 2, 8, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(29, 2, 9, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(30, 2, 10, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(31, 2, 11, 0, 0, NULL, 'lava', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(32, 2, 12, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(33, 2, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(34, 2, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(35, 2, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(36, 2, 16, 2, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(37, 2, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(38, 2, 18, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(39, 2, 19, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(40, 2, 20, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(41, 3, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(42, 3, 2, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(43, 3, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(44, 3, 4, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(45, 3, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(46, 3, 6, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(47, 3, 7, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(48, 3, 8, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(49, 3, 9, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(50, 3, 10, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(51, 3, 11, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(52, 3, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(53, 3, 13, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(54, 3, 14, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(55, 3, 15, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(56, 3, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(57, 3, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(58, 3, 18, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(59, 3, 19, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(60, 3, 20, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(61, 4, 1, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(62, 4, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(63, 4, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(64, 4, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(65, 4, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(66, 4, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(67, 4, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(68, 4, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(69, 4, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(70, 4, 10, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(71, 4, 11, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(72, 4, 12, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(73, 4, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(74, 4, 14, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(75, 4, 15, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(76, 4, 16, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(77, 4, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(78, 4, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(79, 4, 19, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(80, 4, 20, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(81, 5, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(82, 5, 2, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(83, 5, 3, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(84, 5, 4, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(85, 5, 5, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(86, 5, 6, 0, 0, NULL, '', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(87, 5, 7, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(88, 5, 8, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(89, 5, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(90, 5, 10, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(91, 5, 11, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(92, 5, 12, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(93, 5, 13, 2, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(94, 5, 14, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(95, 5, 15, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(96, 5, 16, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(97, 5, 17, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(98, 5, 18, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(99, 5, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(100, 5, 20, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(101, 6, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(102, 6, 2, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(103, 6, 3, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(104, 6, 4, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(105, 6, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(106, 6, 6, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(107, 6, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(108, 6, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(109, 6, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(110, 6, 10, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(111, 6, 11, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(112, 6, 12, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(113, 6, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(114, 6, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(115, 6, 15, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(116, 6, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(117, 6, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(118, 6, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(119, 6, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(120, 6, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(121, 7, 1, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(122, 7, 2, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(123, 7, 3, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(124, 7, 4, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(125, 7, 5, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(126, 7, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(127, 7, 7, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(128, 7, 8, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(129, 7, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(130, 7, 10, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(131, 7, 11, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(132, 7, 12, 1, 1, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(133, 7, 13, 1, 1, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(134, 7, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(135, 7, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(136, 7, 16, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(137, 7, 17, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(138, 7, 18, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(139, 7, 19, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(140, 7, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(141, 8, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(142, 8, 2, 0, 0, NULL, '', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(143, 8, 3, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(144, 8, 4, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(145, 8, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(146, 8, 6, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(147, 8, 7, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(148, 8, 8, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(149, 8, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(150, 8, 10, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(151, 8, 11, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(152, 8, 12, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(153, 8, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(154, 8, 14, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(155, 8, 15, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(156, 8, 16, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(157, 8, 17, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(158, 8, 18, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(159, 8, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(160, 8, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(161, 9, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(162, 9, 2, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(163, 9, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(164, 9, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(165, 9, 5, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(166, 9, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(167, 9, 7, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(168, 9, 8, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(169, 9, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(170, 9, 10, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(171, 9, 11, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(172, 9, 12, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(173, 9, 13, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(174, 9, 14, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(175, 9, 15, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(176, 9, 16, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(177, 9, 17, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(178, 9, 18, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(179, 9, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(180, 9, 20, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(181, 10, 1, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(182, 10, 2, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(183, 10, 3, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(184, 10, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(185, 10, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(186, 10, 6, 2, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(187, 10, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(188, 10, 8, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(189, 10, 9, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(190, 10, 10, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(191, 10, 11, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(192, 10, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(193, 10, 13, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(194, 10, 14, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(195, 10, 15, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(196, 10, 16, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(197, 10, 17, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(198, 10, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(199, 10, 19, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(200, 10, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(201, 11, 1, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(202, 11, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(203, 11, 3, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(204, 11, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(205, 11, 5, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(206, 11, 6, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(207, 11, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(208, 11, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(209, 11, 9, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(210, 11, 10, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(211, 11, 11, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(212, 11, 12, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(213, 11, 13, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(214, 11, 14, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(215, 11, 15, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(216, 11, 16, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(217, 11, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(218, 11, 18, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(219, 11, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(220, 11, 20, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(221, 12, 1, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(222, 12, 2, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(223, 12, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(224, 12, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(225, 12, 5, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(226, 12, 6, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(227, 12, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(228, 12, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(229, 12, 9, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(230, 12, 10, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(231, 12, 11, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(232, 12, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(233, 12, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(234, 12, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(235, 12, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(236, 12, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(237, 12, 17, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(238, 12, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(239, 12, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(240, 12, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(241, 13, 1, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(242, 13, 2, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(243, 13, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(244, 13, 4, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(245, 13, 5, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(246, 13, 6, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(247, 13, 7, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(248, 13, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(249, 13, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(250, 13, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(251, 13, 11, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(252, 13, 12, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(253, 13, 13, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(254, 13, 14, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(255, 13, 15, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(256, 13, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(257, 13, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(258, 13, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(259, 13, 19, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(260, 13, 20, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(261, 14, 1, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(262, 14, 2, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(263, 14, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(264, 14, 4, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(265, 14, 5, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(266, 14, 6, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(267, 14, 7, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(268, 14, 8, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(269, 14, 9, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(270, 14, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(271, 14, 11, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(272, 14, 12, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(273, 14, 13, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(274, 14, 14, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(275, 14, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(276, 14, 16, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(277, 14, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(278, 14, 18, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(279, 14, 19, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(280, 14, 20, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(281, 15, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(282, 15, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(283, 15, 3, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(284, 15, 4, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(285, 15, 5, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(286, 15, 6, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(287, 15, 7, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(288, 15, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(289, 15, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(290, 15, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(291, 15, 11, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(292, 15, 12, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(293, 15, 13, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(294, 15, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(295, 15, 15, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(296, 15, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(297, 15, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(298, 15, 18, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(299, 15, 19, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(300, 15, 20, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(301, 16, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(302, 16, 2, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(303, 16, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(304, 16, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(305, 16, 5, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(306, 16, 6, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(307, 16, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(308, 16, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(309, 16, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(310, 16, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(311, 16, 11, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(312, 16, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(313, 16, 13, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(314, 16, 14, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(315, 16, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(316, 16, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(317, 16, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(318, 16, 18, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(319, 16, 19, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(320, 16, 20, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(321, 17, 1, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(322, 17, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(323, 17, 3, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(324, 17, 4, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(325, 17, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(326, 17, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(327, 17, 7, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(328, 17, 8, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(329, 17, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(330, 17, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(331, 17, 11, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(332, 17, 12, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(333, 17, 13, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(334, 17, 14, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(335, 17, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(336, 17, 16, 2, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(337, 17, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(338, 17, 18, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(339, 17, 19, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(340, 17, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(341, 18, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(342, 18, 2, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(343, 18, 3, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(344, 18, 4, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(345, 18, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(346, 18, 6, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(347, 18, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(348, 18, 8, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(349, 18, 9, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(350, 18, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(351, 18, 11, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(352, 18, 12, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(353, 18, 13, 2, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(354, 18, 14, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(355, 18, 15, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(356, 18, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(357, 18, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(358, 18, 18, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(359, 18, 19, 1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(360, 18, 20, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(361, 19, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(362, 19, 2, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(363, 19, 3, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(364, 19, 4, 0, 0, 1, 'water', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(365, 19, 5, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(366, 19, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(367, 19, 7, 2, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(368, 19, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(369, 19, 9, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(370, 19, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(371, 19, 11, 1, 1, NULL, 'hotzone gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(372, 19, 12, -1, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(373, 19, 13, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(374, 19, 14, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(375, 19, 15, 2, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(376, 19, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(377, 19, 17, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(378, 19, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(379, 19, 19, 1, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(380, 19, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(381, 20, 1, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(382, 20, 2, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(383, 20, 3, 2, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(384, 20, 4, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(385, 20, 5, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(386, 20, 6, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(387, 20, 7, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(388, 20, 8, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(389, 20, 9, 1, 1, NULL, 'gold-dust', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(390, 20, 10, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(391, 20, 11, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(392, 20, 12, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(393, 20, 13, 0, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(394, 20, 14, 2, 0, NULL, 'hotzone', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(395, 20, 15, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(396, 20, 16, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(397, 20, 17, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(398, 20, 18, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(399, 20, 19, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16'),
(400, 20, 20, 0, 0, NULL, ' ', '2022-08-31 22:06:16', '2022-08-31 22:06:16');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `artifacts`
--
ALTER TABLE `artifacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_besars`
--
ALTER TABLE `game_besars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_foreign` (`team_id`);

--
-- Indexes for table `player_artifacts`
--
ALTER TABLE `player_artifacts`
  ADD KEY `player_artifacts_player_id_foreign` (`player_id`),
  ADD KEY `player_artifacts_artifact_id_foreign` (`artifact_id`);

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_items_player_id_foreign` (`player_id`),
  ADD KEY `player_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `poins`
--
ALTER TABLE `poins`
  ADD KEY `poins_player_id_foreign` (`player_id`),
  ADD KEY `poins_pos_id_foreign` (`pos_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_gamebes`
--
ALTER TABLE `tabel_gamebes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `artifacts`
--
ALTER TABLE `artifacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_besars`
--
ALTER TABLE `game_besars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tabel_gamebes`
--
ALTER TABLE `tabel_gamebes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `maniacxi`.`teams` (`id`);

--
-- Constraints for table `player_artifacts`
--
ALTER TABLE `player_artifacts`
  ADD CONSTRAINT `player_artifacts_artifact_id_foreign` FOREIGN KEY (`artifact_id`) REFERENCES `artifacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_artifacts_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_items_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poins`
--
ALTER TABLE `poins`
  ADD CONSTRAINT `poins_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poins_pos_id_foreign` FOREIGN KEY (`pos_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
