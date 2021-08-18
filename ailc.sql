-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 09:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ailc2`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kursus_id` int(11) DEFAULT NULL,
  `hari` varchar(255) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kursus_id`, `hari`, `jam`, `harga`, `created_at`, `updated_at`) VALUES
(0, 1, 'SENIN,RABU/JUMAT', '16:00-17:30', '250.000,-/4Bulan', NULL, '2021-01-27 07:08:49'),
(1, 2, 'SENIN,RABU/JUMAT', '16:00-17:30', '400.000,-/4Bulan', NULL, '2021-01-27 07:09:00'),
(2, 3, 'SENIN,RABU', '16:00-17:30', '200.000,-/4Bulan', NULL, '2021-01-27 07:09:09'),
(3, 4, 'SENIN,RABU,KAMIS,JUMAT', '16:00-17:30', '350.000,-/4Bulan', NULL, '2021-01-27 07:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id` int(11) NOT NULL,
  `nama_kursus` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`id`, `nama_kursus`, `created_at`, `updated_at`) VALUES
(1, 'Semi Intensive 3x90 Menit', '2021-01-14 13:05:09', '2021-01-14 13:05:09'),
(2, 'Reguler 2x90 Menit', '2021-01-14 13:05:09', '2021-01-14 13:05:09'),
(3, 'Conversation 2x90 Menit', '2021-01-14 13:06:09', '2021-01-14 13:06:09'),
(4, 'Intensive 4x90 Menit', '2021-01-14 13:06:09', '2021-01-14 13:06:09'),
(5, 'Contoh Kursus 2', '2021-01-15 01:42:03', '2021-01-15 01:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_08_04_081115_add_id_registrasi', 2),
(4, '2014_10_12_100000_create_password_resets_table', 3),
(5, '2020_08_05_075223_create_table_biodata', 3),
(6, '2020_08_05_103214_add_is_verifikasi', 4),
(7, '2020_08_05_144725_add_role_users', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `users` bigint(20) UNSIGNED NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `users`, `no_hp`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `kelas_id`, `foto`, `pembayaran`, `created_at`, `updated_at`) VALUES
(20, 18, '0987654377712', 'Bali', 'sidoarjo', '2020-08-11', 1, '886541.jpg', 'Implementasi_Pengujian_Black_Box_menggun.pdf', '2021-01-08 06:04:05', '2021-01-08 06:04:05'),
(21, 20, '0987654377712', 'Bali', 'Surabaya', '2020-11-08', 3, 'foto-profil.jpg', 'Program Pengecekan status true atau false.pdf', '2021-01-13 07:47:50', '2021-01-13 07:47:50'),
(22, 21, '0987654377799', 'Jakarta', 'Malang', '2020-12-01', 3, 'f997df63de0b93da88c2a2c4348f933f.png', 'Bot telegram.pdf', '2021-01-14 14:30:59', '2021-01-14 14:30:59'),
(23, 22, '0987654377788', 'Bandung', 'Bandung', '2020-12-06', 2, 'hiclipart.com.png', 'TugasThread.pdf', '2021-01-15 02:02:07', '2021-01-15 02:02:07'),
(24, 23, '0987654377733', 'Surabaya', 'Surabaya', '2020-12-09', 1, 'hiclipart3.png', 'KickStar2020.pdf', '2021-01-15 02:12:08', '2021-01-15 02:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) DEFAULT NULL,
  `id_registrasi` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pendaftaran` date DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verifikasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `id_registrasi`, `tgl_pendaftaran`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_verifikasi`) VALUES
(10, 1, '-', '0000-00-00', 'admin', 'admin@admin.com', NULL, '$2y$10$JFdKJzteneCgK2ElMjq41O2mqGq0RdH02vVEoEg.h1LzaZT5UYbEG', NULL, NULL, NULL, NULL),
(11, 1, NULL, '0000-00-00', 'admin2', 'admin2@gmail.com', NULL, '$2y$10$SHwBURPlnyws6ciE7gt4Je2xcGv/mDEn2tFLHrlEw6AqzV9kFzAAK', NULL, '2020-10-19 11:34:40', '2020-10-19 11:34:40', NULL),
(18, NULL, 'REG-20210108125924', '2021-01-08', 'salam', 'salam@gmail.com', NULL, '$2y$10$J562UDXxXkLYjnSPbmH7E.ysS/pEdyftJaGnS3OKd5LD34lFptt2i', NULL, NULL, '2021-01-08 07:51:42', 1),
(19, NULL, 'REG-20210108153905', '2021-01-08', 'hadi', 'hadi@gmail.com', NULL, '$2y$10$4xM/4QU2E7SuHz3peYquA.YT.CNofqZlWc8dfpb3D85XzlsJ0JGO2', NULL, NULL, NULL, NULL),
(20, NULL, 'REG-20210113140834', '2021-01-13', 'agung', 'agung@gmail.com', NULL, '$2y$10$tJwK4C5Y4Mhds8OMr7dmVuLmdc61ASH3xZoMROOO5H6/LwRtA/cDi', NULL, NULL, '2021-01-13 07:51:19', 1),
(21, NULL, 'REG-20210114212252', '2021-01-14', 'danu', 'danu@gmail.com', NULL, '$2y$10$F.d6IK0ii/9sBr4o3W17CeLFRj83V7jQ6IX0pPWSHjcfcB/ERbrtu', NULL, NULL, '2021-01-18 07:20:35', 1),
(22, NULL, 'REG-20210115085733', '2021-01-15', 'surya', 'surya@gmail.com', NULL, '$2y$10$k8ZpPg7FPR1k/k/WpqhRLulkAy77SxYR6KGh6w5D2StecaU1wuYJq', NULL, NULL, NULL, NULL),
(23, NULL, 'REG-20210115090851', '2021-01-15', 'qwerty', 'qwerty@gmail.com', NULL, '$2y$10$420f4MjEmYmhfqP6GlMsQO/usqfFyT6Jrcm0kLnMLSl/RW/jwsnl2', NULL, NULL, NULL, NULL),
(24, NULL, 'REG-20210118141823', '2021-01-18', 'ivan', 'ivan@gmail.com', NULL, '$2y$10$63FPBSUR9j/W30a.yEEue.Ou4IO1Pjl9xqc0Z991n38a3PkMSx47G', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `kursus_id` (`kursus_id`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users` (`users`),
  ADD KEY `id` (`id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`id`);

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `biodata_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
