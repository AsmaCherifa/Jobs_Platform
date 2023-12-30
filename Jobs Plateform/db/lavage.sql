-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 10:36 AM
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
-- Database: `lavage`
--

-- --------------------------------------------------------

--
-- Table structure for table `lavage`
--

CREATE TABLE `lavage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int(11) NOT NULL,
  `nb_fidele` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lavage`
--

INSERT INTO `lavage` (`id`, `id_user`, `nom`, `adresse`, `ville`, `note`, `nb_fidele`, `created_at`, `updated_at`) VALUES
(1, 4, 'Lavage auto Pro-clean', 'avenue 2 mars', 'Nabeul', 0, 20, NULL, '2022-06-03 09:52:04'),
(3, 4, 'WASH & GO', ' R6MC+9HX, Tunis', 'Nabeul', 2, 0, NULL, NULL),
(4, 4, 'Ferrari Lavage - El Omrane', 'R568+X8V, Avenue Belhassen Ben Chaabane', 'Nabeul', 3, 0, NULL, NULL),
(5, 4, 'Lavage Auto', 'R567+6WH, Tunis', 'Nabeul', 5, 0, NULL, NULL),
(6, 4, 'WASH & GO', ' R6MC+9HX, Tunis', 'Nabeul', 2, 10, NULL, NULL),
(7, 4, 'Ferrari Lavage - El Omrane', 'R568+X8V, Avenue Belhassen Ben Chaabane', 'Nabeul', 3, 15, NULL, NULL),
(8, 4, 'Lavage Auto', 'R567+6WH, Tunis', 'Nabeul', 5, 20, NULL, NULL),
(9, 4, 'WASH & GO', ' R6MC+9HX, Tunis', 'Tunis', 2, 10, NULL, NULL),
(10, 4, 'Ferrari Lavage - El Omrane', 'R568+X8V, Avenue Belhassen Ben Chaabane', 'Tunis', 3, 15, NULL, NULL),
(11, 4, 'Lavage Auto', 'R567+6WH, Tunis', 'Tunis', 5, 20, NULL, NULL),
(12, 4, 'Lavage le prestige', ' R6MC+9HX, Tunis', 'Nabeul', 2, 10, NULL, NULL),
(13, 4, 'Drive in Services', 'R568+X8V, Avenue Belhassen Ben Chaabane', 'Nabeul', 3, 15, NULL, NULL),
(14, 4, 'Station de lavage El Baraka ', 'R567+6WH, Tunis', 'Nabeul', 5, 20, NULL, NULL);

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
(3, '2022_05_07_113000_type_nettoyage', 3),
(4, '2022_02_21_132521_create_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nettoyage`
--

CREATE TABLE `nettoyage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_lavage` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`type`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nettoyage`
--

INSERT INTO `nettoyage` (`id`, `id_lavage`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"Nettoyage interieure\", \"Nettoyage exterieure\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lavage` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nettoyage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `service_transport` tinyint(1) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `id_user`, `id_lavage`, `phone`, `nettoyage`, `ville`, `date`, `service_transport`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '11111111', 'Nettoyage interieure', 'Nabeul', '2022-05-29 10:10:18', 1, 'confirme', 0, '2022-05-26 11:58:36', '2022-05-26 11:58:36'),
(2, 1, 1, '11111111', 'Nettoyage exterieure', 'Nabeul', '2022-05-31 10:46:07', 1, 'confirme', 5, '2022-05-26 11:59:52', '2022-05-31 10:46:07'),
(3, 1, 1, '11111111', 'Nettoyage exterieure', 'Nabeul', '2022-05-30 10:56:41', 1, 'Annulée', 3, '2022-05-27 08:07:07', '2022-05-30 10:56:41'),
(5, 6, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-05-30 10:48:41', 1, 'Annulée', 0, '2022-05-28 15:36:22', '2022-05-30 10:48:41'),
(9, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-01 13:25:36', 1, 'Annulée', 0, '2022-05-31 23:03:17', '2022-06-01 13:25:36'),
(11, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-01 13:25:30', 1, 'confirme', 0, '2022-06-01 13:24:37', '2022-06-01 13:25:30'),
(12, 1, 1, '12345678', 'Nettoyage exterieure', 'Nabeul', '2022-06-01 14:36:46', 1, 'confirme', 0, '2022-06-01 14:34:45', '2022-06-01 14:36:46'),
(13, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-02 10:05:28', 1, 'confirme', 0, '2022-06-02 10:03:19', '2022-06-02 10:05:28'),
(14, 1, 1, '12345788', 'Nettoyage interieure', 'Nabeul', '2022-06-03 09:06:09', 1, 'confirme', 0, '2022-06-03 09:05:11', '2022-06-03 09:06:09'),
(15, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-03 09:12:09', 1, 'confirme', 0, '2022-06-03 09:11:22', '2022-06-03 09:12:09'),
(16, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-03 09:37:23', 1, 'en attente', 0, '2022-06-03 09:37:23', '2022-06-03 09:37:23'),
(17, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-03 09:41:33', 1, 'en attente', 0, '2022-06-03 09:41:33', '2022-06-03 09:41:33'),
(18, 1, 1, '77777777', 'Nettoyage exterieure', 'Nabeul', '2022-06-03 09:43:54', 1, 'confirme', 0, '2022-06-03 09:43:07', '2022-06-03 09:43:54'),
(19, 1, 1, '12345678', 'Nettoyage interieure', 'Nabeul', '2022-06-03 09:52:14', 1, 'confirme', 0, '2022-06-03 09:51:15', '2022-06-03 09:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transp` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `id_transp`, `id_reservation`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-05-26 21:09:45', '2022-05-26 21:09:45'),
(2, 2, 2, '2022-05-31 10:49:48', '2022-05-31 10:49:48'),
(3, 2, 11, '2022-06-01 13:29:07', '2022-06-01 13:29:07'),
(4, 2, 12, '2022-06-01 14:38:01', '2022-06-01 14:38:01'),
(5, 2, 13, '2022-06-02 10:07:44', '2022-06-02 10:07:44'),
(6, 2, 14, '2022-06-03 09:07:02', '2022-06-03 09:07:02'),
(7, 2, 15, '2022-06-03 09:12:47', '2022-06-03 09:12:47'),
(8, 2, 15, '2022-06-03 09:12:49', '2022-06-03 09:12:49'),
(9, 2, 18, '2022-06-03 09:44:29', '2022-06-03 09:44:29'),
(10, 2, 19, '2022-06-03 09:52:50', '2022-06-03 09:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `typenettoyage`
--

CREATE TABLE `typenettoyage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typenettoyage`
--

INSERT INTO `typenettoyage` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Nettoyage interieure', NULL, NULL),
(2, 'Nettoyage exterieure', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `ville`, `phone`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Asma', 'Cherifa', 'Nabeul', '12345667', 'asma@gmail.com', '$2y$10$bWNZxuJO75gnnfRpW4Qf0eLYAESx6sg.S2NTL0BCeKxAnhhvI3GxW', 'Client', 1, '2022-05-26 11:35:18', '2022-06-03 09:49:43'),
(2, 'transport', 'transprt', 'Tunis', '12345786', 'transporteur@gmail.com', '$2y$10$e/hEtGXbpbtVXvDFoWHFa.wBtsvF/FBobxNEGvcFwWT5.IhBFpDGi', 'Transporteur', 0, '2022-05-26 11:36:20', '2022-06-03 09:47:10'),
(3, 'Admin', 'admin', 'Nabeul', '12345689', 'lavage@gmail.com', '$2y$10$YFpHNf9wH1bv.5HyN03x7O6iz1w5CfZRxv7bt0TNheVyBHNzfX/De', 'Admin', 1, '2022-05-26 11:37:01', '2022-06-03 09:48:05'),
(4, 'lavage', 'lavage', 'Nabeul', '12345678', 'salma@gmail.com', '$2y$10$nt54jaAp4ZUTURY0IrIGqOlUvpnqw.yjGKZJE5JCdzp.Xi3ApYY7e', 'Lavagiste', 0, '2022-05-26 11:37:11', '2022-06-01 14:36:12'),
(5, 'llllllll', 'l', 'Nabeul', '53610579', 'l@gmail.com', '$2y$10$ZdyvZIjNdbkk42QGXrM/QuzVHGxAWnS7L0U/WrN3BVGUXOrDngFvW', 'Lavagiste', 0, '2022-05-26 16:07:25', '2022-05-30 11:13:31'),
(6, 'ASMA', 'ch', 'nabeul', '12345678', 'asmaCH@gmail.com', '$2y$10$MmFFNuUfdS8Ty0w8WPpW7.SS5NdCuAjdASboMRUE8jhCgtf8ucHkK', 'Client', 1, '2022-05-28 15:24:56', '2022-05-30 11:14:56'),
(7, 'ddddddddd', 'chdd', 'Nabdul', '53610779', 'd@gmail.com', '$2y$10$.Qqw9ZQnbVIH2MeULYuubOUwqoOurHv9TE.Bxa824.3fuYwkq.hAK', 'Client', 0, '2022-05-29 10:02:00', '2022-05-30 11:15:17'),
(9, 'Asma', 'Cherifa', 'Nabeul', '77777777', 'asma2@gmail.com', '$2y$10$AVR1nyja8LuNX8Gy3zkTLeNUZ4znS/IQdnHvPZFqfrhp7naQRiTT2', 'Client', 0, '2022-06-03 09:45:27', '2022-06-03 09:45:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lavage`
--
ALTER TABLE `lavage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nettoyage`
--
ALTER TABLE `nettoyage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typenettoyage`
--
ALTER TABLE `typenettoyage`
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
-- AUTO_INCREMENT for table `lavage`
--
ALTER TABLE `lavage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nettoyage`
--
ALTER TABLE `nettoyage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `typenettoyage`
--
ALTER TABLE `typenettoyage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
