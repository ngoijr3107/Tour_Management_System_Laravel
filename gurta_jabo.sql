-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 07:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gurta_jabo`
--

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
-- Table structure for table `local_guide_services`
--

CREATE TABLE `local_guide_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(15,1) DEFAULT 0.0,
  `hotel_price` double(15,2) DEFAULT NULL,
  `food_item` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_picture` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_price` double(15,2) DEFAULT NULL,
  `total_price` double(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_guide_services`
--

INSERT INTO `local_guide_services` (`id`, `service_name`, `available`, `user_id`, `place_id`, `feature`, `hotel_name`, `room_type`, `room_picture`, `service_charge`, `rating`, `hotel_price`, `food_item`, `food_picture`, `food_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'Sajek Student Pack', 'Yes', '1', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Hotel Maitree', 'Non AC', 'student-pack.jpeg', '250', 3.5, 800.00, 'Rice,Chicken,Vegetables', 'food1.jpg', 80.00, 1130.00, NULL, NULL),
(2, 'Sajek Couple Pack', 'No', '1', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Meghadree Eco Resort', 'AC', 'couple-pack.jpg', '300', 0.0, 2000.00, 'Rice,Fish', 'food2.jpg', 100.00, 2400.00, NULL, NULL),
(3, 'Sajek Family Pack', 'Yes', '2', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Monghor Resort', 'AC', 'family-pack.jpg', '500', 0.0, 2000.00, 'Biryani', 'food3.jpg', 100.00, 2600.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `local_host_services`
--

CREATE TABLE `local_host_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(15,1) DEFAULT 0.0,
  `room_price` double(15,2) DEFAULT NULL,
  `food_item` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_picture` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_price` double(15,2) DEFAULT NULL,
  `total_price` double(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_host_services`
--

INSERT INTO `local_host_services` (`id`, `service_name`, `available`, `user_id`, `place_id`, `feature`, `room_picture`, `rating`, `room_price`, `food_item`, `food_picture`, `food_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'Sajek Economy Pack', 'Yes', '3', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'student-pack.jpeg', 0.0, 500.00, 'Rice,Chicken', 'food1.jpg', 50.00, 550.00, NULL, NULL),
(2, 'Sajek Business Pack', 'No', '4', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'couple-pack.jpg', 0.0, 300.00, 'Rice,Fish', 'food2.jpg', 40.00, 340.00, NULL, NULL),
(3, 'Sajek First Class Pack', 'Yes', '3', '1', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'family-pack.jpg', 0.0, 800.00, 'Biryani', 'food3.jpg', 90.00, 890.00, NULL, NULL);

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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_01_01_011655_create_place_table', 1),
(28, '2023_01_01_011817_create_order_table', 1),
(29, '2023_01_01_012755_create_local_guide_services_table', 1),
(30, '2023_01_01_012859_create_local_host_services_table', 1),
(31, '2023_01_01_012950_create_virtual_assistant_table', 1),
(32, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(33, '2023_01_02_150822_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tourist_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lg_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lh_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_of_day` double(15,2) DEFAULT NULL,
  `amount_of_person` int(11) DEFAULT NULL,
  `total_cost` double(15,2) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Sajek Valley', 'Rangamati', 'sajek.jpg', NULL, NULL),
(2, 'Sundarban Mangrove', 'Bagarhat', 'sundarban.jpg', NULL, NULL),
(3, 'Cox\'s Bazar Sea Beach', 'Cox\'s Bazar', 'coxbazar.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LSdxOamSTxLdcw3snR1mPkM3q4U86eHKpA6hN3fV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWklmdUxQYWc2RFNPaWZuVXVvRGdKa3luMEJKbGtOWVpGQlFkd2VLbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wbGFjZS8xL3Byby1wYWNrYWdlLzMvaG9zdC1zZXJ2aWNlLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1672858027);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `usertype`, `email`, `phone`, `address`, `date_of_birth`, `nid`, `profile_photo_path`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sajeeb Chakraborty', 1, 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 'Sumyia Mension, Chawkbazar, Chittagong', '2023-01-19', '8449849844', 'profile-photos/KgaxzcG50KjRCLvJuu5kv5x9lpbv3pFJLGG8CFEK.jpg', '2023-01-02 11:14:18', '$2y$10$Jw5M2cthbs15XpqnxOkMJunCghMO87JPL9Ojo0Vx53tgJKVjW.bfe', NULL, NULL, NULL, 'M5FOEjzj5sVQqfuhxCPjKpAY72OC50bRb6r020Q8xIlBGiHcanotWv0WXKZ1', '2023-01-02 09:27:29', '2023-01-02 14:27:24'),
(2, 'Robin Chakraborty', 1, 'robincb.symphony@gmail.com', NULL, NULL, NULL, NULL, NULL, '2023-01-02 10:13:58', '$2y$10$qs7uJrm24D43KjZKKMDbc.ryQkuWEycSHVAPfktLsM2SvTgzDrUx2', NULL, NULL, NULL, NULL, '2023-01-02 10:02:55', '2023-01-02 10:13:58'),
(3, 'MD AL Amin', 2, 'alamin.rucse18@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jahid Hasan', 2, 'jahid.cseru@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `virtual_assistants`
--

CREATE TABLE `virtual_assistants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtual_assistants`
--

INSERT INTO `virtual_assistants` (`id`, `name`, `feature`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Jarvix Personal Assistant', 'Find out Tourist location \n and Translate any language by virtual assistant.', 550.00, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `local_guide_services`
--
ALTER TABLE `local_guide_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_host_services`
--
ALTER TABLE `local_host_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtual_assistants`
--
ALTER TABLE `virtual_assistants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_guide_services`
--
ALTER TABLE `local_guide_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `local_host_services`
--
ALTER TABLE `local_host_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `virtual_assistants`
--
ALTER TABLE `virtual_assistants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
