-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2021 at 05:41 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_attribute_id` bigint UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 1, 'Blue', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(9, 1, 'Black', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(10, 1, 'Pink', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(11, 3, '32', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(12, 3, '30', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(13, 3, '40', 35, '2021-11-03 02:18:51', '2021-11-03 02:18:51'),
(14, 1, 'Brown', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(15, 1, 'Black', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(16, 1, 'Blue', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(17, 1, 'White', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(18, 3, '10', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(19, 3, '12', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(20, 3, '15', 17, '2021-11-03 02:25:15', '2021-11-03 02:25:15'),
(21, 1, 'Black', 3, '2021-11-03 06:33:31', '2021-11-03 06:33:31'),
(22, 1, 'Blue', 3, '2021-11-03 06:33:31', '2021-11-03 06:33:31'),
(23, 1, 'Brown', 3, '2021-11-03 06:33:31', '2021-11-03 06:33:31'),
(24, 3, '20', 3, '2021-11-03 06:33:31', '2021-11-03 06:33:31'),
(25, 3, '25', 3, '2021-11-03 06:33:31', '2021-11-03 06:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', 'electronic', '2021-10-20 03:10:15', '2021-11-01 03:33:40'),
(2, 'porro sunt', 'porro-sunt', '2021-10-20 03:10:15', '2021-10-20 03:10:15'),
(3, 'aut voluptatem', 'aut-voluptatem', '2021-10-20 03:10:15', '2021-10-20 03:10:15'),
(4, 'nihil rerum', 'nihil-rerum', '2021-10-20 03:10:15', '2021-10-20 03:10:15'),
(5, 'ullam fuga', 'ullam-fuga', '2021-10-20 03:10:15', '2021-10-20 03:10:15'),
(6, 'molestias eum', 'molestias-eum', '2021-10-20 03:10:15', '2021-10-20 03:10:15'),
(12, 'Appilances', 'appilances', '2021-11-01 04:01:01', '2021-11-01 04:01:01'),
(13, 'Sportwear', 'sportwear', '2021-11-01 04:38:47', '2021-11-01 04:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Ram Chandra Singh', 'ram1234@gmail.com', '9966880012', 'Please provide me my credentials', '2021-10-28 02:12:07', '2021-10-28 02:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT '2021-10-23'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFF100', 'fixed', '100.00', '1000.00', '2021-10-23 01:18:53', '2021-10-23 04:24:34', '2021-10-24'),
(2, 'OFF20P', 'percent', '20.00', '1200.00', '2021-10-23 01:20:10', '2021-10-23 01:20:10', '2021-10-23'),
(3, 'OFF30', 'fixed', '100.00', '1500.00', '2021-10-23 04:00:25', '2021-10-23 04:03:47', '2021-11-12');

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

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,5', 8, '2021-10-21 10:57:31', '2021-10-21 06:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Front Page Slider', 'Front Page First Slider of Product', '200', 'http://127.0.0.1:8000/shop', '1634807407.jpg', '0', '2021-10-21 03:40:07', '2021-10-21 04:07:56'),
(3, 'Front Page Second Slider', 'Second Home Slider Image', '3000', 'http://127.0.0.1:8000/shop', '1634808150.jpg', '1', '2021-10-21 03:52:30', '2021-10-21 04:08:03'),
(4, 'Front Page Third Slider', 'Third Slider For Front Page', '300', 'http://127.0.0.1:8000/shop', '1634809066.jpg', '1', '2021-10-21 04:07:46', '2021-10-21 04:07:46');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_20_063838_create_sessions_table', 1),
(7, '2021_10_20_082406_create_categories_table', 2),
(8, '2021_10_20_082443_create_products_table', 2),
(9, '2021_10_21_085152_create_home_sliders_table', 3),
(10, '2021_10_21_105455_create_home_categories_table', 4),
(11, '2021_10_22_072645_create_coupons_table', 5),
(12, '2021_10_23_074748_add_expiry_date_to_coupons_table', 6),
(13, '2021_10_24_080636_create_orders_table', 7),
(14, '2021_10_24_080652_create_order_items_table', 7),
(15, '2021_10_24_080710_create_shippings_table', 7),
(16, '2021_10_24_080758_create_transactions_table', 7),
(17, '2021_10_27_065247_add_delivered_canceled_date_to_orders_table', 8),
(18, '2021_10_27_104747_create_reviews_table', 9),
(19, '2021_10_27_105647_add_rstatus_to_order_items_table', 9),
(20, '2021_10_28_064349_create_contacts_table', 10),
(21, '2021_10_28_074412_create_settings_table', 11),
(22, '2021_10_29_115928_create_shoppingcart_table', 12),
(23, '2021_11_01_053413_create_subcategories_table', 13),
(24, '2021_11_01_101526_add_subcategory_id_to_products_table', 14),
(25, '2021_11_01_130204_create_profiles_table', 15),
(26, '2021_11_02_081126_create_product_attributes_table', 16),
(27, '2021_11_03_064726_create_attribute_values_table', 17),
(28, '2021_11_03_084751_add_options_to_order_items_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `cancelled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstName`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `cancelled_date`) VALUES
(8, 2, '730.00', '0.00', '153.30', '883.30', 'Harshal', 'Mahajan', '9960322376', 'harshal@gmail.com', 'street number 12', 'street number 122', 'Mumbai', 'Maharashtra', 'India', '30010', 'ordered', 1, '2021-10-25 06:32:13', '2021-10-25 06:32:13', NULL, NULL),
(9, 2, '730.00', '0.00', '153.30', '883.30', 'Harshal', 'Mahajan', '9960322376', 'harshal@gmail.com', 'street number111', 'street number 1221', 'Nashik', 'Maharashtra', 'India', '433011', 'ordered', 1, '2021-10-25 06:35:43', '2021-10-25 06:35:43', NULL, NULL),
(15, 2, '461.00', '0.00', '96.81', '557.81', 'Manoj ', 'Kumar', '9960322386', 'manojtest@gmail.com', 'street number1', NULL, 'Nashik', 'Maharashtra', 'India', '422010', 'ordered', 0, '2021-10-26 01:31:34', '2021-10-26 01:31:34', NULL, NULL),
(16, 2, '461.00', '0.00', '96.81', '557.81', 'Manoj ', 'Kumar', '9960322376', 'manojtest@gmail.com', 'line test12', NULL, 'Nagpur', 'Maharashtra', 'India', '422010', 'ordered', 0, '2021-10-26 01:33:41', '2021-10-26 01:33:41', NULL, NULL),
(17, 2, '461.00', '0.00', '96.81', '557.81', 'Manoj ', 'Kumar', '9960322376', 'manojtest@gmail.com', 'street number111', NULL, 'Nagpur', 'Maharashtra', 'India', '422010', 'ordered', 0, '2021-10-26 01:37:17', '2021-10-26 01:37:17', NULL, NULL),
(18, 1, '1246.00', '0.00', '261.66', '1507.66', 'Rutuja', 'Gaikwad', '8800123487', 'rutu@gmail.com', 'satpur  coloney', 'ashok Nagar', 'Kolkata', 'West Bengal', 'India', '880101', 'ordered', 0, '2021-10-26 06:24:07', '2021-10-26 06:24:07', NULL, NULL),
(19, 1, '1246.00', '0.00', '261.66', '1507.66', 'Ankit', 'Singh', '7890112341', 'ankit@yahoo.com', 'Old Nagar mg road', 'near highway', 'Haridwar', 'Uttarkhand', 'India', '990101', 'ordered', 1, '2021-10-26 06:29:43', '2021-10-26 06:29:43', NULL, NULL),
(20, 3, '518.00', '0.00', '108.78', '626.78', 'Rutuja ', 'Gaikwad', '1234567890', 'rutu1930@gmail.com', 'Ambad Link Road', 'Ambad MIDC', 'Hyderabad', 'Telegana', 'India', '789100', 'delivered', 1, '2021-10-26 08:12:15', '2021-10-27 02:00:21', '2021-10-27', NULL),
(21, 3, '48.00', '0.00', '10.08', '58.08', 'Rutuja', 'Gaikwa', '1234567890', 'rutu1930@gmail.com', 'Ambad Link Road', 'Ambad MIDC', 'Hyderabad', 'Telegana', 'India', '789100', 'cancelled', 0, '2021-10-27 02:29:32', '2021-10-27 04:03:36', NULL, '2021-10-27'),
(22, 3, '461.00', '0.00', '96.81', '557.81', 'Rutuja ', 'Gaikwad', '9966880012', 'rutu@gmail.com', 'Ambad Link Road', 'Satpur', 'Pune', 'Maharashtra', 'India', '422010', 'delivered', 0, '2021-10-28 07:00:02', '2021-10-28 07:00:28', '2021-10-28', NULL),
(23, 1, '922.00', '0.00', '193.62', '1115.62', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan3019@gmail.com', 'street number 12', 'street number1', 'Dehradun', 'Uttarkhand', 'India', '422001', 'ordered', 0, '2021-10-29 04:07:56', '2021-10-29 04:07:56', NULL, NULL),
(24, 1, '461.00', '0.00', '96.81', '557.81', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan3019@gmail.com', 'street number1', 'line test12', 'Hyderabad', 'Telegana', 'India', '422011', 'ordered', 0, '2021-10-29 05:03:35', '2021-10-29 05:03:35', NULL, NULL),
(25, 1, '730.00', '0.00', '153.30', '883.30', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan3019@gmail.com', 'Ambad Link Road', 'street number111', 'Nashik', 'Maharashtra', 'India', '422011', 'ordered', 0, '2021-10-29 05:07:15', '2021-10-29 05:07:15', NULL, NULL),
(26, 1, '450.00', '0.00', '94.50', '544.50', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan3019@gmail.com', 'Ambad Link Road', 'line test12', 'Dehradun', 'Maharashtra', 'India', '422010', 'ordered', 0, '2021-10-29 05:14:28', '2021-10-29 05:14:28', NULL, NULL),
(27, 1, '896.00', '0.00', '188.16', '1084.16', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan3019@gmail.com', 'street number 12', 'street number1', 'Mumbai', 'Maharashtra', 'India', '422019', 'ordered', 0, '2021-10-29 05:36:00', '2021-10-29 05:36:00', NULL, NULL),
(28, 2, '461.00', '0.00', '96.81', '557.81', 'Harshal', 'Mahajan', '9960322367', 'harshalmahajan1930@gmail.com', 'Ambad Link Road', NULL, 'Dehradun', 'Uttarkhand', 'India', '4220101', 'ordered', 0, '2021-10-29 05:41:49', '2021-10-29 05:41:49', NULL, NULL),
(29, 2, '461.00', '0.00', '96.81', '557.81', 'Harshal', 'Mahajan', '9966880012', 'harshalmahajan1930@gmail.com', 'Ambad Link Road', NULL, 'Hyderabad', 'Telegana', 'India', '433901', 'ordered', 0, '2021-10-29 05:47:22', '2021-10-29 05:47:22', NULL, NULL),
(30, 2, '461.00', '0.00', '96.81', '557.81', 'Harshal', 'Mahajan', '9960322367', 'harshalmahajan1930@gmail.com', 'Ambad Link Road', NULL, 'Nashik', 'Mahrashtra', 'India', '422012', 'ordered', 0, '2021-10-29 05:50:47', '2021-10-29 05:50:47', NULL, NULL),
(31, 2, '461.00', '0.00', '96.81', '557.81', 'Harshal', 'Kumar', '9966880012', 'harshalmahajan3019@gmail.com', 'Ambad Link Road', NULL, 'Pune', 'Maharashtra', 'India', '422011', 'ordered', 0, '2021-10-29 06:04:14', '2021-10-29 06:04:14', NULL, NULL),
(32, 3, '365.00', '0.00', '76.65', '441.65', 'Rutuja ', 'Gaikwad', '9960322367', 'rutu@gmail.com', 'Ambad Link Road', 'street number111', 'Dehradun', 'Uttarkhand', 'India', '400011', 'cancelled', 0, '2021-10-29 06:17:11', '2021-10-29 07:00:30', NULL, '2021-10-29'),
(33, 3, '826.00', '0.00', '173.46', '999.46', 'Rutuja ', 'Mahajan', '9960322367', 'rutu@gmail.com', 'Ambad Link Road', 'line test12', 'Dehradun', 'Uttarkhand', 'India', '433011', 'cancelled', 0, '2021-10-29 06:18:10', '2021-11-03 06:56:35', NULL, '2021-11-03'),
(34, 4, '702.00', '0.00', '147.42', '849.42', 'Ravi', 'Mahajan', '7890123478', 'ravi1234@gmail.com', 'CBS near district court', 'anapooran hotel', 'Jaipur', 'Rajasthan', 'India', '890011', 'delivered', 0, '2021-10-29 07:04:29', '2021-10-29 07:05:27', '2021-10-29', NULL),
(35, 3, '800.00', '0.00', '168.00', '968.00', 'Nikita', 'Singh', '9960332213', 'niki1992@gmail.com', 'KK WAGH', NULL, 'Alibagh', 'Maharashtra', 'India', '455011', 'ordered', 0, '2021-11-03 03:39:58', '2021-11-03 03:39:58', NULL, NULL),
(36, 3, '800.00', '0.00', '168.00', '968.00', 'Ram chandra ', 'Singh', '8087248952', 'ram@remail.com', 'street number 12', NULL, 'Kota', 'Rajasthan', 'India', '455011', 'ordered', 0, '2021-11-03 06:50:49', '2021-11-03 06:50:49', NULL, NULL),
(37, 3, '800.00', '0.00', '168.00', '968.00', 'Manoj', 'Kumar', '7890001231', 'manu@gmail.com', 'Ambad Link Road', NULL, 'NewDelhi', 'Delhi', 'India', '455011', 'ordered', 0, '2021-11-03 06:54:34', '2021-11-03 06:54:34', NULL, NULL),
(38, 3, '800.00', '0.00', '168.00', '968.00', 'Manoj', 'Kumar', '7890001231', 'manu@gmail.com', 'Ambad Link Road', NULL, 'NewDelhi', 'Delhi', 'India', '455011', 'delivered', 0, '2021-11-03 06:54:57', '2021-11-03 07:01:15', '2021-11-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(5, 2, 8, '365.00', 2, '2021-10-25 06:32:13', '2021-10-25 06:32:13', 1, NULL),
(6, 2, 9, '365.00', 2, '2021-10-25 06:35:43', '2021-10-25 06:35:43', 0, NULL),
(12, 1, 15, '461.00', 1, '2021-10-26 01:31:34', '2021-10-26 01:31:34', 1, NULL),
(13, 1, 16, '461.00', 1, '2021-10-26 01:33:41', '2021-10-26 01:33:41', 0, NULL),
(14, 1, 17, '461.00', 1, '2021-10-26 01:37:17', '2021-10-26 01:37:17', 0, NULL),
(15, 4, 18, '448.00', 1, '2021-10-26 06:24:07', '2021-10-26 06:24:07', 0, NULL),
(16, 6, 18, '399.00', 2, '2021-10-26 06:24:07', '2021-10-26 06:24:07', 0, NULL),
(17, 4, 19, '448.00', 1, '2021-10-26 06:29:43', '2021-10-26 06:29:43', 0, NULL),
(18, 6, 19, '399.00', 2, '2021-10-26 06:29:43', '2021-10-26 06:29:43', 0, NULL),
(19, 5, 20, '35.00', 2, '2021-10-26 08:12:15', '2021-10-27 06:59:03', 1, NULL),
(20, 4, 20, '448.00', 1, '2021-10-26 08:12:15', '2021-10-27 07:02:21', 1, NULL),
(21, 8, 21, '16.00', 3, '2021-10-27 02:29:32', '2021-10-27 02:29:32', 0, NULL),
(22, 1, 22, '461.00', 1, '2021-10-28 07:00:02', '2021-10-28 07:02:42', 1, NULL),
(23, 1, 23, '461.00', 2, '2021-10-29 04:07:56', '2021-10-29 04:07:56', 0, NULL),
(24, 1, 24, '461.00', 1, '2021-10-29 05:03:35', '2021-10-29 05:03:35', 0, NULL),
(25, 2, 25, '365.00', 2, '2021-10-29 05:07:15', '2021-10-29 05:07:15', 0, NULL),
(26, 3, 26, '225.00', 2, '2021-10-29 05:14:28', '2021-10-29 05:14:28', 0, NULL),
(27, 4, 27, '448.00', 2, '2021-10-29 05:36:00', '2021-10-29 05:36:00', 0, NULL),
(28, 1, 28, '461.00', 1, '2021-10-29 05:41:49', '2021-10-29 05:41:49', 0, NULL),
(29, 1, 29, '461.00', 1, '2021-10-29 05:47:22', '2021-10-29 05:47:22', 0, NULL),
(30, 1, 30, '461.00', 1, '2021-10-29 05:50:47', '2021-10-29 05:50:47', 0, NULL),
(31, 1, 31, '461.00', 1, '2021-10-29 06:04:14', '2021-10-29 06:04:14', 0, NULL),
(32, 2, 32, '365.00', 1, '2021-10-29 06:17:11', '2021-10-29 06:17:11', 0, NULL),
(33, 1, 33, '461.00', 1, '2021-10-29 06:18:10', '2021-10-29 06:18:10', 0, NULL),
(34, 2, 33, '365.00', 1, '2021-10-29 06:18:10', '2021-10-29 06:18:10', 0, NULL),
(35, 1, 34, '461.00', 1, '2021-10-29 07:04:29', '2021-10-29 07:06:20', 1, NULL),
(36, 8, 34, '16.00', 1, '2021-10-29 07:04:29', '2021-10-29 07:07:03', 1, NULL),
(37, 3, 34, '225.00', 1, '2021-10-29 07:04:29', '2021-10-29 07:07:25', 1, NULL),
(38, 35, 35, '800.00', 1, '2021-11-03 03:39:58', '2021-11-03 03:39:58', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:5:\"Black\";s:5:\"Sizes\";s:2:\"30\";}}'),
(39, 35, 36, '800.00', 1, '2021-11-03 06:50:49', '2021-11-03 06:50:49', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:5:\"Black\";s:5:\"Sizes\";s:2:\"30\";}}'),
(40, 35, 37, '800.00', 1, '2021-11-03 06:54:34', '2021-11-03 06:54:34', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:5:\"Black\";s:5:\"Sizes\";s:2:\"30\";}}'),
(41, 35, 38, '800.00', 1, '2021-11-03 06:54:57', '2021-11-03 06:54:57', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:5:\"Black\";s:5:\"Sizes\";s:2:\"30\";}}');

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
('harshalmahajan3019@gmail.com', '$2y$10$9lV10Ld7Di5voT/rrOEg7ueHRSzR4ZLqE368JlhyIDjVpbACyPs4.', '2021-11-08 01:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('Instock','Outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'architecto quaerat deleniti est', 'architecto-quaerat-deleniti-est', 'Rem magni voluptatem placeat modi ratione nulla. Voluptatem quia dignissimos sit. Et unde nisi rerum et. Molestiae laboriosam nihil fugiat maiores. Magni eum quos est deleniti maxime.', 'Modi vel blanditiis modi aut porro voluptatem. Iste corrupti consequatur placeat eos. Et architecto explicabo voluptas enim ut. Et earum aut voluptatem quia. Exercitationem nesciunt inventore quas quo itaque nisi cupiditate. Vel sed doloremque quia qui et quisquam alias consequatur. Quidem cum esse itaque. Quo iure hic perspiciatis eaque debitis maxime aperiam. Omnis incidunt rem ut mollitia aut quia eaque. Incidunt officiis et voluptate et dolorem qui voluptas. Itaque quisquam nesciunt quo.', '461.00', '320.00', 'DIGI413', 'Instock', 0, 111, 'digital_17.jpg', ',16354978630.jpg,16354978631.jpg', 1, '2021-10-20 03:10:15', '2021-10-29 03:27:43', NULL),
(2, 'et quisquam repudiandae quaerat', 'et-quisquam-repudiandae-quaerat', 'Illo velit qui eos autem. Et ut commodi aut omnis maiores sint. Voluptatem quis quo qui. Quia at quia voluptas voluptas quo.', 'Vel nobis fuga voluptatum. Et sunt magni enim est expedita culpa provident. Incidunt aut et qui et facilis. Quisquam et natus quia accusamus veniam corrupti. Voluptas fugit omnis voluptatem unde minima ex alias. Doloremque autem aspernatur incidunt repellat dolorem. Temporibus consequatur et minima vel facere asperiores enim sint. Consectetur inventore quas nisi dolorum sapiente minima fuga. Omnis consequuntur quae doloremque dolor accusantium.', '365.00', NULL, 'DIGI243', 'Instock', 0, 173, 'digital_8.jpg', NULL, 4, '2021-10-20 03:10:15', '2021-10-20 03:10:15', NULL),
(3, 'quia qui est eligendi', 'quia-qui-est-eligendi', 'Debitis nobis neque et et voluptatem. Officiis neque exercitationem tenetur. Quae quidem illum non reiciendis.', 'Ad et eos at nihil expedita animi aut. Quas itaque cumque libero minus et necessitatibus qui libero. Delectus vel quia dolorum. Quam rerum vel voluptas omnis error et. Error qui soluta nam facilis provident nam aut. Eaque doloribus sapiente velit minus quasi.', '225.00', '210.00', 'DIGI120', 'Instock', 0, 189, 'digital_6.jpg', ',16359410110.jpg,16359410111.jpg,16359410112.jpg', 1, '2021-10-20 03:10:16', '2021-11-03 06:33:31', 7),
(4, 'tempore doloribus omnis in', 'tempore-doloribus-omnis-in', 'Eligendi omnis modi iste repudiandae qui asperiores cumque. Dolor sit fugiat reiciendis quos quam illo est. Quod fuga ut corporis omnis et. Voluptatem dolore quas voluptas ad.', 'Dolorem assumenda eum non nemo enim praesentium consequatur ut. Odit commodi dolorum voluptate maiores. Incidunt aperiam officiis qui cumque quisquam consequatur. Explicabo eius rerum ratione iste impedit officia. Architecto eum omnis excepturi eum optio quos. Architecto veritatis iure omnis deserunt. Incidunt facilis eum sit ex. Vel perspiciatis aut voluptate non reiciendis. Quod nisi temporibus corrupti ad ducimus minima beatae. Repellendus aut quaerat non architecto.', '448.00', NULL, 'DIGI276', 'Instock', 0, 150, 'digital_5.jpg', NULL, 4, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(5, 'nulla illo ut ipsa', 'nulla-illo-ut-ipsa', 'Ipsum eaque quod eos fuga odio. Est et exercitationem officiis hic et. Repudiandae aut quo voluptatibus et quo. Dolorem maiores unde nemo iste placeat iure in.', 'Voluptates dolor voluptas aut voluptatem aut. Itaque fuga et assumenda ipsam. Incidunt cupiditate sed ipsum aut aut veritatis. Odit quae excepturi a et pariatur. Facere ut et et reiciendis. Sed et aut provident voluptas assumenda. Quis reiciendis esse debitis tempore aperiam tempora. Saepe soluta mollitia numquam dolor. Sapiente harum illo praesentium aut atque aut.', '35.00', NULL, 'DIGI167', 'Instock', 0, 138, 'digital_19.jpg', NULL, 2, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(6, 'eos perferendis voluptatum molestias', 'eos-perferendis-voluptatum-molestias', 'Aperiam reiciendis dolorem et vel cum. Rerum sit reiciendis deleniti aliquam placeat. Fugiat aliquam debitis ea rerum rerum vel est.', 'Voluptas aut consequatur consectetur nulla est delectus ipsa. Omnis sequi libero sapiente facilis sed esse asperiores. Reprehenderit quam error ipsum culpa. Atque modi alias aperiam. Tempora qui et eum velit porro deserunt ex quas. Et quos est totam. A ipsa laudantium quis quis quidem nihil. Assumenda optio et quidem eum modi libero. Error quae aut nihil labore sunt molestias qui quos. Vero deleniti blanditiis nesciunt minima saepe blanditiis. Error aliquid illo sint quam molestiae ut.', '399.00', NULL, 'DIGI423', 'Instock', 0, 139, 'digital_13.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(7, 'aut saepe minus sunt', 'aut-saepe-minus-sunt', 'Quia doloribus reiciendis sit recusandae voluptas error. Vel quia quas veritatis. Aliquam a in aperiam.', 'Aliquid maxime labore ut non dolorem et perspiciatis. Eius rerum qui ut consequatur et accusantium itaque. Molestiae omnis consequatur quia rerum harum exercitationem voluptatem. Est voluptatem quisquam voluptas nam. Voluptas aspernatur aut nesciunt voluptas. Aspernatur quam necessitatibus quae temporibus. Ipsam aliquam quos sed esse rem aut natus dolore. Dolorem rerum consectetur et eveniet ut itaque voluptas. Odit accusantium ipsa excepturi perspiciatis tempore tempora sint.', '233.00', NULL, 'DIGI416', 'Instock', 0, 137, 'digital_7.jpg', NULL, 4, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(8, 'sunt porro non nostrum', 'sunt-porro-non-nostrum', 'Beatae doloremque repellendus quasi. Fugit officiis id et ullam. Dicta magnam dolor earum quo eligendi amet.', 'Voluptas aspernatur ab ducimus cumque id dolores. Et quae autem quibusdam facere dolor est dolores. Necessitatibus cupiditate nemo sit. Rerum ad enim in porro id perferendis voluptate. Et facere debitis tempore aliquid distinctio sunt nam. A quasi delectus enim nihil et eveniet. Rerum aut quos ipsam incidunt sequi repellat vitae asperiores. Pariatur quod veniam odit sunt voluptatem iusto.', '16.00', NULL, 'DIGI241', 'Instock', 0, 188, 'digital_16.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(9, 'tenetur veniam cum nulla', 'tenetur-veniam-cum-nulla', 'Dolorem quibusdam aliquid cumque et voluptatem dicta quia. Eligendi sapiente laboriosam sint tempora aut nihil expedita. Deleniti consectetur qui et quaerat.', 'Corporis quos vitae id repellendus deleniti. Molestias et architecto veritatis architecto quae reiciendis suscipit. Rem accusantium sit assumenda nihil ipsa quia ipsam. Ullam esse qui qui voluptatem quis distinctio. Consequatur reiciendis architecto explicabo modi aut labore. Aliquid quam quam consequatur dolore. Qui ad ut velit nesciunt. Ad optio saepe est explicabo illum dolor eum. Voluptates consectetur beatae officia et qui. Ad non nihil et aut pariatur repudiandae qui laborum.', '42.00', NULL, 'DIGI218', 'Instock', 0, 119, 'digital_4.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(10, 'et quia dolorum cum', 'et-quia-dolorum-cum', 'Odit et nostrum illo quaerat excepturi quam. Impedit ut consequatur repellat eius. Iusto laboriosam excepturi tempore dolore enim architecto. Quos commodi dolores labore vel.', 'Optio aut consequuntur voluptatibus asperiores tempore. Laudantium maxime pariatur corporis et voluptas recusandae. Quis accusamus error deserunt eveniet voluptate. Aut dicta voluptatem porro perferendis enim et. Officia error consectetur delectus doloribus soluta esse. Voluptatibus excepturi nam quibusdam consequatur voluptas. Aspernatur dolores voluptatum voluptatem molestiae.', '26.00', NULL, 'DIGI128', 'Instock', 0, 143, 'digital_11.jpg', NULL, 2, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(11, 'error adipisci voluptate commodi', 'error-adipisci-voluptate-commodi', 'Voluptatem ratione ea magni natus. Molestias qui laborum dolores nesciunt. Debitis explicabo quasi reiciendis sed enim porro cumque.', 'Impedit nemo consequatur debitis distinctio architecto. Iste nesciunt tenetur tempore tempora odit sapiente. Et quisquam at molestias doloremque exercitationem ratione beatae nihil. Et accusamus reiciendis sunt reiciendis nulla qui. Consectetur rerum non enim fugiat minima. Fugit corrupti fugit et nam blanditiis eos ea saepe. Deleniti consectetur eos et sit. Aut et et et ut. Odio et ea dolores tempora molestiae ducimus delectus.', '121.00', NULL, 'DIGI317', 'Instock', 0, 162, 'digital_10.jpg', NULL, 3, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(12, 'alias laudantium amet quis', 'alias-laudantium-amet-quis', 'Error saepe qui rerum quas magni atque. Non asperiores sit sit quibusdam praesentium accusamus et. Harum sed et ab ex quam. Et illum deserunt exercitationem magnam est.', 'Non qui voluptas rerum ex. Enim aperiam eos sit quisquam minus neque. Doloribus minima facere autem fuga quia esse qui. Velit et odio harum ut enim. Laborum voluptatem magni est quis dolorum neque. Ut earum voluptas non numquam doloribus doloremque saepe. Consequuntur et enim qui. Mollitia quibusdam expedita qui vel quia. Et eius autem officia repellendus corrupti. Est iusto quibusdam doloremque magni eligendi.', '29.00', NULL, 'DIGI425', 'Instock', 0, 176, 'digital_9.jpg', NULL, 4, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(13, 'et voluptas ex et', 'et-voluptas-ex-et', 'Sint quibusdam veniam earum dolorem. Quo sequi ullam aut consequatur ullam exercitationem. Ut porro dolores id et ut temporibus.', 'Et illo voluptas natus. Repellat et consequatur deleniti dolor est voluptas repellendus quia. Nesciunt rerum suscipit occaecati necessitatibus ipsam quo nemo. Temporibus ea sit est sed commodi quidem dolorum quis. Et ullam minus dolorem consequatur quis eveniet eveniet. Vitae quia tempore consequatur nobis vitae et animi enim. At a id qui et. Accusamus aut odio excepturi aspernatur nam ut. Vero et esse est expedita quo voluptatem.', '445.00', NULL, 'DIGI294', 'Instock', 0, 122, 'digital_3.jpg', NULL, 2, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(14, 'eveniet beatae possimus omnis', 'eveniet-beatae-possimus-omnis', 'Voluptatem enim dolor est possimus cum nostrum. Optio aut ut occaecati quis aut mollitia alias. Et adipisci non quidem quos. Fugit ducimus et doloremque omnis repellendus.', 'Eos temporibus rerum quia et. Rem corporis nesciunt ex et non rerum qui. Cupiditate facere perferendis quidem doloremque. Ipsa nihil illum et sunt voluptatum atque. Quia vitae illo nesciunt quod ut eaque. Nobis ab numquam nobis quia et dolorem vel. Dolores voluptatibus eum saepe voluptatem excepturi. Autem non autem voluptate voluptatibus doloremque et. Rerum culpa culpa maiores. Nostrum illum cupiditate eius quaerat. Nostrum ut fugiat amet voluptatem perspiciatis. Et iusto et perspiciatis et.', '134.00', NULL, 'DIGI400', 'Instock', 0, 123, 'digital_20.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(15, 'aut tempore porro perferendis', 'aut-tempore-porro-perferendis', 'Ex maxime a tempora non deserunt ipsa. Delectus reiciendis quidem vero fuga accusamus vero. Qui est aliquid unde rerum quod voluptatem et.', 'Itaque commodi qui perferendis maiores autem ut. Culpa molestiae hic et eos. Placeat architecto at ea enim nihil. Suscipit ratione excepturi sed est laudantium fugiat. Exercitationem iste optio magni dolores. Eum inventore quasi repellendus asperiores quo. Occaecati molestiae placeat earum. Eligendi officiis qui adipisci ipsum et pariatur ea. Iste perferendis modi aut reiciendis consequuntur magni. Aut distinctio consequatur consequatur explicabo.', '11.00', NULL, 'DIGI168', 'Instock', 0, 140, 'digital_21.jpg', NULL, 2, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(16, 'quo alias et cumque', 'quo-alias-et-cumque', 'Tempora vel magni tenetur quibusdam sit facilis. Laboriosam nisi explicabo nesciunt. Et odio sed non nostrum. Laboriosam mollitia molestiae sit quam. Nesciunt alias et architecto dolor culpa.', 'Quia quos exercitationem laudantium atque. Ad cupiditate et quo animi. Ea est nihil deleniti voluptates perferendis consequatur. Amet fuga omnis dolor odio quidem aut velit. Earum possimus laudantium atque quia voluptas esse. Minus beatae possimus dolorum et praesentium. Veniam dolorem eius nesciunt ut eum blanditiis amet. Sed illo distinctio suscipit occaecati.', '468.00', NULL, 'DIGI311', 'Instock', 0, 129, 'digital_15.jpg', NULL, 2, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(17, 'aut cupiditate animi et', 'aut-cupiditate-animi-et', 'Dolorem assumenda aut velit eligendi. Quaerat qui quia non eius deleniti. Ut sed numquam dolorem dolor.', 'Et enim aut qui sint nihil omnis dolorem laudantium. Ex impedit est dignissimos qui et pariatur animi. Est rerum ex dolore minus laboriosam quisquam doloribus. Excepturi nisi ducimus dolorum at quidem quos. Ad quis non voluptatem sit. Et eius corrupti modi et neque totam maxime. Dolor autem dolor et eaque. Deleniti sit ab autem eaque harum sit. Suscipit neque hic corrupti minus iusto. Exercitationem consequatur quia error nobis velit non.', '492.00', '340.00', 'DIGI409', 'Instock', 0, 146, 'digital_1.jpg', NULL, 1, '2021-10-20 03:10:16', '2021-11-03 02:25:15', NULL),
(18, 'accusantium inventore aspernatur eos', 'accusantium-inventore-aspernatur-eos', 'Iure illo rerum sequi aliquid sapiente aut ut. Et voluptate possimus adipisci eligendi. Qui cum qui laudantium commodi occaecati fuga aut.', 'Non quidem voluptatem qui consequatur. Tenetur ab sunt voluptas aspernatur. Voluptas debitis in illum commodi. Aspernatur qui eum et. Rerum sed aut dolor pariatur maiores nam. Aliquam totam iure optio nesciunt quo ratione laudantium. Non autem delectus et minima placeat totam mollitia. Praesentium sint consectetur et reiciendis culpa. Deleniti corrupti tenetur autem sit enim. Esse explicabo unde autem ea. Rem ut maiores et qui sed voluptatem. Illum ut enim mollitia.', '199.00', NULL, 'DIGI145', 'Instock', 0, 182, 'digital_12.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(19, 'voluptatem maiores quas praesentium', 'voluptatem-maiores-quas-praesentium', 'Nam doloribus rerum harum at. Occaecati qui aspernatur libero expedita. Quia nobis sed deserunt minus.', 'Consectetur nemo quis debitis ab maxime. Qui ut qui sit accusamus. Suscipit aut dolorem qui eos expedita nihil. Et cum vitae praesentium fugiat possimus. Quae quaerat labore vel provident reprehenderit recusandae soluta corrupti. Pariatur dolorum suscipit temporibus et eius provident aliquam. Eos sunt quaerat beatae minima est est aspernatur exercitationem. Aut provident sed libero at id nihil rerum. Soluta hic ea sequi reprehenderit explicabo dolores sint molestiae.', '76.00', '66.00', 'DIGI348', 'Instock', 0, 106, 'digital_18.jpg', NULL, 5, '2021-10-20 03:10:16', '2021-11-03 01:05:53', NULL),
(20, 'distinctio eum qui ipsa', 'distinctio-eum-qui-ipsa', 'Maxime eligendi odit ea enim nesciunt ducimus non. Id dolorem eveniet qui natus tenetur qui et. Rem fugiat sed nobis.', 'Non ex aliquid iure ipsum deleniti voluptate laudantium. Repellat ut quo est sit sed sit minima. Veniam qui optio voluptas eum rerum ut. Sequi quo voluptas reprehenderit odio repellat. Tenetur ipsam quia quod. Ipsam quidem nam dolores velit incidunt cum dolorem quam. Minima ut excepturi at molestiae. Possimus ea facilis odio distinctio delectus. Quisquam ipsa vero non rerum aut rerum voluptas vitae. Aut minus omnis nihil natus quia. Veniam enim nulla beatae voluptatem id.', '494.00', NULL, 'DIGI113', 'Instock', 0, 170, 'digital_2.jpg', NULL, 3, '2021-10-20 03:10:16', '2021-10-20 03:10:16', NULL),
(27, 'New Product Gallery Testing', 'new-product-gallery-testing', 'New Product Gallery Short Descp.\n', 'New Product Gallery Description', '400.00', '320.00', 'DIGI1100', 'Instock', 0, 10, '1635429125.jpg', ',16354979440.jpg,16354979441.jpg', 1, '2021-10-28 08:22:05', '2021-10-29 03:29:04', NULL),
(28, 'New Product 1930', 'new-product-1930', 'New Product 1930 short description', 'New Product 1930 Long Description', '300.00', '290.00', 'DIGI18920', 'Instock', 0, 10, '1635766009.jpg', ',16357674700.jpg,16357674701.jpg,16357674702.jpg,16357674703.jpg', 1, '2021-11-01 05:56:49', '2021-11-01 06:21:10', 7),
(35, 'New Product Attribute Testing', 'new-product-attribute-testing', 'New Product Attribute Testing Short description', 'New Product Attribute Testing Description', '800.00', '678.00', 'DIGI1991', 'Instock', 0, 10, '1635924048.jpg', NULL, 12, '2021-11-03 01:50:48', '2021-11-03 01:50:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colors', '2021-11-02 03:16:11', '2021-11-02 03:38:36'),
(3, 'Sizes', '2021-11-02 03:43:46', '2021-11-02 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 3, '1635940835.jpg', '4220100', 'Satpur Coloney', 'Satpur MIDC', 'Nashik', 'Maharashtra', 'India', '422011', '2021-11-02 00:43:37', '2021-11-03 06:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nice Product in good range', 19, '2021-10-27 06:59:03', '2021-10-27 06:59:03'),
(2, 3, 'Not so good product', 20, '2021-10-27 07:02:21', '2021-10-27 07:02:21'),
(3, 4, 'Good Quality worth of price\n', 22, '2021-10-28 07:02:41', '2021-10-28 07:02:41'),
(4, 4, 'Good Product ', 35, '2021-10-29 07:06:20', '2021-10-29 07:06:20'),
(5, 3, 'Average Product', 36, '2021-10-29 07:07:03', '2021-10-29 07:07:03'),
(6, 5, 'Awesome Product', 37, '2021-10-29 07:07:25', '2021-10-29 07:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2NKuBZBgYNXumuvshnYyWYHJtQBQQwOHEYxBRi98', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2FsdVpYUlBqU1N2THZsakp0S1pHWENGRVBKNklkeDcxZk9LRTJKMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXQtcGFzc3dvcmQvOTE3M2VmZTUzMzQwOWEyZWMwYjI1ZDM5MDE5ZWY1YzFiNzY2ODBiZDFkYTE3YjZmYmIwOTVkN2IzZDkyMTE3Mz9lbWFpbD1oYXJzaGFsbWFoYWphbjMwMTklNDBnbWFpbC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1636355688),
('9YrK4G8pKD3uFpAehNCtmMMTyDdKVu5pyym1o76g', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoid2k4REJEcHg0VzdSNzNtYTJId1c2QVVuNmVkOFRtR2RsTFozdTg1NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJyb2xlX25hbWUiO3M6ODoiY3VzdG9tZXIiO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZ0Y3WXdVS2RQMkouUm85SjVuZGdSZTRzN1UwblcwTWhzUm5jQmJmcGNibkFLclovMlFRTXUiO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjEyMDQ1MjljNTM3Mzk0NzliYWNlNDk1MmU4MDlmMGQ0IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMTIwNDUyOWM1MzczOTQ3OWJhY2U0OTUyZTgwOWYwZDQiO3M6MjoiaWQiO2k6MzU7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6Mjk6Ik5ldyBQcm9kdWN0IEF0dHJpYnV0ZSBUZXN0aW5nIjtzOjU6InByaWNlIjtkOjgwMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YToyOntzOjY6IkNvbG9ycyI7czo1OiJCbGFjayI7czo1OiJTaXplcyI7czoyOiIzMCI7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19czo4OiJ3aXNobGlzdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX19fQ==', 1636357933),
('IMZ35Tu9KTOd9M7RCzKgxllzihX4OISREtgvRyLt', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR2VNaUlIbGJtbU1XWFhZOWxRZExqUkFRN013bzBoVzBLbEVSTmJTZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJyb2xlX25hbWUiO3M6ODoiY3VzdG9tZXIiO30=', 1635938574),
('jFbLUHxkAC1B25xLzrE8TrUIZOdYLF79AjQRFSBl', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3NqeHpnWTJ5dlRIcks3dmhCdlVOcUxyM1NYWkkzZEU1clp3Zm9lTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0LXVzIjt9fQ==', 1635944004);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(700) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'harshalmahajan1234@gmail.com', '9960322367', '8087248921', 'Nashik, Maharshtra, India', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7500.106394433668!2d73.7515391265054!3d19.96426493045202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb5bec789841%3A0xeafec15754973d71!2sUttam%20Nagar%2C%20Nashik%2C%20Maharashtra%20422010!5e0!3m2!1sen!2sin!4v1635943446727!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '#', '#', '#', '#', '#', '2021-10-28 03:18:23', '2021-10-28 04:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 8, 'Sanjay', 'Mahajan', '8087248915', 'sanjay@yahoo.com', 'street number111', 'street number121', 'Pune', 'Punjab', 'India', '341010', '2021-10-25 06:32:13', '2021-10-25 06:32:13'),
(2, 9, 'Sanjay', 'Mahaja', '8087248915', 'sanjay@yahoo.com', 'street number1112', 'street number 1221', 'Hisar', 'Punjab', 'India', '450101', '2021-10-25 06:35:43', '2021-10-25 06:35:43'),
(3, 19, 'Shubham', 'Jain', '9110002341', 'shubham@gmail.com', 'Mehar Signal Coloney', 'Red Society', 'Chandigarh', 'Punjab', 'India', '788910', '2021-10-26 06:29:43', '2021-10-26 06:29:43'),
(4, 20, 'Poonam', 'Shah', '7890016781', 'poonam@yahoo.com', 'Elcon society', 'near army school', 'Dehradun', 'Uttarkhand', 'India', '455010', '2021-10-26 08:12:15', '2021-10-26 08:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('harshalmahajan3019@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"ef989788031ab618b9a863ce586f346f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ef989788031ab618b9a863ce586f346f\";s:2:\"id\";i:17;s:3:\"qty\";i:1;s:4:\"name\";s:23:\"aut cupiditate animi et\";s:5:\"price\";d:492;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:5:\"Sizes\";s:2:\"12\";s:6:\"Colors\";s:5:\"Black\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"9bed93171480649d6a2d893a3e852d3b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"9bed93171480649d6a2d893a3e852d3b\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"New Product Attribute Testing\";s:5:\"price\";d:800;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:4:\"Pink\";s:5:\"Sizes\";s:2:\"30\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}}', '2021-11-03 06:40:43', NULL),
('harshalmahajan3019@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";i:5;s:3:\"qty\";i:1;s:4:\"name\";s:18:\"nulla illo ut ipsa\";s:5:\"price\";d:35;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"bd33e4e24a9444d831df8285f4c15e30\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bd33e4e24a9444d831df8285f4c15e30\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"New Product Attribute Testing\";s:5:\"price\";d:800;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}}', '2021-11-03 06:40:43', NULL),
('ravi1234@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-11-03 03:35:34', NULL),
('ravi1234@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-11-03 03:35:13', NULL),
('rutu@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"1204529c53739479bace4952e809f0d4\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1204529c53739479bace4952e809f0d4\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"New Product Attribute Testing\";s:5:\"price\";d:800;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:2:{s:6:\"Colors\";s:5:\"Black\";s:5:\"Sizes\";s:2:\"30\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}}', '2021-11-03 06:49:11', NULL),
('rutu@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-11-03 06:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'Washing Machine', 'washing-machine', 12, '2021-11-01 04:01:24', '2021-11-01 04:07:04'),
(5, 'Bata Shoes', 'bata-shoes', 13, '2021-11-01 04:39:15', '2021-11-01 04:39:15'),
(6, 'Televisions', 'televisions', 12, '2021-11-01 04:39:54', '2021-11-01 04:39:54'),
(7, 'Mobiles', 'mobiles', 1, '2021-11-01 04:40:10', '2021-11-01 04:40:10'),
(8, 'Camera', 'camera', 2, '2021-11-01 05:25:54', '2021-11-01 05:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 'cod', 'pending', '2021-10-25 06:35:43', '2021-10-25 06:35:43'),
(2, 2, 17, 'card', 'approved', '2021-10-26 01:37:23', '2021-10-26 01:37:23'),
(3, 1, 19, 'cod', 'pending', '2021-10-26 06:29:43', '2021-10-26 06:29:43'),
(4, 3, 20, 'cod', 'pending', '2021-10-26 08:12:15', '2021-10-26 08:12:15'),
(5, 3, 21, 'cod', 'pending', '2021-10-27 02:29:32', '2021-10-27 02:29:32'),
(6, 3, 22, 'cod', 'pending', '2021-10-28 07:00:02', '2021-10-28 07:00:02'),
(7, 1, 23, 'cod', 'pending', '2021-10-29 04:07:56', '2021-10-29 04:07:56'),
(8, 1, 24, 'cod', 'pending', '2021-10-29 05:03:35', '2021-10-29 05:03:35'),
(9, 1, 25, 'cod', 'pending', '2021-10-29 05:07:15', '2021-10-29 05:07:15'),
(10, 1, 26, 'cod', 'pending', '2021-10-29 05:14:28', '2021-10-29 05:14:28'),
(11, 1, 27, 'cod', 'pending', '2021-10-29 05:36:00', '2021-10-29 05:36:00'),
(12, 2, 28, 'cod', 'pending', '2021-10-29 05:41:49', '2021-10-29 05:41:49'),
(13, 2, 29, 'cod', 'pending', '2021-10-29 05:47:22', '2021-10-29 05:47:22'),
(14, 2, 30, 'cod', 'pending', '2021-10-29 05:50:47', '2021-10-29 05:50:47'),
(15, 2, 31, 'cod', 'pending', '2021-10-29 06:04:14', '2021-10-29 06:04:14'),
(16, 3, 32, 'cod', 'pending', '2021-10-29 06:17:11', '2021-10-29 06:17:11'),
(17, 3, 33, 'cod', 'pending', '2021-10-29 06:18:10', '2021-10-29 06:18:10'),
(18, 4, 34, 'cod', 'pending', '2021-10-29 07:04:29', '2021-10-29 07:04:29'),
(19, 3, 35, 'cod', 'pending', '2021-11-03 03:39:58', '2021-11-03 03:39:58'),
(20, 3, 38, 'card', 'approved', '2021-11-03 06:55:02', '2021-11-03 06:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `status`, `role_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Harshal', 'Mahajan', 'harshal1930', 'harshalmahajan3019@gmail.com', NULL, '$2y$10$5ZiLU7e8Dy71kJe.OFZXJeKh6eowKPv52a5ErUn.gFXBeTgO4LmNq', NULL, NULL, 'Active', 'admin', NULL, '2021-10-20 02:30:26', '2021-10-20 02:30:26'),
(2, 'Harsh', 'Mahajan', 'harsh3030', 'harshalmahajan1930@gmail.com', NULL, '$2y$10$9PTTIm7iQq1hEw3hmq9vfevXcgvipOr1TRXza1vnu20sObs1uIHvi', NULL, NULL, 'Active', 'customer', NULL, '2021-10-24 04:41:41', '2021-10-24 04:41:41'),
(3, 'Rutuja', 'Gaikwad', 'rutuja1930', 'rutu@gmail.com', NULL, '$2y$10$gF7YwUKdP2J.Ro9J5ndgRe4s7U0nW0MhsRncBbfpcbnAKrZ/2QQMu', NULL, NULL, 'Active', 'customer', NULL, '2021-10-26 08:06:45', '2021-10-28 01:09:44'),
(4, 'Ravi', 'Mahajan', 'ravi1920', 'ravi1234@gmail.com', NULL, '$2y$10$Avsmqi3SVEX.xPYjzg1Upe8wZhmYKvHusrj6c.Od3vhSO.nsvelsO', NULL, NULL, 'Active', 'customer', NULL, '2021-10-29 07:01:49', '2021-10-29 07:01:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
