-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2026 at 07:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ayah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id`, `nik`, `api_key`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `nama_ayah`, `nama_ibu`, `email`, `created_at`, `updated_at`) VALUES
('6282119171960', '3204091706030011', NULL, 'Furqon Muhammad Zulkifli', 'L', '2024-06-17', 'Hadi Triyasa', 'Oon Rahmawati', 'alatukurberattinggibayi@gmail.com', '2025-06-10 03:40:06', '2025-06-11 06:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `bbpbl`
--

CREATE TABLE `bbpbl` (
  `id` bigint UNSIGNED NOT NULL,
  `length` double NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bbpbl`
--

INSERT INTO `bbpbl` (`id`, `length`, `l`, `m`, `s`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 45.5, -0.3521, 2.541, 0.09152, 2, 2.1, 2.3, 2.5, 2.7, 2.9, 3.1, NULL, NULL),
(2, 46, -0.3521, 2.641, 0.09122, 2.1, 2.2, 2.4, 2.6, 2.8, 3, 3.2, NULL, NULL),
(3, 46.5, -0.3521, 2.741, 0.09092, 2.2, 2.3, 2.5, 2.7, 2.9, 3.1, 3.3, NULL, NULL),
(4, 47, -0.3521, 2.841, 0.09062, 2.3, 2.4, 2.6, 2.8, 3, 3.2, 3.4, NULL, NULL),
(5, 47.5, -0.3521, 2.941, 0.09032, 2.4, 2.5, 2.7, 2.9, 3.1, 3.3, 3.5, NULL, NULL),
(6, 48, -0.3521, 3.041, 0.09002, 2.5, 2.6, 2.8, 3, 3.2, 3.4, 3.6, NULL, NULL),
(7, 48.5, -0.3521, 3.141, 0.08972, 2.6, 2.7, 2.9, 3.1, 3.3, 3.5, 3.7, NULL, NULL),
(8, 49, -0.3521, 3.241, 0.08942, 2.7, 2.8, 3, 3.2, 3.4, 3.6, 3.8, NULL, NULL),
(9, 49.5, -0.3521, 3.341, 0.08912, 2.8, 2.9, 3.1, 3.3, 3.5, 3.7, 3.9, NULL, NULL),
(10, 50, -0.3521, 3.441, 0.08882, 2.9, 3, 3.2, 3.4, 3.6, 3.8, 4, NULL, NULL),
(11, 50.5, -0.3521, 3.541, 0.08852, 3, 3.1, 3.3, 3.5, 3.7, 3.9, 4.1, NULL, NULL),
(12, 51, -0.3521, 3.641, 0.08822, 3.1, 3.2, 3.4, 3.6, 3.8, 4, 4.2, NULL, NULL),
(13, 51.5, -0.3521, 3.741, 0.08792, 3.2, 3.3, 3.5, 3.7, 3.9, 4.1, 4.3, NULL, NULL),
(14, 52, -0.3521, 3.841, 0.08762, 3.3, 3.4, 3.6, 3.8, 4, 4.2, 4.4, NULL, NULL),
(15, 52.5, -0.3521, 3.941, 0.08732, 3.4, 3.5, 3.7, 3.9, 4.1, 4.3, 4.5, NULL, NULL),
(16, 53, -0.3521, 4.041, 0.08702, 3.5, 3.6, 3.8, 4, 4.2, 4.4, 4.6, NULL, NULL),
(17, 53.5, -0.3521, 4.141, 0.08672, 3.6, 3.7, 3.9, 4.1, 4.3, 4.5, 4.7, NULL, NULL),
(18, 54, -0.3521, 4.241, 0.08642, 3.7, 3.8, 4, 4.2, 4.4, 4.6, 4.8, NULL, NULL),
(19, 54.5, -0.3521, 4.341, 0.08612, 3.8, 3.9, 4.1, 4.3, 4.5, 4.7, 4.9, NULL, NULL),
(20, 55, -0.3521, 4.441, 0.08582, 3.9, 4, 4.2, 4.4, 4.6, 4.8, 5, NULL, NULL),
(21, 55.5, -0.3521, 4.541, 0.08552, 4, 4.1, 4.3, 4.5, 4.7, 4.9, 5.1, NULL, NULL),
(22, 56, -0.3521, 4.641, 0.08522, 4.1, 4.2, 4.4, 4.6, 4.8, 5, 5.2, NULL, NULL),
(23, 56.5, -0.3521, 4.741, 0.08492, 4.2, 4.3, 4.5, 4.7, 4.9, 5.1, 5.3, NULL, NULL),
(24, 57, -0.3521, 4.841, 0.08462, 4.3, 4.4, 4.6, 4.8, 5, 5.2, 5.4, NULL, NULL),
(25, 57.5, -0.3521, 4.941, 0.08432, 4.4, 4.5, 4.7, 4.9, 5.1, 5.3, 5.5, NULL, NULL),
(26, 58, -0.3521, 5.041, 0.08402, 4.5, 4.6, 4.8, 5, 5.2, 5.4, 5.6, NULL, NULL),
(27, 58.5, -0.3521, 5.141, 0.08372, 4.6, 4.7, 4.9, 5.1, 5.3, 5.5, 5.7, NULL, NULL),
(28, 59, -0.3521, 5.241, 0.08342, 4.7, 4.8, 5, 5.2, 5.4, 5.6, 5.8, NULL, NULL),
(29, 59.5, -0.3521, 5.341, 0.08312, 4.8, 4.9, 5.1, 5.3, 5.5, 5.7, 5.9, NULL, NULL),
(30, 60, -0.3521, 5.441, 0.08282, 4.9, 5, 5.2, 5.4, 5.6, 5.8, 6, NULL, NULL),
(31, 60.5, -0.3521, 5.541, 0.08252, 5, 5.1, 5.3, 5.5, 5.7, 5.9, 6.1, NULL, NULL),
(32, 61, -0.3521, 5.641, 0.08222, 5.1, 5.2, 5.4, 5.6, 5.8, 6, 6.2, NULL, NULL),
(33, 61.5, -0.3521, 5.741, 0.08192, 5.2, 5.3, 5.5, 5.7, 5.9, 6.1, 6.3, NULL, NULL),
(34, 62, -0.3521, 5.841, 0.08162, 5.3, 5.4, 5.6, 5.8, 6, 6.2, 6.4, NULL, NULL),
(35, 62.5, -0.3521, 5.941, 0.08132, 5.4, 5.5, 5.7, 5.9, 6.1, 6.3, 6.5, NULL, NULL),
(36, 63, -0.3521, 6.041, 0.08102, 5.5, 5.6, 5.8, 6, 6.2, 6.4, 6.6, NULL, NULL),
(37, 63.5, -0.3521, 6.141, 0.08072, 5.6, 5.7, 5.9, 6.1, 6.3, 6.5, 6.7, NULL, NULL),
(38, 64, -0.3521, 6.241, 0.08042, 5.7, 5.8, 6, 6.2, 6.4, 6.6, 6.8, NULL, NULL),
(39, 64.5, -0.3521, 6.341, 0.08012, 5.8, 5.9, 6.1, 6.3, 6.5, 6.7, 6.9, NULL, NULL),
(40, 65, -0.3521, 6.441, 0.07982, 5.9, 6, 6.2, 6.4, 6.6, 6.8, 7, NULL, NULL),
(41, 65.5, -0.3521, 6.541, 0.07952, 6, 6.1, 6.3, 6.5, 6.7, 6.9, 7.1, NULL, NULL),
(42, 66, -0.3521, 6.641, 0.07922, 6.1, 6.2, 6.4, 6.6, 6.8, 7, 7.2, NULL, NULL),
(43, 66.5, -0.3521, 6.741, 0.07892, 6.2, 6.3, 6.5, 6.7, 6.9, 7.1, 7.3, NULL, NULL),
(44, 67, -0.3521, 6.841, 0.07862, 6.3, 6.4, 6.6, 6.8, 7, 7.2, 7.4, NULL, NULL),
(45, 67.5, -0.3521, 6.941, 0.07832, 6.4, 6.5, 6.7, 6.9, 7.1, 7.3, 7.5, NULL, NULL),
(46, 68, -0.3521, 7.041, 0.07802, 6.5, 6.6, 6.8, 7, 7.2, 7.4, 7.6, NULL, NULL),
(47, 68.5, -0.3521, 7.141, 0.07772, 6.6, 6.7, 6.9, 7.1, 7.3, 7.5, 7.7, NULL, NULL),
(48, 69, -0.3521, 7.241, 0.07742, 6.7, 6.8, 7, 7.2, 7.4, 7.6, 7.8, NULL, NULL),
(49, 69.5, -0.3521, 7.341, 0.07712, 6.8, 6.9, 7.1, 7.3, 7.5, 7.7, 7.9, NULL, NULL),
(50, 70, -0.3521, 7.441, 0.07682, 6.9, 7, 7.2, 7.4, 7.6, 7.8, 8, NULL, NULL),
(51, 70.5, -0.3521, 7.541, 0.07652, 7, 7.1, 7.3, 7.5, 7.7, 7.9, 8.1, NULL, NULL),
(52, 71, -0.3521, 7.641, 0.07622, 7.1, 7.2, 7.4, 7.6, 7.8, 8, 8.2, NULL, NULL),
(53, 71.5, -0.3521, 7.741, 0.07592, 7.2, 7.3, 7.5, 7.7, 7.9, 8.1, 8.3, NULL, NULL),
(54, 72, -0.3521, 7.841, 0.07562, 7.3, 7.4, 7.6, 7.8, 8, 8.2, 8.4, NULL, NULL),
(55, 72.5, -0.3521, 7.941, 0.07532, 7.4, 7.5, 7.7, 7.9, 8.1, 8.3, 8.5, NULL, NULL),
(56, 73, -0.3521, 8.041, 0.07502, 7.5, 7.6, 7.8, 8, 8.2, 8.4, 8.6, NULL, NULL),
(57, 73.5, -0.3521, 8.141, 0.07472, 7.6, 7.7, 7.9, 8.1, 8.3, 8.5, 8.7, NULL, NULL),
(58, 74, -0.3521, 8.241, 0.07442, 7.7, 7.8, 8, 8.2, 8.4, 8.6, 8.8, NULL, NULL),
(59, 74.5, -0.3521, 8.341, 0.07412, 7.8, 7.9, 8.1, 8.3, 8.5, 8.7, 8.9, NULL, NULL),
(60, 75, -0.3521, 8.441, 0.07382, 7.9, 8, 8.2, 8.4, 8.6, 8.8, 9, NULL, NULL),
(61, 75.5, -0.3521, 8.541, 0.07352, 8, 8.1, 8.3, 8.5, 8.7, 8.9, 9.1, NULL, NULL),
(62, 76, -0.3521, 8.641, 0.07322, 8.1, 8.2, 8.4, 8.6, 8.8, 9, 9.2, NULL, NULL),
(63, 76.5, -0.3521, 8.741, 0.07292, 8.2, 8.3, 8.5, 8.7, 8.9, 9.1, 9.3, NULL, NULL),
(64, 77, -0.3521, 8.841, 0.07262, 8.3, 8.4, 8.6, 8.8, 9, 9.2, 9.4, NULL, NULL),
(65, 77.5, -0.3521, 8.941, 0.07232, 8.4, 8.5, 8.7, 8.9, 9.1, 9.3, 9.5, NULL, NULL),
(66, 78, -0.3521, 9.041, 0.07202, 8.5, 8.6, 8.8, 9, 9.2, 9.4, 9.6, NULL, NULL),
(67, 78.5, -0.3521, 9.141, 0.07172, 8.6, 8.7, 8.9, 9.1, 9.3, 9.5, 9.7, NULL, NULL),
(68, 79, -0.3521, 9.241, 0.07142, 8.7, 8.8, 9, 9.2, 9.4, 9.6, 9.8, NULL, NULL),
(69, 79.5, -0.3521, 9.341, 0.07112, 8.8, 8.9, 9.1, 9.3, 9.5, 9.7, 9.9, NULL, NULL),
(70, 80, -0.3521, 9.441, 0.07082, 8.9, 9, 9.2, 9.4, 9.6, 9.8, 10, NULL, NULL),
(71, 80.5, -0.3521, 9.541, 0.07052, 9, 9.1, 9.3, 9.5, 9.7, 9.9, 10.1, NULL, NULL),
(72, 81, -0.3521, 9.641, 0.07022, 9.1, 9.2, 9.4, 9.6, 9.8, 10, 10.2, NULL, NULL),
(73, 81.5, -0.3521, 9.741, 0.06992, 9.2, 9.3, 9.5, 9.7, 9.9, 10.1, 10.3, NULL, NULL),
(74, 82, -0.3521, 9.841, 0.06962, 9.3, 9.4, 9.6, 9.8, 10, 10.2, 10.4, NULL, NULL),
(75, 82.5, -0.3521, 9.941, 0.06932, 9.4, 9.5, 9.7, 9.9, 10.1, 10.3, 10.5, NULL, NULL),
(76, 83, -0.3521, 10.041, 0.06902, 9.5, 9.6, 9.8, 10, 10.2, 10.4, 10.6, NULL, NULL),
(77, 83.5, -0.3521, 10.141, 0.06872, 9.6, 9.7, 9.9, 10.1, 10.3, 10.5, 10.7, NULL, NULL),
(78, 84, -0.3521, 10.241, 0.06842, 9.7, 9.8, 10, 10.2, 10.4, 10.6, 10.8, NULL, NULL),
(79, 84.5, -0.3521, 10.341, 0.06812, 9.8, 9.9, 10.1, 10.3, 10.5, 10.7, 10.9, NULL, NULL),
(80, 85, -0.3521, 10.441, 0.06782, 9.9, 10, 10.2, 10.4, 10.6, 10.8, 11, NULL, NULL),
(81, 85.5, -0.3521, 10.541, 0.06752, 10, 10.1, 10.3, 10.5, 10.7, 10.9, 11.1, NULL, NULL),
(82, 86, -0.3521, 10.641, 0.06722, 10.1, 10.2, 10.4, 10.6, 10.8, 11, 11.2, NULL, NULL),
(83, 86.5, -0.3521, 10.741, 0.06692, 10.2, 10.3, 10.5, 10.7, 10.9, 11.1, 11.3, NULL, NULL),
(84, 87, -0.3521, 10.841, 0.06662, 10.3, 10.4, 10.6, 10.8, 11, 11.2, 11.4, NULL, NULL),
(85, 87.5, -0.3521, 10.941, 0.06632, 10.4, 10.5, 10.7, 10.9, 11.1, 11.3, 11.5, NULL, NULL),
(86, 88, -0.3521, 11.041, 0.06602, 10.5, 10.6, 10.8, 11, 11.2, 11.4, 11.6, NULL, NULL),
(87, 88.5, -0.3521, 11.141, 0.06572, 10.6, 10.7, 10.9, 11.1, 11.3, 11.5, 11.7, NULL, NULL),
(88, 89, -0.3521, 11.241, 0.06542, 10.7, 10.8, 11, 11.2, 11.4, 11.6, 11.8, NULL, NULL),
(89, 89.5, -0.3521, 11.341, 0.06512, 10.8, 10.9, 11.1, 11.3, 11.5, 11.7, 11.9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bbpbp`
--

CREATE TABLE `bbpbp` (
  `id` bigint UNSIGNED NOT NULL,
  `length` double NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bbpbp`
--

INSERT INTO `bbpbp` (`id`, `length`, `l`, `m`, `s`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 45, -0.3833, 2.4607, 0.09029, 1.9, 2.1, 2.3, 2.5, 2.7, 3, 3.3, NULL, NULL),
(2, 45.5, -0.3833, 2.5457, 0.09033, 2, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4, NULL, NULL),
(3, 46, -0.3833, 2.6306, 0.09037, 2, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5, NULL, NULL),
(4, 46.5, -0.3833, 2.7155, 0.0904, 2.1, 2.3, 2.5, 2.7, 3, 3.3, 3.6, NULL, NULL),
(5, 47, -0.3833, 2.8007, 0.09044, 2.2, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7, NULL, NULL),
(6, 47.5, -0.3833, 2.8867, 0.09048, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, NULL, NULL),
(7, 48, -0.3833, 2.9741, 0.09052, 2.3, 2.5, 2.7, 3, 3.3, 3.6, 4, NULL, NULL),
(8, 48.5, -0.3833, 3.0636, 0.09056, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 4.1, NULL, NULL),
(9, 49, -0.3833, 3.156, 0.0906, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.2, NULL, NULL),
(10, 49.5, -0.3833, 3.252, 0.09064, 2.5, 2.7, 3, 3.3, 3.6, 3.9, 4.3, NULL, NULL),
(11, 50, -0.3833, 3.3518, 0.09068, 2.6, 2.8, 3.1, 3.4, 3.7, 4, 4.5, NULL, NULL),
(12, 50.5, -0.3833, 3.4557, 0.09072, 2.7, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6, NULL, NULL),
(13, 51, -0.3833, 3.5636, 0.09076, 2.8, 3, 3.3, 3.6, 3.9, 4.3, 4.8, NULL, NULL),
(14, 51.5, -0.3833, 3.6754, 0.0908, 2.8, 3.1, 3.4, 3.7, 4, 4.4, 4.9, NULL, NULL),
(15, 52, -0.3833, 3.7911, 0.09085, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 5.1, NULL, NULL),
(16, 52.5, -0.3833, 3.9105, 0.09089, 3, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2, NULL, NULL),
(17, 53, -0.3833, 4.0332, 0.09093, 3.1, 3.4, 3.7, 4, 4.4, 4.9, 5.4, NULL, NULL),
(18, 53.5, -0.3833, 4.1591, 0.09098, 3.2, 3.5, 3.8, 4.2, 4.6, 5, 5.5, NULL, NULL),
(19, 54, -0.3833, 4.2875, 0.09102, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 5.7, NULL, NULL),
(20, 54.5, -0.3833, 4.4179, 0.09106, 3.4, 3.7, 4, 4.4, 4.8, 5.3, 5.9, NULL, NULL),
(21, 55, -0.3833, 4.5498, 0.0911, 3.5, 3.8, 4.2, 4.5, 5, 5.5, 6.1, NULL, NULL),
(22, 55.5, -0.3833, 4.6827, 0.09114, 3.6, 3.9, 4.3, 4.7, 5.1, 5.7, 6.3, NULL, NULL),
(23, 56, -0.3833, 4.8162, 0.09118, 3.7, 4, 4.4, 4.8, 5.3, 5.8, 6.4, NULL, NULL),
(24, 56.5, -0.3833, 4.95, 0.09121, 3.8, 4.1, 4.5, 5, 5.4, 6, 6.6, NULL, NULL),
(25, 56.5, -0.3833, 4.95, 0.09121, 3.8, 4.1, 4.5, 5, 5.4, 6, 6.6, NULL, NULL),
(26, 57, -0.3833, 5.0837, 0.09125, 3.9, 4.3, 4.6, 5.1, 5.6, 6.1, 6.8, NULL, NULL),
(27, 57.5, -0.3833, 5.2173, 0.09128, 4, 4.4, 4.8, 5.2, 5.7, 6.3, 7, NULL, NULL),
(28, 58, -0.3833, 5.3507, 0.0913, 4.1, 4.5, 4.9, 5.4, 5.9, 6.5, 7.1, NULL, NULL),
(29, 58.5, -0.3833, 5.4834, 0.09132, 4.2, 4.6, 5, 5.5, 6, 6.6, 7.3, NULL, NULL),
(30, 59, -0.3833, 5.6151, 0.09134, 4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5, NULL, NULL),
(31, 59.5, -0.3833, 5.7454, 0.09135, 4.4, 4.8, 5.3, 5.7, 6.3, 6.9, 7.7, NULL, NULL),
(32, 60, -0.3833, 5.8742, 0.09136, 4.5, 4.9, 5.4, 5.9, 6.4, 7.1, 7.8, NULL, NULL),
(33, 60.5, -0.3833, 6.0014, 0.09137, 4.6, 5, 5.5, 6, 6.6, 7.3, 8, NULL, NULL),
(34, 61, -0.3833, 6.127, 0.09137, 4.7, 5.1, 5.6, 6.1, 6.7, 7.4, 8.2, NULL, NULL),
(35, 61.5, -0.3833, 6.2511, 0.09136, 4.8, 5.2, 5.7, 6.3, 6.9, 7.6, 8.4, NULL, NULL),
(36, 62, -0.3833, 6.3738, 0.09135, 4.9, 5.3, 5.8, 6.4, 7, 7.7, 8.5, NULL, NULL),
(37, 62.5, -0.3833, 6.4948, 0.09133, 5, 5.4, 5.9, 6.5, 7.1, 7.8, 8.7, NULL, NULL),
(38, 63, -0.3833, 6.6144, 0.09131, 5.1, 5.5, 6, 6.6, 7.3, 8, 8.8, NULL, NULL),
(39, 63.5, -0.3833, 6.7328, 0.09129, 5.2, 5.6, 6.2, 6.7, 7.4, 8.1, 9, NULL, NULL),
(40, 64, -0.3833, 6.8501, 0.09126, 5.3, 5.7, 6.3, 6.9, 7.5, 8.3, 9.1, NULL, NULL),
(41, 64.5, -0.3833, 6.9662, 0.09123, 5.4, 5.8, 6.4, 7, 7.6, 8.4, 9.3, NULL, NULL),
(42, 65, -0.3833, 7.0812, 0.09119, 5.5, 5.9, 6.5, 7.1, 7.8, 8.6, 9.5, NULL, NULL),
(43, 65.5, -0.3833, 7.195, 0.09115, 5.5, 6, 6.6, 7.2, 7.9, 8.7, 9.6, NULL, NULL),
(44, 66, -0.3833, 7.3076, 0.0911, 5.6, 6.1, 6.7, 7.3, 8, 8.8, 9.8, NULL, NULL),
(45, 66.5, -0.3833, 7.4189, 0.09106, 5.7, 6.2, 6.8, 7.4, 8.1, 9, 9.9, NULL, NULL),
(46, 67, -0.3833, 7.5288, 0.09101, 5.8, 6.3, 6.9, 7.5, 8.3, 9.1, 10, NULL, NULL),
(47, 67.5, -0.3833, 7.6375, 0.09096, 5.9, 6.4, 7, 7.6, 8.4, 9.2, 10.2, NULL, NULL),
(48, 68, -0.3833, 7.7448, 0.0909, 6, 6.5, 7.1, 7.7, 8.5, 9.4, 10.3, NULL, NULL),
(49, 68.5, -0.3833, 7.8509, 0.09085, 6.1, 6.6, 7.2, 7.9, 8.6, 9.5, 10.5, NULL, NULL),
(50, 69, -0.3833, 7.9559, 0.09079, 6.1, 6.7, 7.3, 8, 8.7, 9.6, 10.6, NULL, NULL),
(51, 69.5, -0.3833, 8.0599, 0.09074, 6.2, 6.8, 7.4, 8.1, 8.8, 9.7, 10.7, NULL, NULL),
(52, 70, -0.3833, 8.163, 0.09068, 6.3, 6.9, 7.5, 8.2, 9, 9.9, 10.9, NULL, NULL),
(53, 70.5, -0.3833, 8.2651, 0.09062, 6.4, 6.9, 7.6, 8.3, 9.1, 10, 11, NULL, NULL),
(54, 71, -0.3833, 8.3666, 0.09056, 6.5, 7, 7.7, 8.4, 9.2, 10.1, 11.1, NULL, NULL),
(55, 71.5, -0.3833, 8.4676, 0.0905, 6.5, 7.1, 7.7, 8.5, 9.3, 10.2, 11.3, NULL, NULL),
(56, 72, -0.3833, 8.5679, 0.09043, 6.6, 7.2, 7.8, 8.6, 9.4, 10.3, 11.4, NULL, NULL),
(57, 72.5, -0.3833, 8.6674, 0.09037, 6.7, 7.3, 7.9, 8.7, 9.5, 10.5, 11.5, NULL, NULL),
(58, 73, -0.3833, 8.7661, 0.09031, 6.8, 7.4, 8, 8.8, 9.6, 10.6, 11.7, NULL, NULL),
(59, 73.5, -0.3833, 8.8638, 0.09025, 6.9, 7.4, 8.1, 8.9, 9.7, 10.7, 11.8, NULL, NULL),
(60, 74, -0.3833, 8.9601, 0.09018, 6.9, 7.5, 8.2, 9, 9.8, 10.8, 11.9, NULL, NULL),
(61, 74.5, -0.3833, 9.0552, 0.09012, 7, 7.6, 8.3, 9.1, 9.9, 10.9, 12, NULL, NULL),
(62, 75, -0.3833, 9.149, 0.09005, 7.1, 7.7, 8.4, 9.1, 10, 11, 12.2, NULL, NULL),
(63, 75.5, -0.3833, 9.2418, 0.08999, 7.1, 7.8, 8.5, 9.2, 10.1, 11.1, 12.3, NULL, NULL),
(64, 76, -0.3833, 9.3337, 0.08992, 7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.4, NULL, NULL),
(65, 76.5, -0.3833, 9.4252, 0.08985, 7.3, 7.9, 8.6, 9.4, 10.3, 11.4, 12.5, NULL, NULL),
(66, 77, -0.3833, 9.5166, 0.08979, 7.4, 8, 8.7, 9.5, 10.4, 11.5, 12.6, NULL, NULL),
(67, 77.5, -0.3833, 9.6086, 0.08972, 7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8, NULL, NULL),
(68, 77.5, -0.3833, 9.6086, 0.08972, 7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8, NULL, NULL),
(69, 78, -0.3833, 9.7015, 0.08965, 7.5, 8.2, 8.9, 9.7, 10.6, 11.7, 12.9, NULL, NULL),
(70, 78.5, -0.3833, 9.7957, 0.08959, 7.6, 8.2, 9, 9.8, 10.7, 11.8, 13, NULL, NULL),
(71, 79, -0.3833, 9.8915, 0.08952, 7.7, 8.3, 9.1, 9.9, 10.8, 11.9, 13.1, NULL, NULL),
(72, 79.5, -0.3833, 9.9892, 0.08946, 7.7, 8.4, 9.1, 10, 10.9, 12, 13.3, NULL, NULL),
(73, 80, -0.3833, 10.0891, 0.0894, 7.8, 8.5, 9.2, 10.1, 11, 12.1, 13.4, NULL, NULL),
(74, 80.5, -0.3833, 10.1916, 0.08934, 7.9, 8.6, 9.3, 10.2, 11.2, 12.3, 13.5, NULL, NULL),
(75, 81, -0.3833, 10.2965, 0.08928, 8, 8.7, 9.4, 10.3, 11.3, 12.4, 13.7, NULL, NULL),
(76, 81.5, -0.3833, 10.4041, 0.08923, 8.1, 8.8, 9.5, 10.4, 11.4, 12.5, 13.8, NULL, NULL),
(77, 82, -0.3833, 10.514, 0.08918, 8.1, 8.8, 9.6, 10.5, 11.5, 12.6, 13.9, NULL, NULL),
(78, 82.5, -0.3833, 10.6263, 0.08914, 8.2, 8.9, 9.7, 10.6, 11.6, 12.8, 14.1, NULL, NULL),
(79, 83, -0.3833, 10.741, 0.0891, 8.3, 9, 9.8, 10.7, 11.8, 12.9, 14.2, NULL, NULL),
(80, 83.5, -0.3833, 10.8578, 0.08906, 8.4, 9.1, 9.9, 10.9, 11.9, 13.1, 14.4, NULL, NULL),
(81, 84, -0.3833, 10.9767, 0.08903, 8.5, 9.2, 10.1, 11, 12, 13.2, 14.5, NULL, NULL),
(82, 84.5, -0.3833, 11.0974, 0.089, 8.6, 9.3, 10.2, 11.1, 12.1, 13.3, 14.7, NULL, NULL),
(83, 85, -0.3833, 11.2198, 0.08898, 8.7, 9.4, 10.3, 11.2, 12.3, 13.5, 14.9, NULL, NULL),
(84, 85.5, -0.3833, 11.3435, 0.08897, 8.8, 9.5, 10.4, 11.3, 12.4, 13.6, 15, NULL, NULL),
(85, 86, -0.3833, 11.4684, 0.08895, 8.9, 9.7, 10.5, 11.5, 12.6, 13.8, 15.2, NULL, NULL),
(86, 86.5, -0.3833, 11.594, 0.08895, 9, 9.8, 10.6, 11.6, 12.7, 13.9, 15.4, NULL, NULL),
(87, 87, -0.3833, 11.7201, 0.08895, 9.1, 9.9, 10.7, 11.7, 12.8, 14.1, 15.5, NULL, NULL),
(88, 87.5, -0.3833, 11.8461, 0.08895, 9.2, 10, 10.9, 11.8, 13, 14.2, 15.7, NULL, NULL),
(89, 89.5, -0.3833, 12.3477, 0.08903, 9.6, 10.4, 11.3, 12.3, 13.5, 14.8, 16.4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bbul`
--

CREATE TABLE `bbul` (
  `id` bigint UNSIGNED NOT NULL,
  `month` int NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bbul`
--

INSERT INTO `bbul` (`id`, `month`, `l`, `m`, `s`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 0, 0.3487, 3.3464, 0.14602, 2.1, 2.5, 2.9, 3.3, 3.9, 4.4, 5, NULL, NULL),
(2, 1, 0.2297, 4.4709, 0.13395, 2.9, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6, NULL, NULL),
(3, 2, 0.197, 5.5675, 0.12385, 3.8, 4.3, 4.9, 5.6, 6.3, 7.1, 8, NULL, NULL),
(4, 3, 0.1738, 6.3762, 0.11727, 4.4, 5, 5.7, 6.4, 7.2, 8, 9, NULL, NULL),
(5, 4, 0.1553, 7.0023, 0.11316, 4.9, 5.6, 6.2, 7, 7.8, 8.7, 9.7, NULL, NULL),
(6, 5, 0.1395, 7.5105, 0.1108, 5.3, 6, 6.7, 7.5, 8.4, 9.3, 10.4, NULL, NULL),
(7, 6, 0.1257, 7.934, 0.10958, 5.7, 6.4, 7.1, 7.9, 8.8, 9.8, 10.9, NULL, NULL),
(8, 7, 0.1134, 8.297, 0.10902, 5.9, 6.7, 7.4, 8.3, 9.2, 10.3, 11.4, NULL, NULL),
(9, 8, 0.1021, 8.6151, 0.10882, 6.2, 6.9, 7.7, 8.6, 9.6, 10.7, 11.9, NULL, NULL),
(10, 9, 0.0917, 8.9014, 0.10881, 6.4, 7.1, 8, 8.9, 9.9, 11, 12.3, NULL, NULL),
(11, 10, 0.082, 9.1649, 0.10891, 6.6, 7.4, 8.2, 9.2, 10.2, 11.4, 12.7, NULL, NULL),
(12, 11, 0.073, 9.4122, 0.10906, 6.8, 7.6, 8.4, 9.4, 10.5, 11.7, 13, NULL, NULL),
(13, 12, 0.0644, 9.6479, 0.10925, 6.9, 7.7, 8.6, 9.6, 10.8, 12, 13.3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bbup`
--

CREATE TABLE `bbup` (
  `id` bigint UNSIGNED NOT NULL,
  `month` int NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bbup`
--

INSERT INTO `bbup` (`id`, `month`, `l`, `m`, `s`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 0, 0.3809, 3.2322, 0.14171, 2, 2.4, 2.8, 3.2, 3.7, 4.2, 4.8, NULL, NULL),
(2, 1, 0.1714, 4.1873, 0.13724, 2.7, 3.2, 3.6, 4.2, 4.8, 5.5, 6.2, NULL, NULL),
(3, 2, 0.0962, 5.1282, 0.13, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6, 7.5, NULL, NULL),
(4, 3, 0.0402, 5.8458, 0.12619, 4, 4.5, 5.2, 5.8, 6.6, 7.5, 8.5, NULL, NULL),
(5, 4, -0.005, 6.4237, 0.12402, 4.4, 5, 5.7, 6.4, 7.3, 8.2, 9.3, NULL, NULL),
(6, 5, -0.043, 6.8985, 0.12274, 4.8, 5.4, 6.1, 6.9, 7.8, 8.8, 10, NULL, NULL),
(7, 6, -0.0756, 7.297, 0.12204, 5.1, 5.7, 6.5, 7.3, 8.2, 9.3, 10.6, NULL, NULL),
(8, 7, -0.1039, 7.6422, 0.12178, 5.3, 6, 6.8, 7.6, 8.6, 9.8, 11.1, NULL, NULL),
(9, 8, -0.1288, 7.9487, 0.12181, 5.6, 6.3, 7, 7.9, 9, 10.2, 11.6, NULL, NULL),
(10, 9, -0.1507, 8.2254, 0.12199, 5.8, 6.5, 7.3, 8.2, 9.3, 10.5, 12, NULL, NULL),
(11, 10, -0.17, 8.48, 0.12223, 5.9, 6.7, 7.5, 8.5, 9.6, 10.9, 12.4, NULL, NULL),
(12, 11, -0.1872, 8.7192, 0.12247, 6.1, 6.9, 7.7, 8.7, 9.9, 11.2, 12.8, NULL, NULL),
(13, 12, -0.2024, 8.9481, 0.12268, 6.3, 7, 7.9, 8.9, 10.1, 11.5, 13.1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '9f6442ee-18c9-4f83-9a84-cc84531003ed', 'database', 'default', '{\"uuid\":\"9f6442ee-18c9-4f83-9a84-cc84531003ed\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0.05;s:6:\\\"tinggi\\\";d:19;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:01:45 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #904)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05'),
(2, '24877f0d-7924-4f11-aa5a-b68797e1299c', 'database', 'default', '{\"uuid\":\"24877f0d-7924-4f11-aa5a-b68797e1299c\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0.05;s:6:\\\"tinggi\\\";d:19;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:01:59 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #968)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05'),
(3, '71e178c2-122f-4eea-8d9b-cf7cd7bbdc35', 'database', 'default', '{\"uuid\":\"71e178c2-122f-4eea-8d9b-cf7cd7bbdc35\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0.05;s:6:\\\"tinggi\\\";d:19;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:02:09 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #971)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05'),
(4, 'cf58c5ac-d8a1-497b-823e-fb39aaf6cff9', 'database', 'default', '{\"uuid\":\"cf58c5ac-d8a1-497b-823e-fb39aaf6cff9\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0.05;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:02:25 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #974)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, 'fb81d92c-fa91-4a2d-b895-cde8edd1e6a7', 'database', 'default', '{\"uuid\":\"fb81d92c-fa91-4a2d-b895-cde8edd1e6a7\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:02:46 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #977)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05'),
(6, '46d09d39-a37a-4faa-a602-c13ea02a0e7d', 'database', 'default', '{\"uuid\":\"46d09d39-a37a-4faa-a602-c13ea02a0e7d\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:02:55 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #980)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:05'),
(7, '6be37b40-39b3-444a-b21b-160036c8ebe4', 'database', 'default', '{\"uuid\":\"6be37b40-39b3-444a-b21b-160036c8ebe4\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:03:16 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #983)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:18'),
(8, 'd672d9f9-31bf-488a-ae72-995bdc7d2f42', 'database', 'default', '{\"uuid\":\"d672d9f9-31bf-488a-ae72-995bdc7d2f42\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:03:27 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #986)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:30');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(9, 'ee38e19b-dbc3-4923-8ba6-654478bfbca5', 'database', 'default', '{\"uuid\":\"ee38e19b-dbc3-4923-8ba6-654478bfbca5\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:03:40 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #989)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:42'),
(10, 'c4084445-bf61-4166-9849-bc466bbfd118', 'database', 'default', '{\"uuid\":\"c4084445-bf61-4166-9849-bc466bbfd118\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:03:51 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #992)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:03:54'),
(11, '8d3e456d-a761-4841-8a63-46b5c5b023c5', 'database', 'default', '{\"uuid\":\"8d3e456d-a761-4841-8a63-46b5c5b023c5\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:04:11 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #995)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:04:12'),
(12, '345110ec-91b8-4bd4-a988-997b76c0057b', 'database', 'default', '{\"uuid\":\"345110ec-91b8-4bd4-a988-997b76c0057b\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.8;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:04:21 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #998)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:04:24');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(13, 'aae7c772-e57e-4fb3-8e18-6e3bca3f9277', 'database', 'default', '{\"uuid\":\"aae7c772-e57e-4fb3-8e18-6e3bca3f9277\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:04:31 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #1001)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:04:33'),
(14, 'f69c68d4-281d-490d-b638-ada5e69ccf1f', 'database', 'default', '{\"uuid\":\"f69c68d4-281d-490d-b638-ada5e69ccf1f\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:04:41 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #1004)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:04:42'),
(15, '9602e1da-e4a2-4bbf-926e-3d0dd58f4d3a', 'database', 'default', '{\"uuid\":\"9602e1da-e4a2-4bbf-926e-3d0dd58f4d3a\",\"displayName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDataPengukuranEmail\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendDataPengukuranEmail\\\":2:{s:7:\\\"\\u0000*\\u0000data\\\";a:7:{s:4:\\\"nama\\\";s:24:\\\"Furqon Muhammad Zulkifli\\\";s:5:\\\"berat\\\";d:0;s:6:\\\"tinggi\\\";d:19.4;s:10:\\\"status_bbu\\\";s:25:\\\"Berat badan sangat kurang\\\";s:10:\\\"status_pbu\\\";s:13:\\\"Sangat pendek\\\";s:11:\\\"status_bbpb\\\";s:1:\\\"-\\\";s:11:\\\"waktu_kirim\\\";s:19:\\\"13:05:00 16-06-2025\\\";}s:8:\\\"\\u0000*\\u0000email\\\";s:33:\\\"alatukurberattinggibayi@gmail.com\\\";}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"smtp.gmail.com:587\": stream_socket_client(): php_network_getaddresses: getaddrinfo for smtp.gmail.com failed: No such host is known in C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->{closure:Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream::initialize():153}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 157)\n#1 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'smtp.gmail.com:...\', 0, \'\', 60.0, 4, Resource id #1007)\n#2 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(279): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(211): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.pengukur...\', Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():199}()\n#10 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\DataPengukuranMail))\n#13 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\DataPengukuranMail))\n#14 C:\\laragon\\www\\laravel_salinan\\app\\Jobs\\SendDataPengukuranEmail.php(34): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\DataPengukuranMail))\n#15 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendDataPengukuranEmail->handle()\n#16 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#17 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(125): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():122}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#22 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#23 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendDataPengukuranEmail), false)\n#25 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#26 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(App\\Jobs\\SendDataPengukuranEmail))\n#27 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendDataPengukuranEmail))\n#29 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#37 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\laravel_salinan\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\laravel_salinan\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\laravel_salinan\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#49 {main}', '2025-06-16 06:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_pengukuran`
--

CREATE TABLE `klasifikasi_pengukuran` (
  `id` bigint UNSIGNED NOT NULL,
  `pengukuran_id` bigint UNSIGNED NOT NULL,
  `status_bbu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pbu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_bbpb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `klasifikasi_pengukuran`
--

INSERT INTO `klasifikasi_pengukuran` (`id`, `pengukuran_id`, `status_bbu`, `status_pbu`, `status_bbpb`, `created_at`, `updated_at`) VALUES
(1, 1, 'Berat badan sangat kurang', 'Tinggi', 'Gizi Buruk', '2025-06-10 04:27:49', '2025-06-10 04:27:49'),
(2, 2, 'Berat badan sangat kurang', 'Tinggi', 'Gizi Buruk', '2025-06-10 04:28:41', '2025-06-10 04:28:41'),
(3, 3, 'Berat badan sangat kurang', 'Tinggi', 'Gizi Buruk', '2025-06-10 04:32:01', '2025-06-10 04:32:01'),
(4, 4, 'Berat badan kurang', 'Tinggi', 'Gizi Buruk', '2025-06-10 04:36:00', '2025-06-10 04:36:00'),
(5, 5, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 04:38:15', '2025-06-10 04:38:15'),
(6, 6, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:16:37', '2025-06-10 05:16:37'),
(7, 7, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:06', '2025-06-10 05:17:06'),
(8, 8, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:11', '2025-06-10 05:17:11'),
(9, 9, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:13', '2025-06-10 05:17:13'),
(10, 10, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:15', '2025-06-10 05:17:15'),
(11, 11, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:17', '2025-06-10 05:17:17'),
(12, 12, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:17:34', '2025-06-10 05:17:34'),
(13, 13, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:22:26', '2025-06-10 05:22:26'),
(14, 14, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:22:29', '2025-06-10 05:22:29'),
(15, 15, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:22:32', '2025-06-10 05:22:32'),
(16, 16, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:22:34', '2025-06-10 05:22:34'),
(17, 17, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:22:36', '2025-06-10 05:22:36'),
(18, 18, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:23:43', '2025-06-10 05:23:43'),
(19, 19, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:23:46', '2025-06-10 05:23:46'),
(20, 20, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:24:22', '2025-06-10 05:24:22'),
(21, 21, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:24:24', '2025-06-10 05:24:24'),
(22, 22, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:24:25', '2025-06-10 05:24:25'),
(23, 23, 'Berat badan normal', 'Tinggi', 'Gizi Buruk', '2025-06-10 05:24:27', '2025-06-10 05:24:27'),
(24, 24, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:10', '2025-06-10 12:12:10'),
(25, 25, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:14', '2025-06-10 12:12:14'),
(26, 26, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:16', '2025-06-10 12:12:16'),
(27, 27, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:18', '2025-06-10 12:12:18'),
(28, 28, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:20', '2025-06-10 12:12:20'),
(29, 29, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:22', '2025-06-10 12:12:22'),
(30, 30, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:24', '2025-06-10 12:12:24'),
(31, 31, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:26', '2025-06-10 12:12:26'),
(32, 32, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:28', '2025-06-10 12:12:28'),
(33, 33, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:30', '2025-06-10 12:12:30'),
(34, 34, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:32', '2025-06-10 12:12:32'),
(35, 35, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:34', '2025-06-10 12:12:34'),
(36, 36, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:12:37', '2025-06-10 12:12:37'),
(37, 37, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:15', '2025-06-10 12:15:15'),
(38, 38, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:17', '2025-06-10 12:15:17'),
(39, 39, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:20', '2025-06-10 12:15:20'),
(40, 40, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:26', '2025-06-10 12:15:26'),
(41, 41, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:30', '2025-06-10 12:15:30'),
(42, 42, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:31', '2025-06-10 12:15:31'),
(43, 43, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:33', '2025-06-10 12:15:33'),
(44, 44, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:35', '2025-06-10 12:15:35'),
(45, 45, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:37', '2025-06-10 12:15:37'),
(46, 46, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:39', '2025-06-10 12:15:39'),
(47, 47, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:40', '2025-06-10 12:15:40'),
(48, 48, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:42', '2025-06-10 12:15:42'),
(49, 49, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:44', '2025-06-10 12:15:44'),
(50, 50, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:45', '2025-06-10 12:15:45'),
(51, 51, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:47', '2025-06-10 12:15:47'),
(52, 52, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:49', '2025-06-10 12:15:49'),
(53, 53, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:50', '2025-06-10 12:15:50'),
(54, 54, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:52', '2025-06-10 12:15:52'),
(55, 55, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:54', '2025-06-10 12:15:54'),
(56, 56, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:56', '2025-06-10 12:15:56'),
(57, 57, 'Berat badan sangat kurang', 'Normal', 'Gizi Buruk', '2025-06-10 12:15:58', '2025-06-10 12:15:58'),
(58, 58, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:18:36', '2025-06-10 12:18:36'),
(59, 59, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:18:41', '2025-06-10 12:18:41'),
(60, 60, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:36', '2025-06-10 12:34:36'),
(61, 61, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:38', '2025-06-10 12:34:38'),
(62, 62, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:40', '2025-06-10 12:34:40'),
(63, 63, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:42', '2025-06-10 12:34:42'),
(64, 64, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:44', '2025-06-10 12:34:44'),
(65, 65, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:46', '2025-06-10 12:34:46'),
(66, 66, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:48', '2025-06-10 12:34:48'),
(67, 67, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:50', '2025-06-10 12:34:50'),
(68, 68, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:52', '2025-06-10 12:34:52'),
(69, 69, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-10 12:34:54', '2025-06-10 12:34:54'),
(70, 70, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:41', '2025-06-11 05:57:41'),
(71, 71, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:50', '2025-06-11 05:57:50'),
(72, 72, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:52', '2025-06-11 05:57:52'),
(73, 73, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:54', '2025-06-11 05:57:54'),
(74, 74, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:56', '2025-06-11 05:57:56'),
(75, 75, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:57:58', '2025-06-11 05:57:58'),
(76, 76, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:58:00', '2025-06-11 05:58:00'),
(77, 77, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:58:02', '2025-06-11 05:58:02'),
(78, 78, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:47', '2025-06-11 05:59:47'),
(79, 79, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:49', '2025-06-11 05:59:49'),
(80, 80, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:51', '2025-06-11 05:59:51'),
(81, 81, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:53', '2025-06-11 05:59:53'),
(82, 82, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:56', '2025-06-11 05:59:56'),
(83, 83, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 05:59:58', '2025-06-11 05:59:58'),
(84, 84, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:03', '2025-06-11 06:00:03'),
(85, 85, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:05', '2025-06-11 06:00:05'),
(86, 86, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:09', '2025-06-11 06:00:09'),
(87, 87, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:12', '2025-06-11 06:00:12'),
(88, 88, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:14', '2025-06-11 06:00:14'),
(89, 89, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:17', '2025-06-11 06:00:17'),
(90, 90, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:20', '2025-06-11 06:00:20'),
(91, 91, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:23', '2025-06-11 06:00:23'),
(92, 92, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:25', '2025-06-11 06:00:25'),
(93, 93, 'Berat badan kurang', 'Sangat pendek', 'Gizi lebih', '2025-06-11 06:00:27', '2025-06-11 06:00:27'),
(94, 94, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:01:48', '2025-06-11 06:01:48'),
(95, 95, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:30:41', '2025-06-11 06:30:41'),
(96, 96, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:30:51', '2025-06-11 06:30:51'),
(97, 97, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:31:04', '2025-06-11 06:31:04'),
(98, 98, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:31:15', '2025-06-11 06:31:15'),
(99, 99, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:31:23', '2025-06-11 06:31:23'),
(100, 100, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:09', '2025-06-11 06:32:09'),
(101, 101, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:17', '2025-06-11 06:32:17'),
(102, 102, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:25', '2025-06-11 06:32:25'),
(103, 103, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:33', '2025-06-11 06:32:33'),
(104, 104, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:41', '2025-06-11 06:32:41'),
(105, 105, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:50', '2025-06-11 06:32:50'),
(106, 106, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:32:58', '2025-06-11 06:32:58'),
(107, 107, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:33:07', '2025-06-11 06:33:07'),
(108, 108, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:34:37', '2025-06-11 06:34:37'),
(109, 109, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:34:49', '2025-06-11 06:34:49'),
(110, 110, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:34:56', '2025-06-11 06:34:56'),
(111, 111, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:03', '2025-06-11 06:35:03'),
(112, 112, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:10', '2025-06-11 06:35:10'),
(113, 113, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:22', '2025-06-11 06:35:22'),
(114, 114, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:29', '2025-06-11 06:35:29'),
(115, 115, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:36', '2025-06-11 06:35:36'),
(116, 116, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:43', '2025-06-11 06:35:43'),
(117, 117, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:50', '2025-06-11 06:35:50'),
(118, 118, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:35:56', '2025-06-11 06:35:56'),
(119, 119, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:36:04', '2025-06-11 06:36:04'),
(120, 120, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:36:11', '2025-06-11 06:36:11'),
(121, 121, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:36:23', '2025-06-11 06:36:23'),
(122, 122, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:36:35', '2025-06-11 06:36:35'),
(123, 123, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:37:01', '2025-06-11 06:37:01'),
(124, 124, 'Berat badan sangat kurang', 'Sangat pendek', 'Gizi Buruk', '2025-06-11 06:37:10', '2025-06-11 06:37:10'),
(125, 125, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:01:45', '2025-06-16 06:01:45'),
(126, 126, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:01:59', '2025-06-16 06:01:59'),
(127, 127, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:02:09', '2025-06-16 06:02:09'),
(128, 128, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:02:25', '2025-06-16 06:02:25'),
(129, 129, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:02:46', '2025-06-16 06:02:46'),
(130, 130, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:02:55', '2025-06-16 06:02:55'),
(131, 131, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:03:16', '2025-06-16 06:03:16'),
(132, 132, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:03:27', '2025-06-16 06:03:27'),
(133, 133, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:03:40', '2025-06-16 06:03:40'),
(134, 134, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:03:51', '2025-06-16 06:03:51'),
(135, 135, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:04:11', '2025-06-16 06:04:11'),
(136, 136, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:04:21', '2025-06-16 06:04:21'),
(137, 137, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:04:31', '2025-06-16 06:04:31'),
(138, 138, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:04:41', '2025-06-16 06:04:41'),
(139, 139, 'Berat badan sangat kurang', 'Sangat pendek', '-', '2025-06-16 06:05:00', '2025-06-16 06:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_30_030801_create_posts_table', 1),
(5, '2025_05_03_003353_data_anak', 1),
(6, '2025_05_06_012459_create_categories_table', 1),
(7, '2025_05_06_030822_pengukuran', 1),
(8, '2025_05_07_144730_create_pbul_table', 1),
(9, '2025_05_07_144754_create_pbup_table', 1),
(10, '2025_05_07_144813_create_bbul_table', 1),
(11, '2025_05_07_144825_create_bbup_table', 1),
(12, '2025_05_07_144840_create_bbpbl_table', 1),
(13, '2025_05_07_144849_create_bbpbp_table', 1),
(14, '2025_05_20_024608_create_klasifikasi_pengukuran_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pbul`
--

CREATE TABLE `pbul` (
  `id` bigint UNSIGNED NOT NULL,
  `month` int NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `sd` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pbul`
--

INSERT INTO `pbul` (`id`, `month`, `l`, `m`, `s`, `sd`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 49.8842, 0.03795, 1.8931, 44.2, 46.1, 48, 49.9, 51.8, 53.7, 55.6, NULL, NULL),
(2, 1, 1, 54.7244, 0.03557, 1.9465, 48.9, 50.8, 52.8, 54.7, 56.7, 58.6, 60.6, NULL, NULL),
(3, 2, 1, 58.4249, 0.03424, 2.0005, 52.4, 54.4, 56.4, 58.4, 60.4, 62.4, 64.4, NULL, NULL),
(4, 3, 1, 61.4292, 0.03328, 2.0444, 55.3, 57.3, 59.4, 61.4, 63.5, 65.5, 67.6, NULL, NULL),
(5, 4, 1, 63.886, 0.03257, 2.0808, 57.6, 59.7, 61.8, 63.9, 66, 68, 70.1, NULL, NULL),
(6, 5, 1, 65.9026, 0.03204, 2.1115, 59.6, 61.7, 63.8, 65.9, 68, 70.1, 72.2, NULL, NULL),
(7, 6, 1, 67.6236, 0.03165, 2.1403, 61.2, 63.3, 65.5, 67.6, 69.8, 71.9, 74, NULL, NULL),
(8, 7, 1, 69.1645, 0.03139, 2.1711, 62.7, 64.8, 67, 69.2, 71.3, 73.5, 75.7, NULL, NULL),
(9, 8, 1, 70.5994, 0.03124, 2.2055, 64, 66.2, 68.4, 70.6, 72.8, 75, 77.2, NULL, NULL),
(10, 9, 1, 71.9687, 0.03117, 2.2433, 65.2, 67.5, 69.7, 72, 74.2, 76.5, 78.7, NULL, NULL),
(11, 10, 1, 73.2812, 0.03118, 2.2849, 66.4, 68.7, 71, 73.3, 75.6, 77.9, 80.1, NULL, NULL),
(12, 11, 1, 74.5388, 0.03125, 2.3293, 67.6, 69.9, 72.2, 74.5, 76.9, 79.2, 81.5, NULL, NULL),
(13, 12, 1, 75.7488, 0.03137, 2.3762, 68.6, 71, 73.4, 75.7, 78.1, 80.5, 82.9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pbup`
--

CREATE TABLE `pbup` (
  `id` bigint UNSIGNED NOT NULL,
  `month` int NOT NULL,
  `l` double NOT NULL,
  `m` double NOT NULL,
  `s` double NOT NULL,
  `sd` double NOT NULL,
  `min_tiga` double NOT NULL,
  `min_dua` double NOT NULL,
  `min_satu` double NOT NULL,
  `median` double NOT NULL,
  `satu` double NOT NULL,
  `dua` double NOT NULL,
  `tiga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pbup`
--

INSERT INTO `pbup` (`id`, `month`, `l`, `m`, `s`, `sd`, `min_tiga`, `min_dua`, `min_satu`, `median`, `satu`, `dua`, `tiga`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 49.1477, 0.0379, 1.8627, 43.6, 45.4, 47.3, 49.1, 51, 52.9, 54.7, NULL, NULL),
(2, 1, 1, 53.6872, 0.0364, 1.9542, 47.8, 49.8, 51.7, 53.7, 55.6, 57.6, 59.5, NULL, NULL),
(3, 2, 1, 57.0673, 0.03568, 2.0362, 51, 53, 55, 57.1, 59.1, 61.1, 63.2, NULL, NULL),
(4, 3, 1, 59.8029, 0.0352, 2.1051, 53.5, 55.6, 57.7, 59.8, 61.9, 64, 66.1, NULL, NULL),
(5, 4, 1, 62.0899, 0.03486, 2.1645, 55.6, 57.8, 59.9, 62.1, 64.3, 66.4, 68.6, NULL, NULL),
(6, 5, 1, 64.0301, 0.03463, 2.2174, 57.4, 59.6, 61.8, 64, 66.2, 68.5, 70.7, NULL, NULL),
(7, 6, 1, 65.7311, 0.03448, 2.2664, 58.9, 61.2, 63.5, 65.7, 68, 70.3, 72.5, NULL, NULL),
(8, 7, 1, 67.2873, 0.03441, 2.3154, 60.3, 62.7, 65, 67.3, 69.6, 71.9, 74.2, NULL, NULL),
(9, 8, 1, 68.7498, 0.0344, 2.365, 61.7, 64, 66.4, 68.7, 71.1, 73.5, 75.8, NULL, NULL),
(10, 9, 1, 70.1435, 0.03444, 2.4157, 62.9, 65.3, 67.7, 70.1, 72.6, 75, 77.4, NULL, NULL),
(11, 10, 1, 71.4818, 0.03452, 2.4676, 64.1, 66.5, 69, 71.5, 73.9, 76.4, 78.9, NULL, NULL),
(12, 11, 1, 72.771, 0.03464, 2.5208, 65.2, 67.7, 70.3, 72.8, 75.3, 77.8, 80.3, NULL, NULL),
(13, 12, 1, 74.015, 0.03479, 2.575, 66.3, 68.9, 71.4, 74, 76.6, 79.2, 81.7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengukuran`
--

CREATE TABLE `pengukuran` (
  `id` bigint UNSIGNED NOT NULL,
  `anak_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` decimal(5,2) NOT NULL,
  `tinggi` decimal(5,2) NOT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengukuran`
--

INSERT INTO `pengukuran` (`id`, `anak_id`, `berat`, `tinggi`, `umur`, `created_at`, `updated_at`) VALUES
(1, '6282119171960', 6.00, 86.00, '11.9', NULL, NULL),
(2, '6282119171960', 6.00, 86.00, '11.9', NULL, NULL),
(3, '6282119171960', 6.00, 86.00, '11.9', NULL, NULL),
(4, '6282119171960', 7.00, 86.00, '11.9', NULL, NULL),
(5, '6282119171960', 8.00, 86.00, '11.9', NULL, NULL),
(6, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(7, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(8, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(9, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(10, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(11, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(12, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(13, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(14, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(15, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(16, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(17, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(18, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(19, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(20, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(21, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(22, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(23, '6282119171960', 8.00, 86.00, '12', NULL, NULL),
(24, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(25, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(26, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(27, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(28, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(29, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(30, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(31, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(32, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(33, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(34, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(35, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(36, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(37, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(38, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(39, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(40, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(41, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(42, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(43, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(44, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(45, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(46, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(47, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(48, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(49, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(50, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(51, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(52, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(53, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(54, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(55, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(56, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(57, '6282119171960', 5.00, 70.00, '12', NULL, NULL),
(58, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(59, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(60, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(61, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(62, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(63, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(64, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(65, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(66, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(67, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(68, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(69, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(70, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(71, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(72, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(73, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(74, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(75, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(76, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(77, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(78, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(79, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(80, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(81, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(82, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(83, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(84, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(85, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(86, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(87, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(88, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(89, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(90, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(91, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(92, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(93, '6282119171960', 7.00, 60.00, '12', NULL, NULL),
(94, '6282119171960', 0.02, 55.60, '12', NULL, NULL),
(95, '6282119171960', 0.06, 56.60, '12', NULL, NULL),
(96, '6282119171960', 0.04, 56.60, '12', NULL, NULL),
(97, '6282119171960', 0.04, 56.60, '12', NULL, NULL),
(98, '6282119171960', 0.05, 56.60, '12', NULL, NULL),
(99, '6282119171960', 0.04, 56.60, '12', NULL, NULL),
(100, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(101, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(102, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(103, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(104, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(105, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(106, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(107, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(108, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(109, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(110, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(111, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(112, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(113, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(114, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(115, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(116, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(117, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(118, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(119, '6282119171960', 0.33, 56.60, '12', NULL, NULL),
(120, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(121, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(122, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(123, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(124, '6282119171960', 0.34, 56.60, '12', NULL, NULL),
(125, '6282119171960', 0.05, 19.00, '12.2', NULL, NULL),
(126, '6282119171960', 0.05, 19.00, '12.2', NULL, NULL),
(127, '6282119171960', 0.05, 19.00, '12.2', NULL, NULL),
(128, '6282119171960', 0.05, 19.40, '12.2', NULL, NULL),
(129, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(130, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(131, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(132, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(133, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(134, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(135, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(136, '6282119171960', 0.00, 19.80, '12.2', NULL, NULL),
(137, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(138, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL),
(139, '6282119171960', 0.00, 19.40, '12.2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4i0NrAJ7RgJRu7NbEIUArze85Wb48CzWGdkcueq5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEtOeG9Gbm9YbW00REhFUGpZanMzQms4Z3lKaWwxWVg5MnVYSVUwWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YW1waWxhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1749830831),
('FjeOtyCPexCUxhTqfKrddZtGXXCHnpWqDj2pBWj5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNU91NFNsT2xXWXFnQ3k4VDRvWUphRHNEaTJmT3ZzTE9sMkk2dmx1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sYXJhdmVsX3NhbGluYW4udGVzdC90YW1waWxhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1773037831),
('HjmAZG18Wet15CfVVXIVqcAUMF4CZsJ90JHZ0Gwx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXF3bkQ1aG85clZaME4wQ3FCUVV2ZDczOFBZTzViOExYTEJHbkFibyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWthcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750136565),
('K57hERFYXbkkWbabIxTCuxJ002gTAHQdmGLIKI0i', 1, '192.168.1.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRlNFSU1xNk9WTHk2VFNySUNCQnV3ekh3NDJqcWhKR0ZadndMazZOTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjEuMzo4MDAwL3RhbXBpbGFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1750053898),
('l5MPQkCUhK8CkZBZjppb54AXwCLqI4duevjBoiUs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUNQTDN6bkRnTnRCM1A0bVVCbWNTY0VzVTM1ZlBPQm9UTDZlTlFDSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sYXJhdmVsX3NhbGluYW4udGVzdC90YW1waWxhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1749622809),
('LiaNVu0TjVqJQew0qsCv3pqY9lFMqbmAb3nOdYHG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiclQ0WnRKRVhweE1HRUgwalZZdjBPcmZtSkI0bFhweVpXVjdzRnJWYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWthcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750162178),
('mlyxDewcRDlnZ8xeERjWKLKVYuGX64O6ybIvp59h', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0cwRUNtcGtrbGxOUTA1VU11QTdCRjhRMVlUQm9XaWhzS1Z4S0pPeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YW1waWxhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1749906963),
('Q1qrG1efEhJGOOCYDoQaQ8qWEq3uxrTyHCj81iaD', 1, '192.168.217.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEh1WGhZT3k0YUZPcXR3MFRWcVFmRjBsbklDUnZzcE5JMDA0SGdpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjIxNy4yNjo4MDAwL3RhbXBpbGFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1749623112),
('TLlbvXUuQ4ITFtkwRIqc6AnVfXlaIIRKjBJJ387Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjJHbGRNSk9YR1AyVGxOdE1PczJodnljRFZ1T3F4TDk2clg4R3ZCeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750156974),
('W1bG44Ov3IPDApvx3u8HjpcMH0B1sqrmqZdFYT6c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2poOXV6TjB5TFlPNEw2V011OWdkYWhnWHFQRUdsdVZaeDhhdHFVeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWthcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750136530),
('zwteoMlKPR8FAuM5qEqwxg4WlkM5vnOSVjj2ZN8t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDEwS2N4eGZ6WkV3SUlmVjFjd2x0WXU2M2dWdzVtMk1RZHFEY3pLTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749906813);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Furqon Muhammad Zulkifli', 'furqon21001@mail.unpad.ac.id', NULL, '$2y$12$a0aAoG7iPldI6OzQi7UmiejF6LxF6S.OGgZCobfCYD7peOA3qRQdi', NULL, '2025-06-10 03:38:27', '2025-06-10 03:38:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anak_nik_unique` (`nik`),
  ADD UNIQUE KEY `anak_api_key_unique` (`api_key`);

--
-- Indexes for table `bbpbl`
--
ALTER TABLE `bbpbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbpbp`
--
ALTER TABLE `bbpbp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbul`
--
ALTER TABLE `bbul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbup`
--
ALTER TABLE `bbup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klasifikasi_pengukuran`
--
ALTER TABLE `klasifikasi_pengukuran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klasifikasi_pengukuran_pengukuran_id_foreign` (`pengukuran_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pbul`
--
ALTER TABLE `pbul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pbup`
--
ALTER TABLE `pbup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengukuran`
--
ALTER TABLE `pengukuran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengukuran_anak_id_foreign` (`anak_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `bbpbl`
--
ALTER TABLE `bbpbl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `bbpbp`
--
ALTER TABLE `bbpbp`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `bbul`
--
ALTER TABLE `bbul`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bbup`
--
ALTER TABLE `bbup`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `klasifikasi_pengukuran`
--
ALTER TABLE `klasifikasi_pengukuran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pbul`
--
ALTER TABLE `pbul`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pbup`
--
ALTER TABLE `pbup`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengukuran`
--
ALTER TABLE `pengukuran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `klasifikasi_pengukuran`
--
ALTER TABLE `klasifikasi_pengukuran`
  ADD CONSTRAINT `klasifikasi_pengukuran_pengukuran_id_foreign` FOREIGN KEY (`pengukuran_id`) REFERENCES `pengukuran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengukuran`
--
ALTER TABLE `pengukuran`
  ADD CONSTRAINT `pengukuran_anak_id_foreign` FOREIGN KEY (`anak_id`) REFERENCES `anak` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
