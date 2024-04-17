-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2024 a las 17:08:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loginprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`, `created_at`, `updated_at`) VALUES
(37, 14, 1, '2024-04-17 13:03:26', '2024-04-17 13:03:26'),
(38, 14, 12, '2024-04-17 13:03:38', '2024-04-17 13:03:38'),
(39, 12, 14, '2024-04-17 13:04:05', '2024-04-17 13:04:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_16_072809_create_posts_table', 2),
(5, '2024_04_16_100927_add_profile_photo_path_to_users_table', 3),
(6, '2024_04_16_103042_create_followers_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `text`, `picture`, `created_at`, `updated_at`) VALUES
(1, 12, 'hola que tal mi primero post', NULL, '2024-04-16 06:22:00', '2024-04-16 06:22:00'),
(2, 12, 'este es mi segundo post, encima con una imagen', 'uploads/QlPwZ7pF1Jc2TIRYKcd5jQE7uiJOFeBH7hQBv800.jpg', '2024-04-16 06:42:26', '2024-04-16 06:42:26'),
(3, 12, 'segundo intento de subi imahen', 'uploads/3Ff9pd5ums0ZrZlttJ7BImpLrTjLmHYJJv8ri51d.jpg', '2024-04-16 06:45:51', '2024-04-16 06:45:51'),
(4, 12, 'tercer intento', 'uploads/dsqJpfdY5ubR1pWyMyBrlD02HCCipbobmoXibRuf.jpg', '2024-04-16 06:48:36', '2024-04-16 06:48:36'),
(5, 12, 'CONSEGUIDOOO', NULL, '2024-04-16 06:55:10', '2024-04-16 06:55:10'),
(7, 14, 'hola este es mi primer post editado', NULL, '2024-04-16 08:21:49', '2024-04-16 08:23:22'),
(8, 14, 'hola esto es un post desde la paginaprincipal', NULL, '2024-04-16 10:13:30', '2024-04-16 10:13:30'),
(10, 14, 'aaaaaaaa', NULL, '2024-04-17 05:02:09', '2024-04-17 05:02:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YoChQmBmevK6Dx47acByHduefrcYGn63AJjgGDLW', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV3ZKM0xNYmRmNE01SVFNVlFwbHEwYVpybHNIWTMxWlROcGUxdTFkaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzEzMzY2MjY1O319', 1713366271);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo_url` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_photo_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Ethan Stroman', 'george.weber@example.org', '2024-04-15 10:09:20', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'LrbPKRy4VS', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(2, 'Yvette Botsford', 'aniyah.koss@example.net', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'XU8VncXvPG', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(3, 'Darrell Konopelski', 'kshlerin.ignatius@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, '8czmcI4EHk', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(4, 'Bridget Rogahn PhD', 'murray.emmalee@example.com', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, '5Nh0ghZVPy', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(5, 'Rosalinda Boehm', 'beer.myles@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'dPogbEprIj', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(6, 'Vance Schaden', 'devin.hamill@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'kGhJB7QvNR', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(7, 'Corrine D\'Amore DDS', 'raegan52@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'IwrAn6YPoQ', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(8, 'Mohamed Kerluke', 'dawson16@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'nh5wDwI899', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(9, 'Lamont Walsh', 'sandrine.johnston@example.com', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'JSo5cZ4J1f', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(10, 'Prof. Keaton Ritchie', 'sharon.rau@example.org', '2024-04-15 10:09:21', '$2y$12$iuidlQq8uMBGGaIvk8RIW.qMBLSekkB5moX1V.H/aITMuQMKBvPS2', NULL, 'vcZMNJUBUq', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(11, 'Test User', 'test@example.com', '2024-04-15 10:09:21', '$2y$12$HBtB51Lq/YtpL7dWFVh8a.cXOQJmqc7Qt.xHb9q2l0A1TtSgHffQq', NULL, 'gSBWkzmdry', '2024-04-15 10:09:21', '2024-04-15 10:09:21'),
(12, 'guille', 'g@g.com', NULL, '$2y$12$7KbYSdqjEzYP.0sr9dac6OVDew6/VEmtwq6nvCtZfX7BIXL2VqGv.', NULL, NULL, '2024-04-16 05:04:20', '2024-04-16 05:04:20'),
(13, 'andrii', 'a@a.com', NULL, '$2y$12$rh4CNUP/bVqF5lMnnNHstOaHHkojldYlmh/JYNCJT4XyFrcWFJ5E6', NULL, NULL, '2024-04-16 07:06:08', '2024-04-16 07:06:08'),
(14, 'andres', 'aa@aa.com', NULL, '$2y$12$nzkhdz187PNxjfBszu8ev.hnM7xTiV4G7IgHxVV1skGpNc050GY8i', 'images/default-profile.jpg', NULL, '2024-04-16 08:12:51', '2024-04-16 08:12:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_user_id_foreign` (`user_id`),
  ADD KEY `followers_follower_id_foreign` (`follower_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
