-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 07:10 AM
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'fwfwf', '2023-01-05 03:25:48', '2023-01-05 03:25:48'),
(2, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'ddd', '2023-01-05 03:27:12', '2023-01-05 03:27:12'),
(3, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'ddd', '2023-01-05 03:27:34', '2023-01-05 03:27:34'),
(4, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'dqdqwqw', '2023-01-05 03:27:52', '2023-01-05 03:27:52'),
(5, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.comdsd', 'ssfsf', '2023-01-05 03:28:25', '2023-01-05 03:28:25'),
(6, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'ffagegesges', '2023-01-05 03:29:10', '2023-01-05 03:29:10'),
(7, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'fsfasfaf', '2023-01-05 03:29:26', '2023-01-05 03:29:26'),
(8, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'dgg', '2023-01-05 04:09:49', '2023-01-05 04:09:49'),
(9, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'feggg', '2023-01-05 04:16:56', '2023-01-05 04:16:56'),
(10, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'fewfwfwef', '2023-01-05 04:26:30', '2023-01-05 04:26:30'),
(11, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'fasffs', '2023-01-05 04:29:57', '2023-01-05 04:29:57'),
(12, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'vsfsf', '2023-01-05 04:31:16', '2023-01-05 04:31:16'),
(13, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'svgdsgvd', '2023-01-05 04:36:23', '2023-01-05 04:36:23'),
(14, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'dadqd', '2023-01-05 04:37:48', '2023-01-05 04:37:48');

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
(33, '2023_01_02_150822_create_sessions_table', 2),
(34, '2023_01_05_090740_create_contact_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_of_day` int(11) DEFAULT NULL,
  `amount_of_person` int(11) DEFAULT NULL,
  `place_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lg_service_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lh_service_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `from_date`, `to_date`, `amount_of_day`, `amount_of_person`, `place_id`, `package_id`, `lg_service_id`, `lh_service_id`, `name`, `email`, `phone`, `amount`, `payment_date`, `address`, `status`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(96, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', 'Customer Address', 'Success', '63b7af6dda0fa', 'BDT', NULL, NULL),
(97, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '2', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 1100, 'January 06, 2023', 'Customer Address', 'Success', '63b7afa069a2a', 'BDT', NULL, NULL),
(98, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '3', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2200, 'January 06, 2023', 'Customer Address', 'Success', '63b7afcba0a2f', 'BDT', NULL, NULL),
(99, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '4', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 3360, 'January 06, 2023', 'Customer Address', 'Success', '63b7affde1dd4', 'BDT', NULL, NULL),
(101, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', '63b7b3318c51a', 'BDT', NULL, NULL),
(102, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', '63b7b48c89c28', 'BDT', NULL, NULL);

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
('5LQuiIwm58FYIBmzxR8BkhsGJLh859wCUHYLrjBd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6Ik5vVzd1c1BMUjZ5a0lhVFZoWWgzbFFuWnhUTGtSSFJzSXExZ0dic3UiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvdWx0cmFwcm8tcGFja2FnZS80L2d1aWRlLXNlcnZpY2UvMS9iaWxsLWdlbmVyYXRlP190b2tlbj1Ob1c3dXNQTFI2eWtJYVRWaFloM2xRblp4VExrUkhSc0lxMWdHYnN1JmZyb209MjAyMy0wMS0wNiZwZXJzb249MSZ0bz0yMDIzLTAxLTA2Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRKdzVNMmN0aGJzMTVYcHFueE9rTUp1bkNnaE1PODdKUEw5T2pvMFZ4NTN0Z0pLVmpXLmJmZSI7czo5OiJ0b3RhbEJpbGwiO2Q6MTY4MDtzOjQ6ImZyb20iO3M6MTA6IjIwMjMtMDEtMDYiO3M6MjoidG8iO3M6MTA6IjIwMjMtMDEtMDYiO3M6MTE6ImFtb3VudE9mRGF5IjtpOjE7czoxNDoiYW1vdW50T2ZQZXJzb24iO3M6MToiMSI7czo5OiJwYWNrYWdlSWQiO3M6MToiNCI7czoxMToibGdTZXJ2aWNlSWQiO3M6MToiMSI7czoxMToibGhTZXJ2aWNlSWQiO047fQ==', 1672961853),
('7ER72GBZHrZim5qKKnUU0Z4NkHoq3yyZKem71MXV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxNDp7czo2OiJfdG9rZW4iO3M6NDA6ImtsOE5CMXlXdWlEQVdCa1hsdTZtNmhsOVI1NHhhQnFFMUltZFFYYUEiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxNjQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wbGFjZS8xL3JlZ3VsYXItcGFja2FnZS8xL2d1aWRlLXNlcnZpY2UvMS9iaWxsLWdlbmVyYXRlP190b2tlbj1xaXp3b3NrNHZOMTdqN2Vwc2VuRkk4SWpXa2psaUVwQWNyNUNKNWFyJmZyb209MjAyMy0wMS0wNiZwZXJzb249MSZ0bz0yMDIzLTAxLTA3Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRKdzVNMmN0aGJzMTVYcHFueE9rTUp1bkNnaE1PODdKUEw5T2pvMFZ4NTN0Z0pLVmpXLmJmZSI7czo5OiJ0b3RhbEJpbGwiO2Q6MjI2MDtzOjQ6ImZyb20iO3M6MTA6IjIwMjMtMDEtMDYiO3M6MjoidG8iO3M6MTA6IjIwMjMtMDEtMDciO3M6MTE6ImFtb3VudE9mRGF5IjtpOjI7czoxNDoiYW1vdW50T2ZQZXJzb24iO3M6MToiMSI7czo5OiJwYWNrYWdlSWQiO3M6MToiMSI7czoxMToibGdTZXJ2aWNlSWQiO3M6MToiMSI7czoxMToibGhTZXJ2aWNlSWQiO047fQ==', 1672961262),
('9O0q8yAoTcj2bPBY7DpITDsH99J3LQi769KbrqA9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxNTp7czo2OiJfdG9rZW4iO3M6NDA6ImU2YldxTG9PVUNYUkp5bVo5VUNnQkZLQnlUSnBvRzc5MTBtbW5nbWIiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZG93bmxvYWQvcGF5bWVudC1jb3B5LzEwMiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSnc1TTJjdGhiczE1WHBxbnhPa01KdW5DZ2hNTzg3SlBMOU9qbzBWeDUzdGdKS1ZqVy5iZmUiO3M6OToidG90YWxCaWxsIjtkOjIyNjA7czo0OiJmcm9tIjtzOjEwOiIyMDIzLTAxLTA2IjtzOjI6InRvIjtzOjEwOiIyMDIzLTAxLTA3IjtzOjExOiJhbW91bnRPZkRheSI7aToyO3M6MTQ6ImFtb3VudE9mUGVyc29uIjtzOjE6IjEiO3M6OToicGFja2FnZUlkIjtzOjE6IjEiO3M6MTE6ImxnU2VydmljZUlkIjtzOjE6IjEiO3M6MTE6ImxoU2VydmljZUlkIjtOO3M6NzoicGxhY2VJZCI7czoxOiIxIjtzOjExOiJwYXltZW50RGF0ZSI7czoxNjoiSmFudWFyeSAwNiwgMjAyMyI7fQ==', 1672985375),
('a0J2iq3p4sP4wjwRSc6EVuWpFrNh4EfGP5EiQKke', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6ImhtbEtwY25pVkYxaTAzTVk3SUE5OFIzZ1VBUmw3bzdhYWN2NFA4S0EiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvcmVndWxhci1wYWNrYWdlLzEvZ3VpZGUtc2VydmljZS8xL2JpbGwtZ2VuZXJhdGU/X3Rva2VuPWhtbEtwY25pVkYxaTAzTVk3SUE5OFIzZ1VBUmw3bzdhYWN2NFA4S0EmZnJvbT0yMDIzLTAxLTA2JnBlcnNvbj0xJnRvPTIwMjMtMDEtMDciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEp3NU0yY3RoYnMxNVhwcW54T2tNSnVuQ2doTU84N0pQTDlPam8wVng1M3RnSktWalcuYmZlIjtzOjk6InRvdGFsQmlsbCI7ZDoyMjYwO3M6NDoiZnJvbSI7czoxMDoiMjAyMy0wMS0wNiI7czoyOiJ0byI7czoxMDoiMjAyMy0wMS0wNyI7czoxMToiYW1vdW50T2ZEYXkiO2k6MjtzOjE0OiJhbW91bnRPZlBlcnNvbiI7czoxOiIxIjtzOjk6InBhY2thZ2VJZCI7czoxOiIxIjtzOjExOiJsZ1NlcnZpY2VJZCI7czoxOiIxIjtzOjExOiJsaFNlcnZpY2VJZCI7Tjt9', 1672964761),
('F9I93IHclj16XBF3cPilpsQFICICH26Q81yoi0h0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUhYZTFwNnh0MFVSa04wWWlHZnFsakZXbG1ZZkI3QWpTQzJIYWZLaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1672961423),
('mpHnjtTFOkNssjHNRpnAI4UCJDieKJJSv53NaVjv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6IlpRRTBseGs4Y2cyV0x6R2RzTmJ1aXpQdEd6ZXBYS1k2MnBEVzdrZ3UiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvcmVndWxhci1wYWNrYWdlLzEvZ3VpZGUtc2VydmljZS8xL2JpbGwtZ2VuZXJhdGU/X3Rva2VuPVpRRTBseGs4Y2cyV0x6R2RzTmJ1aXpQdEd6ZXBYS1k2MnBEVzdrZ3UmZnJvbT0yMDIzLTAxLTA2JnBlcnNvbj0xJnRvPTIwMjMtMDEtMDciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEp3NU0yY3RoYnMxNVhwcW54T2tNSnVuQ2doTU84N0pQTDlPam8wVng1M3RnSktWalcuYmZlIjtzOjk6InRvdGFsQmlsbCI7ZDoyMjYwO3M6NDoiZnJvbSI7czoxMDoiMjAyMy0wMS0wNiI7czoyOiJ0byI7czoxMDoiMjAyMy0wMS0wNyI7czoxMToiYW1vdW50T2ZEYXkiO2k6MjtzOjE0OiJhbW91bnRPZlBlcnNvbiI7czoxOiIxIjtzOjk6InBhY2thZ2VJZCI7czoxOiIxIjtzOjExOiJsZ1NlcnZpY2VJZCI7czoxOiIxIjtzOjExOiJsaFNlcnZpY2VJZCI7Tjt9', 1672965573),
('qRnmYbw83JpqAmwrVReKNJu4bp6V2ncCLiBprP1J', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6ImNySzVBVzVyWGRyR3pyT0JPNVZwcm9scUswWUJUaW9pVGk1MVF2NXIiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvcmVndWxhci1wYWNrYWdlLzEvZ3VpZGUtc2VydmljZS8xL2JpbGwtZ2VuZXJhdGU/X3Rva2VuPWNySzVBVzVyWGRyR3pyT0JPNVZwcm9scUswWUJUaW9pVGk1MVF2NXImZnJvbT0yMDIzLTAxLTA2JnBlcnNvbj0xJnRvPTIwMjMtMDEtMDciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEp3NU0yY3RoYnMxNVhwcW54T2tNSnVuQ2doTU84N0pQTDlPam8wVng1M3RnSktWalcuYmZlIjtzOjk6InRvdGFsQmlsbCI7ZDoyMjYwO3M6NDoiZnJvbSI7czoxMDoiMjAyMy0wMS0wNiI7czoyOiJ0byI7czoxMDoiMjAyMy0wMS0wNyI7czoxMToiYW1vdW50T2ZEYXkiO2k6MjtzOjE0OiJhbW91bnRPZlBlcnNvbiI7czoxOiIxIjtzOjk6InBhY2thZ2VJZCI7czoxOiIxIjtzOjExOiJsZ1NlcnZpY2VJZCI7czoxOiIxIjtzOjExOiJsaFNlcnZpY2VJZCI7Tjt9', 1672965136),
('SL9MGFjkvP9UE0Cg2473qapHEF0ohPgwzdzm9Cqd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6IlhDcmZVcVhPelMxaUxGeTVDRWNxdTBXY1JuS1hsVVNtU0RVMmk5RWkiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvcmVndWxhci1wYWNrYWdlLzEvZ3VpZGUtc2VydmljZS8xL2JpbGwtZ2VuZXJhdGU/X3Rva2VuPVhDcmZVcVhPelMxaUxGeTVDRWNxdTBXY1JuS1hsVVNtU0RVMmk5RWkmZnJvbT0yMDIzLTAxLTA2JnBlcnNvbj0xJnRvPTIwMjMtMDEtMDciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEp3NU0yY3RoYnMxNVhwcW54T2tNSnVuQ2doTU84N0pQTDlPam8wVng1M3RnSktWalcuYmZlIjtzOjk6InRvdGFsQmlsbCI7ZDoyMjYwO3M6NDoiZnJvbSI7czoxMDoiMjAyMy0wMS0wNiI7czoyOiJ0byI7czoxMDoiMjAyMy0wMS0wNyI7czoxMToiYW1vdW50T2ZEYXkiO2k6MjtzOjE0OiJhbW91bnRPZlBlcnNvbiI7czoxOiIxIjtzOjk6InBhY2thZ2VJZCI7czoxOiIxIjtzOjExOiJsZ1NlcnZpY2VJZCI7czoxOiIxIjtzOjExOiJsaFNlcnZpY2VJZCI7Tjt9', 1672963915),
('YppOQAUPVVzoUoYQX0WczeRKUjfZoSkbqvL9TP1w', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToxMzp7czo2OiJfdG9rZW4iO3M6NDA6IlJ5eEhhUlV4bHdtU244Y2IyYURYVVFOZFRqMkJXTUFTN0ZNS01mOGIiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2NDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BsYWNlLzEvcmVndWxhci1wYWNrYWdlLzEvZ3VpZGUtc2VydmljZS8xL2JpbGwtZ2VuZXJhdGU/X3Rva2VuPVJ5eEhhUlV4bHdtU244Y2IyYURYVVFOZFRqMkJXTUFTN0ZNS01mOGImZnJvbT0yMDIzLTAxLTA2JnBlcnNvbj0xJnRvPTIwMjMtMDEtMDciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEp3NU0yY3RoYnMxNVhwcW54T2tNSnVuQ2doTU84N0pQTDlPam8wVng1M3RnSktWalcuYmZlIjtzOjk6InRvdGFsQmlsbCI7ZDoyMjYwO3M6NDoiZnJvbSI7czoxMDoiMjAyMy0wMS0wNiI7czoyOiJ0byI7czoxMDoiMjAyMy0wMS0wNyI7czoxMToiYW1vdW50T2ZEYXkiO2k6MjtzOjE0OiJhbW91bnRPZlBlcnNvbiI7czoxOiIxIjtzOjk6InBhY2thZ2VJZCI7czoxOiIxIjtzOjExOiJsZ1NlcnZpY2VJZCI7czoxOiIxIjtzOjExOiJsaFNlcnZpY2VJZCI7Tjt9', 1672962717);

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
(1, 'Sajeeb Chakraborty', 1, 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 'Sumyia Mension, Chawkbazar, Chittagong', '2023-01-19', '8449849844', 'profile-photos/KgaxzcG50KjRCLvJuu5kv5x9lpbv3pFJLGG8CFEK.jpg', '2023-01-02 11:14:18', '$2y$10$Jw5M2cthbs15XpqnxOkMJunCghMO87JPL9Ojo0Vx53tgJKVjW.bfe', NULL, NULL, NULL, 'CBfDKEg0RueiPRWELHYtAvZxFS9VLgYliWDjCRatbCyTvluLwJaKrTlVfdQn', '2023-01-02 09:27:29', '2023-01-02 14:27:24'),
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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
