-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2023 at 06:31 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjusted_products`
--

CREATE TABLE `adjusted_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjusted_products`
--

INSERT INTO `adjusted_products` (`id`, `adjustment_id`, `product_id`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(2, 1, 8, 2000, 'sub', '2023-06-21 17:06:48', '2023-06-21 17:06:48'),
(3, 2, 22, 1000, 'add', '2023-06-21 17:07:20', '2023-06-21 17:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `date`, `reference`, `note`, `created_at`, `updated_at`) VALUES
(1, '2023-06-08', 'ADJ-00001', NULL, '2023-06-21 17:06:30', '2023-06-21 17:06:48'),
(2, '2023-06-08', 'ADJ-00002', NULL, '2023-06-21 17:07:20', '2023-06-21 17:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_code`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'kump-org', 'organik', '2023-06-21 08:23:52', '2023-06-21 08:23:52'),
(2, 'kump-kert', 'kertas', '2023-06-21 08:24:20', '2023-06-21 08:24:20'),
(3, 'kump-plast', 'plastik', '2023-06-21 08:24:45', '2023-06-21 08:24:45'),
(4, 'kump-elektro', 'barang elektronik', '2023-06-21 08:25:15', '2023-06-21 08:25:15'),
(5, 'kump-kaca', 'kaca', '2023-06-21 08:25:28', '2023-06-21 08:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `code`, `symbol`, `thousand_separator`, `decimal_separator`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'Rupiah Indonesia', 'IDR', 'Rp', '.', ',', NULL, '2023-06-21 08:16:58', '2023-06-21 15:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_phone`, `city`, `country`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cheryl Eveline', 'cheveli@gmail.com', '+6283883002991', 'Jakarta Barat', 'Indonesia', 'Jalan Raya Pondok Randu No 45C, Duri Kosambi, Cengkareng, Jakarta Barat, 11750', '2023-06-21 10:11:23', '2023-06-21 14:27:01'),
(2, 'Azura Ghazwan', 'ghazura@test.com', '+6282112088722', 'Jakarta Utara', 'Indonesia', 'Jl. Danau Agung 10, Sunter Agung, Tanjung Priok, Jakarta Utara, 14350', '2023-06-21 14:20:03', '2023-06-21 14:26:05'),
(3, 'Hariz Moiz', 'harizmo@test.com', '+6285772201166', 'Jakarta Barat', 'Indonesia', 'Jl. Raya Duri Kosambi No 18, Duri Kosambi, Cengkareng, Jakarta Barat, 11750', '2023-06-21 14:20:05', '2023-06-21 14:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\User', 1, '574bec20-38ec-4417-945e-7eb918ddf25c', 'avatars', '1687356181', '1687356181.png', 'image/png', 'public', 'public', 4103, '[]', '[]', '[]', '[]', 1, '2023-06-21 13:03:53', '2023-06-21 13:03:53'),
(9, 'Modules\\Product\\Entities\\Product', 1, '9c773c34-0692-485c-9e76-38c98233db9c', 'images', '1687358166', '1687358166.jpg', 'image/jpeg', 'public', 'public', 81997, '[]', '[]', '{\"thumb\": true}', '[]', 2, '2023-06-21 13:36:19', '2023-06-21 13:36:19'),
(10, 'Modules\\Product\\Entities\\Product', 2, '1bb16846-4b14-4580-a9c5-1788a7163cfe', 'images', '1687358467', '1687358467.jpg', 'image/jpeg', 'public', 'public', 76481, '[]', '[]', '{\"thumb\": true}', '[]', 3, '2023-06-21 13:41:18', '2023-06-21 13:41:18'),
(12, 'Modules\\Product\\Entities\\Product', 4, '774699a3-228c-4f65-abe8-86549509ec81', 'images', '1687361726', '1687361726.jpg', 'image/jpeg', 'public', 'public', 102361, '[]', '[]', '{\"thumb\": true}', '[]', 5, '2023-06-21 14:35:29', '2023-06-21 14:35:29'),
(14, 'Modules\\Product\\Entities\\Product', 3, 'ac0f4b1d-d32f-43b8-b5dc-0da2c38ea054', 'images', '1687363990', '1687363990.jpg', 'image/jpeg', 'public', 'public', 120178, '[]', '[]', '{\"thumb\": true}', '[]', 7, '2023-06-21 15:13:15', '2023-06-21 15:13:16'),
(15, 'Modules\\Product\\Entities\\Product', 5, '212619a5-baec-4a4c-8e63-88a02a7bf74b', 'images', '1687369162', '1687369162.jpg', 'image/jpeg', 'public', 'public', 62783, '[]', '[]', '{\"thumb\": true}', '[]', 8, '2023-06-21 16:39:26', '2023-06-21 16:39:28'),
(16, 'Modules\\Product\\Entities\\Product', 6, '49855726-3a14-4e5f-b935-eae04130380d', 'images', '1687369209', '1687369209.jpg', 'image/jpeg', 'public', 'public', 14059, '[]', '[]', '{\"thumb\": true}', '[]', 9, '2023-06-21 16:40:11', '2023-06-21 16:40:11'),
(18, 'Modules\\Product\\Entities\\Product', 8, '8f0152f8-7200-4b4b-b213-42fc7274d791', 'images', '1687369337', '1687369337.jpg', 'image/jpeg', 'public', 'public', 49735, '[]', '[]', '{\"thumb\": true}', '[]', 11, '2023-06-21 16:42:26', '2023-06-21 16:42:26'),
(19, 'Modules\\Product\\Entities\\Product', 12, 'ff918ac2-f2dc-46cc-b7e2-e0c4a9654127', 'images', '1687369741', '1687369741.jpg', 'image/webp', 'public', 'public', 31882, '[]', '[]', '{\"thumb\": true}', '[]', 12, '2023-06-21 16:49:16', '2023-06-21 16:49:16'),
(20, 'Modules\\Product\\Entities\\Product', 13, 'a7d1e1fa-2e6c-47a5-9ee7-eff1ad2030eb', 'images', '1687369820', '1687369820.jpg', 'image/jpeg', 'public', 'public', 55078, '[]', '[]', '{\"thumb\": true}', '[]', 13, '2023-06-21 16:50:22', '2023-06-21 16:50:23'),
(21, 'Modules\\Product\\Entities\\Product', 14, '1a7a276a-506c-409d-973d-f6e48ce703d5', 'images', '1687369886', '1687369886.jpg', 'image/jpeg', 'public', 'public', 162444, '[]', '[]', '{\"thumb\": true}', '[]', 14, '2023-06-21 16:51:28', '2023-06-21 16:51:28'),
(22, 'Modules\\Product\\Entities\\Product', 15, 'cd75b4ea-2ef4-4aba-8569-7592f143d340', 'images', '1687369933', '1687369933.jpg', 'image/jpeg', 'public', 'public', 61192, '[]', '[]', '{\"thumb\": true}', '[]', 15, '2023-06-21 16:52:14', '2023-06-21 16:52:14'),
(23, 'Modules\\Product\\Entities\\Product', 16, 'e462d05c-c628-46dd-8bcd-c4385d940b8b', 'images', '1687370211', '1687370211.jpg', 'image/jpeg', 'public', 'public', 67966, '[]', '[]', '{\"thumb\": true}', '[]', 16, '2023-06-21 16:56:53', '2023-06-21 16:56:53'),
(24, 'Modules\\Product\\Entities\\Product', 17, '7f8803c9-8506-4599-ad02-add61200e6c0', 'images', '1687370282', '1687370282.jpg', 'image/webp', 'public', 'public', 4338, '[]', '[]', '{\"thumb\": true}', '[]', 17, '2023-06-21 16:58:03', '2023-06-21 16:58:03'),
(25, 'Modules\\Product\\Entities\\Product', 19, '36a1c8e8-0301-4380-a49b-97e36555900a', 'images', '1687370365', '1687370365.jpg', 'image/jpeg', 'public', 'public', 99683, '[]', '[]', '{\"thumb\": true}', '[]', 18, '2023-06-21 16:59:29', '2023-06-21 16:59:29'),
(26, 'Modules\\Product\\Entities\\Product', 20, 'e67709a8-0de5-4636-be0c-332c348d16c7', 'images', '1687370409', '1687370409.jpg', 'image/webp', 'public', 'public', 7552, '[]', '[]', '{\"thumb\": true}', '[]', 19, '2023-06-21 17:00:11', '2023-06-21 17:00:11'),
(27, 'Modules\\Product\\Entities\\Product', 21, '29eea2f6-7c76-4bf4-9b72-a7b736bf4cb8', 'images', '1687370466', '1687370466.jpg', 'image/png', 'public', 'public', 152350, '[]', '[]', '{\"thumb\": true}', '[]', 20, '2023-06-21 17:01:09', '2023-06-21 17:01:09'),
(28, 'Modules\\Product\\Entities\\Product', 22, '0111beba-de1c-48dd-959f-b94cf70d6be0', 'images', '1687370571', '1687370571.jpg', 'image/jpeg', 'public', 'public', 36480, '[]', '[]', '{\"thumb\": true}', '[]', 21, '2023-06-21 17:03:34', '2023-06-21 17:03:35'),
(29, 'Modules\\Product\\Entities\\Product', 11, '3d5d6a43-7969-4d4e-8778-2269f18cac2d', 'images', '1687370670', '1687370670.jpg', 'image/jpeg', 'public', 'public', 66843, '[]', '[]', '{\"thumb\": true}', '[]', 22, '2023-06-21 17:04:33', '2023-06-21 17:04:34'),
(30, 'Modules\\Product\\Entities\\Product', 10, 'f43b7f3e-5798-42b3-9084-b19934e3a86d', 'images', '1687370690', '1687370690.jpg', 'image/webp', 'public', 'public', 19514, '[]', '[]', '{\"thumb\": true}', '[]', 23, '2023-06-21 17:04:51', '2023-06-21 17:04:51'),
(31, 'Modules\\Product\\Entities\\Product', 9, '9f5f7ff7-72f3-40f2-b8d9-30f35af5ed6a', 'images', '1687370711', '1687370711.jpg', 'image/png', 'public', 'public', 395755, '[]', '[]', '{\"thumb\": true}', '[]', 24, '2023-06-21 17:05:12', '2023-06-21 17:05:12');

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
(4, '2021_07_14_145038_create_categories_table', 1),
(5, '2021_07_14_145047_create_products_table', 1),
(6, '2021_07_15_211319_create_media_table', 1),
(7, '2021_07_16_010005_create_uploads_table', 1),
(8, '2021_07_16_220524_create_permission_tables', 1),
(9, '2021_07_22_003941_create_adjustments_table', 1),
(10, '2021_07_22_004043_create_adjusted_products_table', 1),
(11, '2021_07_28_192608_create_expense_categories_table', 1),
(12, '2021_07_28_192616_create_expenses_table', 1),
(13, '2021_07_29_165419_create_customers_table', 1),
(14, '2021_07_29_165440_create_suppliers_table', 1),
(15, '2021_07_31_015923_create_currencies_table', 1),
(16, '2021_07_31_140531_create_settings_table', 1),
(17, '2021_07_31_201003_create_sales_table', 1),
(18, '2021_07_31_212446_create_sale_details_table', 1),
(19, '2021_08_07_192203_create_sale_payments_table', 1),
(20, '2021_08_08_021108_create_purchases_table', 1),
(21, '2021_08_08_021131_create_purchase_payments_table', 1),
(22, '2021_08_08_021713_create_purchase_details_table', 1),
(23, '2021_08_08_175345_create_sale_returns_table', 1),
(24, '2021_08_08_175358_create_sale_return_details_table', 1),
(25, '2021_08_08_175406_create_sale_return_payments_table', 1),
(26, '2021_08_08_222603_create_purchase_returns_table', 1),
(27, '2021_08_08_222612_create_purchase_return_details_table', 1),
(28, '2021_08_08_222646_create_purchase_return_payments_table', 1),
(29, '2021_08_16_015031_create_quotations_table', 1),
(30, '2021_08_16_155013_create_quotation_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit_own_profile', 'web', '2023-06-21 08:16:56', '2023-06-21 08:16:56'),
(2, 'access_user_management', 'web', '2023-06-21 08:16:56', '2023-06-21 08:16:56'),
(3, 'show_total_stats', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(4, 'show_month_overview', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(5, 'show_weekly_sales_purchases', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(6, 'show_monthly_cashflow', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(7, 'show_notifications', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(8, 'access_products', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(9, 'create_products', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(10, 'show_products', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(11, 'edit_products', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(12, 'delete_products', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(13, 'access_product_categories', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(14, 'print_barcodes', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(15, 'access_adjustments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(16, 'create_adjustments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(17, 'show_adjustments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(18, 'edit_adjustments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(19, 'delete_adjustments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(20, 'access_quotations', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(21, 'create_quotations', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(22, 'show_quotations', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(23, 'edit_quotations', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(24, 'delete_quotations', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(25, 'create_quotation_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(26, 'send_quotation_mails', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(27, 'access_expenses', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(28, 'create_expenses', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(29, 'edit_expenses', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(30, 'delete_expenses', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(31, 'access_expense_categories', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(32, 'access_customers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(33, 'create_customers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(34, 'show_customers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(35, 'edit_customers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(36, 'delete_customers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(37, 'access_suppliers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(38, 'create_suppliers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(39, 'show_suppliers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(40, 'edit_suppliers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(41, 'delete_suppliers', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(42, 'access_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(43, 'create_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(44, 'show_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(45, 'edit_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(46, 'delete_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(47, 'create_pos_sales', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(48, 'access_sale_payments', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(49, 'access_sale_returns', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(50, 'create_sale_returns', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(51, 'show_sale_returns', 'web', '2023-06-21 08:16:57', '2023-06-21 08:16:57'),
(52, 'edit_sale_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(53, 'delete_sale_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(54, 'access_sale_return_payments', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(55, 'access_purchases', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(56, 'create_purchases', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(57, 'show_purchases', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(58, 'edit_purchases', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(59, 'delete_purchases', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(60, 'access_purchase_payments', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(61, 'access_purchase_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(62, 'create_purchase_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(63, 'show_purchase_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(64, 'edit_purchase_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(65, 'delete_purchase_returns', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(66, 'access_purchase_return_payments', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(67, 'access_reports', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(68, 'access_currencies', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(69, 'create_currencies', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(70, 'edit_currencies', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(71, 'delete_currencies', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(72, 'access_settings', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_barcode_symbology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_stock_alert` int(11) NOT NULL,
  `product_order_tax` int(11) DEFAULT NULL,
  `product_tax_type` tinyint(4) DEFAULT NULL,
  `product_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_barcode_symbology`, `product_quantity`, `product_cost`, `product_price`, `product_unit`, `product_stock_alert`, `product_order_tax`, `product_tax_type`, `product_note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Minyak Jelantah', 'kump-org-001', 'C128', 100, 350000, 350000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 13:36:19', '2023-06-21 17:22:51'),
(2, 1, 'Sumpit Kayu', 'kump-org-002', 'C128', 102, 300000, 300000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 13:41:18', '2023-06-21 17:20:11'),
(3, 2, 'Koran Bekas', 'kump-kert-001', 'C128', 797, 250000, 250000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 14:32:32', '2023-06-21 17:24:53'),
(4, 2, 'Kertas Buram', 'kump-kert-002', 'C128', 7995, 350000, 350000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 14:35:29', '2023-06-21 17:24:53'),
(5, 2, 'HVS', 'kump-kert-003', 'C128', 7987, 240000, 240000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:39:25', '2023-06-21 17:24:53'),
(6, 2, 'Karton bekas minum', 'kump-kert-004', 'C128', 8000, 140000, 140000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:40:10', '2023-06-21 16:53:20'),
(8, 2, 'Kardus', 'kump-kert-005', 'C128', 5995, 275000, 275000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:42:26', '2023-06-21 17:24:53'),
(9, 3, 'Plastik HDPE', 'kump-plast-001', 'C128', 8000, 260000, 260000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:45:40', '2023-06-21 16:54:28'),
(10, 3, 'PET botol berwarna', 'kump-plast-002', 'C128', 7998, 290000, 290000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:46:53', '2023-06-21 17:15:29'),
(11, 3, 'PET botol', 'kump-plast-003', 'C128', 8003, 360000, 360000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:48:09', '2023-06-21 17:22:51'),
(12, 3, 'Galon Air Mineral', 'kump-plast-004', 'C128', 50, 350000, 350000, 'pcs', 1, 1, NULL, NULL, '2023-06-21 16:49:16', '2023-06-21 16:49:16'),
(13, 3, 'Pipa PVC', 'kump-plast-005', 'C128', 100, 140000, 140000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:50:22', '2023-06-21 16:50:22'),
(14, 3, 'PS Kaca', 'kump-plast-006', 'C128', 505, 300000, 300000, 'pcs', 3, NULL, NULL, NULL, '2023-06-21 16:51:28', '2023-06-21 17:22:51'),
(15, 3, 'PP Gelas', 'kump-plast-007', 'C128', 7997, 400000, 400000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:52:14', '2023-06-21 17:22:51'),
(16, 3, 'Compact Disc (CD) bekas', 'kump-plast-008', 'C128', 997, 300000, 300000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 16:56:53', '2023-06-21 17:24:53'),
(17, 4, 'Mesin Cuci', 'kump-elektro-001', 'C128', 8, 1400000, 1400000, 'unit', 1, NULL, NULL, NULL, '2023-06-21 16:58:03', '2023-06-21 16:58:03'),
(19, 4, 'Kulkas', 'kump-elektro-002', 'C128', 8, 1350000, 1350000, 'unit', 1, NULL, NULL, NULL, '2023-06-21 16:59:29', '2023-06-21 16:59:29'),
(20, 4, 'Televisi', 'kump-elektro-003', 'C128', 8, 1380000, 1380000, 'unit', 1, NULL, NULL, NULL, '2023-06-21 17:00:11', '2023-06-21 17:00:11'),
(21, 5, 'Botol Beling', 'kump-kaca', 'C128', 998, 500000, 500000, 'kg', 1, NULL, NULL, NULL, '2023-06-21 17:01:09', '2023-06-21 17:22:51'),
(22, 5, 'Botol beling berwarna', 'kump-kaca-002', 'C128', 2000, 450000, 450000, 'kg', 1, NULL, NULL, 'Botol beling berwarna yang masih utuh, biasa digunakan untuk botol minuman, saos, kecap, sirup, dan lain-lain', '2023-06-21 17:02:06', '2023-06-21 17:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT '0',
  `tax_amount` int(11) NOT NULL DEFAULT '0',
  `discount_percentage` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `shipping_amount` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `reference`, `supplier_id`, `supplier_name`, `tax_percentage`, `tax_amount`, `discount_percentage`, `discount_amount`, `shipping_amount`, `total_amount`, `paid_amount`, `due_amount`, `status`, `payment_status`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(3, '2023-06-16', 'PR-00002', 2, 'kutor-kelapa-gading', 4, 504000, 0, 0, 2000000, 15104000, 15100000, 4000, 'Completed', 'Partial', 'Bank Transfer', NULL, '2023-06-21 17:11:58', '2023-06-21 17:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `product_name`, `product_code`, `quantity`, `price`, `unit_price`, `sub_total`, `product_discount_amount`, `product_discount_type`, `product_tax_amount`, `created_at`, `updated_at`) VALUES
(7, 3, 14, 'PS Kaca', 'kump-plast-006', 20, 300000, 300000, 6000000, 0, 'fixed', 0, '2023-06-21 17:17:37', '2023-06-21 17:17:37'),
(8, 3, 1, 'Minyak Jelantah', 'kump-org-001', 6, 350000, 350000, 2100000, 0, 'fixed', 0, '2023-06-21 17:17:37', '2023-06-21 17:17:37'),
(9, 3, 2, 'Sumpit Kayu', 'kump-org-002', 3, 300000, 300000, 900000, 0, 'fixed', 0, '2023-06-21 17:17:37', '2023-06-21 17:17:37'),
(10, 3, 11, 'PET botol', 'kump-plast-003', 10, 360000, 360000, 3600000, 0, 'fixed', 0, '2023-06-21 17:17:37', '2023-06-21 17:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_payments`
--

INSERT INTO `purchase_payments` (`id`, `purchase_id`, `amount`, `date`, `reference`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(3, 3, 15100000, '2023-06-08', 'INV/PR-00002', 'Bank Transfer', NULL, '2023-06-21 17:11:58', '2023-06-21 17:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT '0',
  `tax_amount` int(11) NOT NULL DEFAULT '0',
  `discount_percentage` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `shipping_amount` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_returns`
--

INSERT INTO `purchase_returns` (`id`, `date`, `reference`, `supplier_id`, `supplier_name`, `tax_percentage`, `tax_amount`, `discount_percentage`, `discount_amount`, `shipping_amount`, `total_amount`, `paid_amount`, `due_amount`, `status`, `payment_status`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, '2023-06-08', 'PRRN-00001', 3, 'kutor-kumbang-raya', 4, 37600, 0, 0, 2000000, 2977600, 3000000, -22400, 'Completed', 'Paid', 'Cash', NULL, '2023-06-21 17:15:29', '2023-06-21 17:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_details`
--

INSERT INTO `purchase_return_details` (`id`, `purchase_return_id`, `product_id`, `product_name`, `product_code`, `quantity`, `price`, `unit_price`, `sub_total`, `product_discount_amount`, `product_discount_type`, `product_tax_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'PET botol berwarna', 'kump-plast-002', 2, 290000, 290000, 580000, 0, 'fixed', 0, '2023-06-21 17:15:29', '2023-06-21 17:15:29'),
(2, 1, 11, 'PET botol', 'kump-plast-003', 1, 360000, 360000, 360000, 0, 'fixed', 0, '2023-06-21 17:15:29', '2023-06-21 17:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_payments`
--

CREATE TABLE `purchase_return_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_payments`
--

INSERT INTO `purchase_return_payments` (`id`, `purchase_return_id`, `amount`, `date`, `reference`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 3000000, '2023-06-08', 'INV/PRRN-00001', 'Cash', NULL, '2023-06-21 17:15:29', '2023-06-21 17:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT '0',
  `tax_amount` int(11) NOT NULL DEFAULT '0',
  `discount_percentage` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `shipping_amount` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(2, 'Super Admin', 'web', '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(3, 'user', 'web', '2023-06-21 15:43:48', '2023-06-21 15:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(10, 3),
(13, 3),
(14, 3),
(17, 3),
(22, 3),
(29, 3),
(34, 3),
(39, 3),
(51, 3),
(57, 3),
(60, 3),
(63, 3),
(66, 3),
(67, 3),
(68, 3),
(72, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT '0',
  `tax_amount` int(11) NOT NULL DEFAULT '0',
  `discount_percentage` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `shipping_amount` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `reference`, `customer_id`, `customer_name`, `tax_percentage`, `tax_amount`, `discount_percentage`, `discount_amount`, `shipping_amount`, `total_amount`, `paid_amount`, `due_amount`, `status`, `payment_status`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, '2023-06-22', 'SL-00001', 1, 'Cheryl Eveline', 4, 82800, 0, 0, 2000000, 4152800, 4200000, -47200, 'Completed', 'Paid', 'Bank Transfer', NULL, '2023-06-21 17:20:11', '2023-06-21 17:20:11'),
(2, '2023-06-22', 'SL-00002', 2, 'Azura Ghazwan', 4, 396400, 0, 0, 1500000, 11806400, 12000000, -193600, 'Completed', 'Paid', 'Bank Transfer', NULL, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(3, '2023-06-22', 'SL-00003', 3, 'Hariz Moiz', 4, 287000, 0, 0, 1500000, 8962000, 9000000, -38000, 'Completed', 'Paid', 'Cash', NULL, '2023-06-21 17:24:53', '2023-06-21 17:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `product_name`, `product_code`, `quantity`, `price`, `unit_price`, `sub_total`, `product_discount_amount`, `product_discount_type`, `product_tax_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Minyak Jelantah', 'kump-org-001', 3, 350000, 350000, 1050000, 0, 'fixed', 0, '2023-06-21 17:20:11', '2023-06-21 17:20:11'),
(2, 1, 2, 'Sumpit Kayu', 'kump-org-002', 1, 300000, 300000, 300000, 0, 'fixed', 0, '2023-06-21 17:20:11', '2023-06-21 17:20:11'),
(3, 1, 5, 'HVS', 'kump-kert-003', 3, 240000, 240000, 720000, 0, 'fixed', 0, '2023-06-21 17:20:11', '2023-06-21 17:20:11'),
(4, 2, 14, 'PS Kaca', 'kump-plast-006', 15, 300000, 300000, 4500000, 0, 'fixed', 0, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(5, 2, 11, 'PET botol', 'kump-plast-003', 6, 360000, 360000, 2160000, 0, 'fixed', 0, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(6, 2, 15, 'PP Gelas', 'kump-plast-007', 3, 400000, 400000, 1200000, 0, 'fixed', 0, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(7, 2, 1, 'Minyak Jelantah', 'kump-org-001', 3, 350000, 350000, 1050000, 0, 'fixed', 0, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(8, 2, 21, 'Botol Beling', 'kump-kaca', 2, 500000, 500000, 1000000, 0, 'fixed', 0, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(9, 3, 4, 'Kertas Buram', 'kump-kert-002', 5, 350000, 350000, 1750000, 0, 'fixed', 0, '2023-06-21 17:24:53', '2023-06-21 17:24:53'),
(10, 3, 5, 'HVS', 'kump-kert-003', 10, 240000, 240000, 2400000, 0, 'fixed', 0, '2023-06-21 17:24:53', '2023-06-21 17:24:53'),
(11, 3, 8, 'Kardus', 'kump-kert-005', 5, 275000, 275000, 1375000, 0, 'fixed', 0, '2023-06-21 17:24:53', '2023-06-21 17:24:53'),
(12, 3, 3, 'Koran Bekas', 'kump-kert-001', 3, 250000, 250000, 750000, 0, 'fixed', 0, '2023-06-21 17:24:53', '2023-06-21 17:24:53'),
(13, 3, 16, 'Compact Disc (CD) bekas', 'kump-plast-008', 3, 300000, 300000, 900000, 0, 'fixed', 0, '2023-06-21 17:24:53', '2023-06-21 17:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `sale_payments`
--

CREATE TABLE `sale_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_payments`
--

INSERT INTO `sale_payments` (`id`, `sale_id`, `amount`, `date`, `reference`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 4200000, '2023-06-22', 'INV/SL-00001', 'Bank Transfer', NULL, '2023-06-21 17:20:11', '2023-06-21 17:20:11'),
(2, 2, 12000000, '2023-06-22', 'INV/SL-00002', 'Bank Transfer', NULL, '2023-06-21 17:22:51', '2023-06-21 17:22:51'),
(3, 3, 9000000, '2023-06-22', 'INV/SL-00003', 'Cash', NULL, '2023-06-21 17:24:53', '2023-06-21 17:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT '0',
  `tax_amount` int(11) NOT NULL DEFAULT '0',
  `discount_percentage` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `shipping_amount` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_details`
--

CREATE TABLE `sale_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_payments`
--

CREATE TABLE `sale_return_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency_id` int(11) NOT NULL,
  `default_currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `company_email`, `company_phone`, `site_logo`, `default_currency_id`, `default_currency_position`, `notification_email`, `footer_text`, `company_address`, `created_at`, `updated_at`) VALUES
(1, 'Kumpulin', 'kumpulin@test.com', '021 5589 88554', NULL, 1, 'prefix', 'notification@test.com', 'Kumpulin © 2023 || Developed by <strong><a target=\"_blank\" href=\"https://github.com/sarah-adibah\">Sarah Adibah</a></strong>', 'Jakarta, Indonesia', '2023-06-21 08:16:58', '2023-06-21 14:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `supplier_email`, `supplier_phone`, `city`, `country`, `address`, `created_at`, `updated_at`) VALUES
(1, 'kutor-muara', 'sarahadibah83@gmail.com', '+6287842005445', 'Jakarta Timur', 'Indonesia', 'Jl. BB No.27D, Cipinang Muara, Jatinegara, Jakarta Timur, 13420', '2023-06-21 13:52:06', '2023-06-21 14:12:47'),
(2, 'kutor-kelapa-gading', 'kutorgading@test.com', '+6282168890991', 'Jakarta Utara', 'Indonesia', 'Jl. Boulevard Raya, Kelapa Gading Timur, Kelapa Gading, Jakarta Utara, 14240', '2023-06-21 14:11:11', '2023-06-21 14:11:11'),
(3, 'kutor-kumbang-raya', 'kutorkumbangraya@test.com', '021044339', 'Jakarta Barat', 'Indonesia', 'Jl. Kumbang Raya No.25, Pegadungan, Kalideres, Jakarta Barat, 11830', '2023-06-21 14:30:13', '2023-06-21 14:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `folder`, `filename`, `created_at`, `updated_at`) VALUES
(1, '6492c72175caa-1687340833', '1687340833.jpg', '2023-06-21 08:47:13', '2023-06-21 08:47:13'),
(2, '6492c7a4376fd-1687340964', '1687340964.jpg', '2023-06-21 08:49:24', '2023-06-21 08:49:24'),
(3, '64930315d282d-1687356181', '1687356181.png', '2023-06-21 13:03:01', '2023-06-21 13:03:01'),
(4, '649308c8a9fb7-1687357640', '1687357640.png', '2023-06-21 13:27:20', '2023-06-21 13:27:20'),
(5, '649309449eaae-1687357764', '1687357764.png', '2023-06-21 13:29:24', '2023-06-21 13:29:24');

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
  `is_active` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@test.com', NULL, '$2y$10$8uCrk0l8lpWssdqVt/HhgO0tRgL.WOOhi6r3iNGaqxrPwHTo1FC9G', 1, NULL, '2023-06-21 08:16:58', '2023-06-21 08:16:58'),
(2, 'Sarah', 'doublesoba@gmail.com', NULL, '$2y$10$gpgMKn6vcrt5TrF7IWoq5uAoKt/eH1mcylcLl3ttxdymZbOEeLacy', 1, NULL, '2023-06-21 13:27:48', '2023-06-21 13:27:48'),
(3, 'Cheryl', 'cheryl@test.com', NULL, '$2y$10$fIgzpTiB96IvgxRoC8FbJuUoKJjCbQlOTQVXzvmOx.2r3s3N6uMq2', 1, NULL, '2023-06-21 15:44:38', '2023-06-21 15:44:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjusted_products`
--
ALTER TABLE `adjusted_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjusted_products_adjustment_id_foreign` (`adjustment_id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_code_unique` (`category_code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id_foreign` (`category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_payments_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_details_purchase_return_id_foreign` (`purchase_return_id`),
  ADD KEY `purchase_return_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_return_payments`
--
ALTER TABLE `purchase_return_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_payments_purchase_return_id_foreign` (`purchase_return_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_payments_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_returns_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_details_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `sale_return_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `sale_return_payments`
--
ALTER TABLE `sale_return_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_payments_sale_return_id_foreign` (`sale_return_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `adjusted_products`
--
ALTER TABLE `adjusted_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_return_payments`
--
ALTER TABLE `purchase_return_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_payments`
--
ALTER TABLE `sale_return_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjusted_products`
--
ALTER TABLE `adjusted_products`
  ADD CONSTRAINT `adjusted_products_adjustment_id_foreign` FOREIGN KEY (`adjustment_id`) REFERENCES `adjustments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_categories` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD CONSTRAINT `purchase_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD CONSTRAINT `purchase_return_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_return_details_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_return_payments`
--
ALTER TABLE `purchase_return_payments`
  ADD CONSTRAINT `purchase_return_payments_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD CONSTRAINT `sale_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD CONSTRAINT `sale_returns_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD CONSTRAINT `sale_return_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sale_return_details_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_return_payments`
--
ALTER TABLE `sale_return_payments`
  ADD CONSTRAINT `sale_return_payments_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
