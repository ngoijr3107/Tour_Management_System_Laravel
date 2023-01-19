-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 08:29 PM
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
(14, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'dadqd', '2023-01-05 04:37:48', '2023-01-05 04:37:48'),
(15, 'Tresna Rani', 'tresna312@gmail.com', 'tran 2942894882 I do not complete tour but here i see complete the tour', '2023-01-11 02:36:59', '2023-01-11 02:36:59');

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
(1, 'Sajek Student Pack', 'Yes', '1', '1', 'Daily activities and entertainment, such as yoga classes, beach volleyball, and live music\nAccess to the resort\'s state-of-the-art fitness center and spa', 'Hotel Maitree', 'Non AC', 'student-pack.jpeg', '250', 3.5, 800.00, 'Rice,Chicken,Vegetables', 'food1.jpg', 80.00, 1130.00, NULL, NULL),
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
(34, '2023_01_05_090740_create_contact_table', 3),
(37, '2023_01_19_180500_create_reviews_table', 4);

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
  `tour_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `from_date`, `to_date`, `amount_of_day`, `amount_of_person`, `place_id`, `package_id`, `lg_service_id`, `lh_service_id`, `name`, `email`, `phone`, `amount`, `payment_date`, `address`, `status`, `tour_status`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(96, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', 'Customer Address', 'Success', 'Completed', '63b7af6dda0fa', 'BDT', NULL, '2023-01-18 12:53:32'),
(97, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '2', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 1100, 'January 06, 2023', 'Customer Address', 'Success', 'Pending', '63b7afa069a2a', 'BDT', NULL, NULL),
(98, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '3', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2200, 'January 06, 2023', 'Customer Address', 'Success', 'Pending', '63b7afcba0a2f', 'BDT', NULL, NULL),
(99, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '4', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 3360, 'January 06, 2023', 'Customer Address', 'Success', 'Completed', '63b7affde1dd4', 'BDT', NULL, '2023-01-18 12:58:12'),
(101, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', 'Completed', '63b7b3318c51a', 'BDT', NULL, '2023-01-18 13:00:57'),
(102, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', 'Completed', '63b7b48c89c28', 'BDT', NULL, '2023-01-18 13:02:57'),
(103, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', 'Pending', '63b7bc2cad317', 'BDT', NULL, NULL),
(104, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', 'Pending', '63b7bc5e0f875', 'BDT', NULL, NULL),
(105, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Success', 'Pending', '63b7bd56e61a7', 'BDT', NULL, NULL),
(106, '1', '2023-01-06', '2023-01-07', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 06, 2023', '', 'Pending', 'Pending', '63b7c64302eec', 'BDT', NULL, NULL),
(107, '1', '2023-01-07', '2023-01-08', 2, 1, '1', '3', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 07, 2023', '', 'Cancel', 'Pending', '63b905fd68724', 'BDT', NULL, NULL),
(108, '1', '2023-01-09', '2023-01-10', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 09, 2023', '', 'Success', 'Pending', '63bbb9f5808c6', 'BDT', NULL, NULL),
(109, '1', '2023-01-09', '2023-01-10', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 2260, 'January 09, 2023', '', 'Success', 'Pending', '63bbbadabe0b1', 'BDT', NULL, NULL),
(110, '1', '2023-01-09', '2023-01-13', 5, 1, '1', '3', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 5500, 'January 09, 2023', '', 'Success', 'Pending', '63bbbb300f2aa', 'BDT', NULL, NULL),
(111, '1', '2023-01-09', '2023-01-13', 5, 1, '1', '3', NULL, '1', 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 5500, 'January 09, 2023', '', 'Success', 'Pending', '63bbbbfcbe6c1', 'BDT', NULL, NULL),
(112, '1', '2023-01-09', '2023-01-11', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 3390, 'January 09, 2023', '', 'Success', 'Pending', '63bbbc7c2dfa7', 'BDT', NULL, NULL),
(113, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', NULL, 3390, 'January 10, 2023', '', 'Pending', 'Pending', '63bd54ea22b23', 'BDT', NULL, NULL),
(114, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', NULL, 3390, 'January 10, 2023', '', 'Pending', NULL, '63bd553052c14', 'BDT', NULL, NULL),
(115, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', NULL, 3390, 'January 10, 2023', '', 'Pending', NULL, '63bd559a3eb27', 'BDT', NULL, NULL),
(116, '1', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 3390, 'January 10, 2023', '', 'Success', 'Pending', '63bd5694a3563', 'BDT', NULL, NULL),
(117, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', NULL, 3390, 'January 10, 2023', '', 'Pending', 'Pending', '63bd572870ba5', 'BDT', NULL, NULL),
(118, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', NULL, 3390, 'January 10, 2023', '', 'Pending', 'Pending', '63bd574deecd5', 'BDT', NULL, NULL),
(119, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '01824072334', 3390, 'January 10, 2023', '', 'Pending', 'Pending', '63bd576226121', 'BDT', NULL, NULL),
(120, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '', 3390, 'January 10, 2023', '', 'Pending', 'Pending', '63bd57b812c4d', 'BDT', NULL, NULL),
(121, '13', '2023-01-10', '2023-01-12', 3, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', 'cus', 3390, 'January 10, 2023', '', 'Success', 'Pending', '63bd57f10bf36', 'BDT', NULL, NULL),
(122, '13', '2023-01-10', '2023-01-13', 4, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', 'cus', 4520, 'January 10, 2023', '', 'Success', 'Pending', '63bd586f233de', 'BDT', NULL, NULL),
(123, '14', '2023-01-11', '2023-01-17', 7, 2, '1', '4', '3', NULL, 'Tresna Rani', 'tresna312@gmail.com', 'cus', 44100, 'January 11, 2023', '', 'Success', 'Pending', '63be6dfbcee13', 'BDT', NULL, NULL),
(124, '1', '2023-01-19', '2023-01-20', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 2260, 'January 16, 2023', '', 'Success', 'Pending', '63c5ab9647028', 'BDT', NULL, NULL),
(125, '1', '2023-01-19', '2023-01-26', 8, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 9040, 'January 16, 2023', '', 'Success', 'Pending', '63c5ac24eed18', 'BDT', NULL, NULL),
(126, '1', '2023-01-19', '2023-01-26', 8, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 9040, 'January 16, 2023', '', 'Success', 'Pending', '63c5ac6da9029', 'BDT', NULL, NULL),
(127, '1', '2023-01-19', '2023-01-26', 8, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 9040, 'January 16, 2023', '', 'Success', 'Pending', '63c5ac9bb166a', 'BDT', NULL, NULL),
(128, '1', '2023-01-19', '2023-01-26', 8, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 9040, 'January 16, 2023', '', 'Success', 'Pending', '63c5acee2ad67', 'BDT', NULL, NULL),
(129, '1', '2023-01-19', '2023-01-20', 2, 1, '1', '1', '1', NULL, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', 'cus', 2260, 'January 18, 2023', '', 'Pending', 'Pending', '63c84487461aa', 'BDT', NULL, NULL);

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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `local_guide_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_host_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `local_guide_service_id`, `local_host_service_id`, `order_id`, `user_id`, `rating`, `comment`, `date`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '102', '1', '3', 'Good', '2023-01-19', '2023-01-19 13:19:59', '2023-01-19 13:19:59');

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
('iTdt8x63MYww2i1vCydGgY9viM8TufeUAGGZSs0P', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVzBnQ202OFdMcXZwRUxLdnNzMFNnZ3A0eldBMERYQmlzdTRRN3psdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9oaXN0b3J5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSnc1TTJjdGhiczE1WHBxbnhPa01KdW5DZ2hNTzg3SlBMOU9qbzBWeDUzdGdKS1ZqVy5iZmUiO30=', 1674156504);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `usertype`, `email`, `phone`, `address`, `date_of_birth`, `nid`, `status`, `profile_photo_path`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sajeeb Chakraborty', '1', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', 'Sumyia Mension, Chawkbazar, Chittagong', '2023-01-19', '8449849844', 'Apporve', 'profile-photos/KgaxzcG50KjRCLvJuu5kv5x9lpbv3pFJLGG8CFEK.jpg', '2023-01-02 11:14:18', '$2y$10$Jw5M2cthbs15XpqnxOkMJunCghMO87JPL9Ojo0Vx53tgJKVjW.bfe', NULL, NULL, NULL, 'UUyIL6l4dhNYH4YyzHyoQjXnACYoQt8QloVn20gA11oEkKrcU5pQqc4bVMCW', '2023-01-02 09:27:29', '2023-01-02 14:27:24'),
(2, 'Robin Chakraborty', '1', 'robincb.symphony@gmail.com', '01824072334', NULL, NULL, NULL, 'Pending', NULL, '2023-01-02 10:13:58', '$2y$10$qs7uJrm24D43KjZKKMDbc.ryQkuWEycSHVAPfktLsM2SvTgzDrUx2', NULL, NULL, NULL, NULL, '2023-01-02 10:02:55', '2023-01-14 05:35:29'),
(3, 'MD AL Amin', '2', 'alamin.rucse18@gmail.com', NULL, NULL, NULL, NULL, 'Approve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 14:43:11'),
(4, 'Jahid Hasan', '2', 'jahid.cseru@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Sajeeb Chakraborty', '0', 'sajeebcb.cseru@gmail.com', '01824072334', 'Sumyia Mension, Chawkbazar, Chittagong', '2023-01-14', '454544', NULL, 'profile-photos/jK4T3WqWLoBck4GZAM7kVJqpBfFnAKoFD7TQY9Vc.jpg', '2023-01-10 06:03:49', '$2y$10$e1uKhxml2qqk0uCtzmu64u0jDM7rtb12r8vQm3Ql.6Q9hERrjazkS', NULL, NULL, NULL, NULL, '2023-01-10 06:02:16', '2023-01-11 14:17:56'),
(14, 'Tresna Rani', '0', 'tresna312@gmail.com', NULL, NULL, NULL, NULL, 'Pending', NULL, '2023-01-11 02:02:04', '$2y$10$04jSiwTF96S5hmy6N4MdpuZjWA.jXcLhEXhtb0i7nWq8mMvpuvOFO', NULL, NULL, NULL, NULL, '2023-01-11 01:45:00', '2023-01-11 02:02:04');

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_guide_services`
--
ALTER TABLE `local_guide_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `local_host_services`
--
ALTER TABLE `local_host_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `virtual_assistants`
--
ALTER TABLE `virtual_assistants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
