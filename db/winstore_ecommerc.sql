-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2025 at 05:27 PM
-- Server version: 8.4.0
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winstore_ecommerc`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kautzer, Kihn and Bednar', 'active', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(2, 'Kohler-Becker', 'inactive', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(3, 'Crooks, Ziemann and Oberbrunner', 'active', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(4, 'Crooks, Upton and Mraz', 'inactive', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(5, 'Koss-Hudson', 'inactive', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(6, 'O\'Hara-Wiza', 'inactive', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(7, 'Parker-Kertzmann', 'active', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(8, 'Zieme and Sons', 'active', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(9, 'Jaskolski-Daugherty', 'active', '2025-02-01 13:39:04', '2025-02-01 13:39:04'),
(10, 'Hauck Group', 'inactive', '2025-02-01 13:39:04', '2025-02-01 13:39:04');

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
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'electronics', 'active', '2025-02-01 06:33:03', '2025-02-01 06:33:03'),
(2, 'jewelery', 'active', '2025-02-01 06:33:03', '2025-02-01 06:33:03'),
(3, 'men\'s clothing', 'active', '2025-02-01 06:33:03', '2025-02-01 06:33:03'),
(4, 'women\'s clothing', 'active', '2025-02-01 06:33:03', '2025-02-01 06:33:03'),
(5, 'Home & Kitchen', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04'),
(6, 'Beauty & Care', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04'),
(7, 'Sports & Outdoors', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04'),
(8, 'Books', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04'),
(9, 'Toys & Games', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04'),
(10, 'Baby Products', 'active', '2025-02-01 06:33:04', '2025-02-01 06:33:04');

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
(4, '2025_02_01_152059_create_product_categories_table', 1),
(5, '2025_02_01_160201_create_personal_access_tokens_table', 1),
(6, '2025_02_01_172111_create_ratings_table', 1),
(7, '2025_02_01_172522_create_products_table', 1),
(8, '2025_02_01_184035_add_brand_id_to_products_table', 1),
(9, '2025_02_01_184148_create_brands_table', 1),
(10, '2025_02_04_053015_add_role_to_users_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(30, 'App\\Models\\User', 2, 'auth_token', '3ca5e6303db3c0c83bc5b7788036ebed8d4bf46df41d4243505e16a3cb801a28', '[\"*\"]', NULL, NULL, '2025-02-04 10:17:23', '2025-02-04 10:17:23'),
(31, 'App\\Models\\User', 3, 'auth_token', '7321bd7279efd57754483c732d1fe38c3996fdf053b910857a18328825368e77', '[\"*\"]', NULL, NULL, '2025-02-04 10:19:54', '2025-02-04 10:19:54'),
(32, 'App\\Models\\User', 4, 'auth_token', '05826fdb6eff8c1f0c7638bee953e4a4b85c318e9ae9e18823bc4645e2d5b806', '[\"*\"]', NULL, NULL, '2025-02-04 10:21:46', '2025-02-04 10:21:46'),
(33, 'App\\Models\\User', 5, 'auth_token', 'e0b50ba87266b6dfc6e0b7994703e5dda23b738152eeef3befbf0c208d368680', '[\"*\"]', NULL, NULL, '2025-02-04 10:25:33', '2025-02-04 10:25:33'),
(34, 'App\\Models\\User', 6, 'auth_token', 'dfd426533afa6e2c325c13fbbc05fd73593a755d41017f7c5db8a66cc50ad7b8', '[\"*\"]', NULL, NULL, '2025-02-04 10:29:16', '2025-02-04 10:29:16'),
(35, 'App\\Models\\User', 7, 'auth_token', 'c06bdb892a5a0bd67b113d8aa24ee23ebbcc9888d9d08f57173e9e6be1a6a669', '[\"*\"]', '2025-02-04 10:33:24', NULL, '2025-02-04 10:33:22', '2025-02-04 10:33:24'),
(36, 'App\\Models\\User', 2, 'auth_token', 'ab48736024162c0051d748d7208260fa14b63d29865c3ab37111e76c16148c20', '[\"*\"]', '2025-02-04 11:13:48', NULL, '2025-02-04 11:13:42', '2025-02-04 11:13:48'),
(38, 'App\\Models\\User', 2, 'auth_token', 'a1b885a3cdd38191e8023f952bcfcdc762cdaed60ef1fa7df32e9a7956323cc1', '[\"*\"]', NULL, NULL, '2025-02-04 11:18:54', '2025-02-04 11:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_sold` int NOT NULL DEFAULT '0',
  `available_stock` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `discount`, `description`, `category_id`, `image`, `already_sold`, `available_stock`, `status`, `created_at`, `updated_at`, `brand_id`) VALUES
(1, 'Et reiciendis rem sed assumenda dicta itaque.', '995.66', '10.46', 'Repellat atque in beatae dolores dolor nemo cum. Laboriosam officia odio nobis sit. Eum eos voluptatem voluptates quas dolore temporibus sunt.', 8, '/storage/products/9mYSH0lXqshtP34bONLtorebxxPGSu43kAMasY5X.jpg', 268, 563, 'active', '2025-02-01 19:40:37', '2025-02-01 21:37:59', 8),
(2, 'Aut dolores ut distinctio aut ipsum.', '181.74', '45.45', 'Ex quo ea beatae sed. Sequi qui sed aut beatae in repellendus doloribus. Iure quae laborum consectetur iure et et. Repellendus est laboriosam quibusdam repellat rerum et.', 8, '/storage/products/snRIzjH8X9lxMKFpN7VDZcHfJJq6iFJlyfuc3zMl.jpg', 356, 517, 'active', '2025-02-01 19:40:37', '2025-02-01 21:38:06', 6),
(3, 'Quidem laboriosam itaque provident eligendi neque rerum.', '682.35', '1.83', 'Fugit iste molestiae neque incidunt dolores explicabo. Libero aliquid sunt non est maxime. Quis reprehenderit alias in perferendis vitae quisquam minima.', 4, '/storage/products/draDraZLjxRq3mlUcQU7sacI6pya9YpJOaVsSt15.jpg', 336, 330, 'active', '2025-02-01 19:40:37', '2025-02-01 21:51:07', 10),
(4, 'Eligendi ab non voluptate nostrum unde consequatur.', '425.62', '40.52', 'Possimus molestiae quia inventore unde sit sit iusto. Molestiae debitis facilis et est. Rerum et repellendus dicta. Facere nihil voluptate doloremque repellendus dignissimos corporis.', 9, '/storage/products/7dKnYvZSCTM7gnFYffwBvr1Je0GgZQZaXLLdMAQ1.png', 58, 668, 'active', '2025-02-01 19:40:37', '2025-02-01 21:03:48', 5),
(5, 'Cupiditate quia maxime nihil unde quia laboriosam ex.', '552.97', '16.57', 'Voluptas molestiae blanditiis sunt sit recusandae omnis non sit. Dolores facere rem sint commodi repellat repellendus numquam aut. Sunt nam voluptas sapiente est in.', 7, 'https://via.placeholder.com/640x480.png/007777?text=reprehenderit', 427, 374, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 6),
(6, 'Dolorem ratione et numquam exercitationem veniam cupiditate eaque perspiciatis.', '734.61', '41.43', 'Aut impedit voluptates tempora aperiam necessitatibus. Consequatur facere deleniti quod ab nostrum aut. Nam deleniti placeat perferendis sunt ipsum. Voluptatem aut occaecati nemo sed.', 10, '/storage/products/8Ald80Qp9Kvg59alELskv7lSxzsix7ZKrfIVqPUn.jpg', 187, 624, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:11', 3),
(7, 'Voluptas deleniti aut temporibus autem quos tenetur veritatis commodi.', '326.52', '42.28', 'Voluptatum magni qui aut beatae sit. Occaecati aut tempora sit reprehenderit vel cumque aut. Ut ut facere sed et. Aperiam perspiciatis tenetur quasi dolor et officiis. Maiores possimus natus qui molestiae.', 5, '/storage/products/Yre7KtVpTEFstuXIakxZFX1lNHzg6AvG9KNkGdVC.jpg', 487, 627, 'active', '2025-02-01 19:40:37', '2025-02-02 01:11:23', 9),
(8, 'Debitis maiores fugit hic provident vitae quis hic aut.', '978.86', '17.07', 'Sit ipsam ea eos id laudantium vel. Voluptatem et eius quis. Cum voluptatibus molestiae sit ad impedit suscipit alias.', 1, '/storage/products/BSQnX4JQWuG6QeUr3l7OJj7b8G8sIgjCNCRs9pA8.jpg', 176, 936, 'active', '2025-02-01 19:40:37', '2025-02-01 22:17:52', 8),
(9, 'Totam voluptas veritatis laudantium sint.', '799.90', '11.99', 'Aut est velit a in quia hic aut. Harum in et nihil aut totam. Qui voluptatem alias aut sit aut temporibus odit. Ipsum tempora et et blanditiis tenetur molestias. Ipsum dolor quia unde rerum.', 5, '/storage/products/eFUl1Q12CC1pRnxeQutIXQ6KL447DwxEYkWdcm2n.jpg', 255, 915, 'active', '2025-02-01 19:40:37', '2025-02-02 01:11:33', 10),
(10, 'Eligendi rerum rerum ut.', '667.75', '17.61', 'Officiis sunt quasi beatae et sit sed consequatur et. Omnis iusto sequi non. Autem nemo officiis harum rerum ab voluptatibus.', 7, 'https://via.placeholder.com/640x480.png/000000?text=nobis', 251, 574, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 8),
(11, 'Voluptatibus minus repellat dolorem sapiente possimus ab.', '190.27', '46.31', 'Et ut sunt eaque voluptatem magnam et. Repudiandae eaque aut aliquid est ipsam excepturi voluptatem. Mollitia et non impedit eligendi. Accusantium autem voluptatem tempora. Qui hic consectetur enim.', 7, 'https://via.placeholder.com/640x480.png/00ccdd?text=iusto', 79, 130, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 2),
(12, 'Libero ut eos quis sit deserunt similique aut et.', '820.11', '48.98', 'Similique quo qui beatae. Ea voluptatem mollitia non cumque.', 4, '/storage/products/9gpUsSFyMWDsozPN1qhCerj8w7cGKxf8MqYm8vKC.jpg', 380, 567, 'active', '2025-02-01 19:40:37', '2025-02-01 21:50:52', 3),
(13, 'Quas a ullam voluptatem.', '183.96', '8.86', 'Quo sunt labore sapiente aut. Aut natus veniam quo dolorem. Quaerat et amet dicta fugit aut. Velit voluptatem odit illum laudantium.', 4, '/storage/products/RPem8KikTqjqFoBl1V6MOuLWFnjYprvV57pGwqFZ.jpg', 419, 155, 'active', '2025-02-01 19:40:37', '2025-02-01 21:51:28', 8),
(14, 'Rem est corporis inventore quam repellat.', '807.98', '28.15', 'Error sequi in nihil voluptate hic voluptas provident. Magni reiciendis in et neque autem hic expedita. Sed enim libero quos est.', 2, '/storage/products/gX76sAGEFma4LUUXb5UjeIkBEO1YUMhr5P33nqb3.jpg', 464, 543, 'active', '2025-02-01 19:40:37', '2025-02-01 21:23:37', 1),
(15, 'Doloribus fugiat ut dicta.', '503.19', '0.16', 'Est voluptatem eos maiores atque mollitia ratione corporis. Autem distinctio iste asperiores neque id dignissimos. Quam officiis earum eum atque quia tempore sed. Et magni corrupti sint cum.', 6, '/storage/products/dSMQjsnISdDAfrFmnhw4RGX0y1B3KIsOgpAjt9v8.jpg', 136, 948, 'active', '2025-02-01 19:40:37', '2025-02-02 02:05:49', 1),
(16, 'Voluptatem at maxime eos qui quidem.', '288.95', '13.62', 'Accusamus quod culpa deleniti optio. Quod nemo et et est sed voluptate est. Consequatur et dicta earum. Minima vitae qui et expedita aut fuga sed facilis.', 10, '/storage/products/AvHinJwB7ws8rQ9A6QNHNJPd1Ar8KZnsFqult7pD.jpg', 56, 76, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:19', 9),
(17, 'Delectus eum quisquam molestias a pariatur aut.', '760.90', '41.52', 'Beatae et expedita aperiam cupiditate aliquam ipsum officia. Impedit architecto odio fugiat ut architecto dolor. Eum quia at minima quia eaque. Minima rerum similique ut suscipit omnis.', 3, '/storage/products/MZvXo5cW82dtIDszsQHkjdXn2ZmhewmvZk6ffHM1.jpg', 180, 608, 'active', '2025-02-01 19:40:37', '2025-02-02 00:54:37', 1),
(18, 'Corrupti qui recusandae consequatur.', '901.40', '25.26', 'Consequatur esse beatae iste ab molestias quis. Ducimus quas nesciunt consequatur inventore maxime. Quos optio aliquid tempore quae reiciendis. Et molestias in harum omnis qui fuga.', 9, 'https://via.placeholder.com/640x480.png/0066dd?text=tempora', 122, 654, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 3),
(19, 'Voluptas qui optio ut dolor aspernatur.', '438.36', '22.91', 'Perspiciatis eligendi quam iste voluptate officiis. Sint rerum maiores eligendi expedita voluptates hic facere. Laudantium odio enim dolores architecto.', 9, 'https://via.placeholder.com/640x480.png/00ff22?text=omnis', 68, 713, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 2),
(20, 'Consectetur enim delectus doloremque illo nobis vitae porro et.', '90.97', '43.08', 'Consectetur eos et impedit rerum omnis. Aut voluptatem recusandae quas ut expedita placeat. Consequuntur praesentium nihil veniam sequi voluptatem est consequatur.', 2, '/storage/products/i35SZMfS8T9yCOSiksISiZpgDSLKShvFMGFXRDT6.jpg', 310, 728, 'active', '2025-02-01 19:40:37', '2025-02-01 21:23:52', 9),
(21, 'Sed autem omnis dolore aliquid.', '813.23', '49.02', 'Earum esse sed culpa reiciendis rerum expedita impedit ea. Accusamus tempore harum repudiandae amet iusto.', 4, '/storage/products/FaA0NT4k5aI1MKvW5yU1xDUhcWz4zZ5aNJHbgfda.jpg', 90, 992, 'active', '2025-02-01 19:40:37', '2025-02-02 02:20:54', 7),
(22, 'Laborum voluptate ad ipsa.', '75.51', '18.17', 'Voluptas laboriosam in omnis quisquam illum. Ad quis officiis saepe minima dolorem quisquam aperiam. Ut voluptas est saepe minima ducimus officia consectetur.', 4, '/storage/products/cwA0BBekvZ6HqaVzz4jHU7dCZwSzofaB8YTt4RRt.jpg', 291, 732, 'active', '2025-02-01 19:40:37', '2025-02-01 21:52:06', 9),
(23, 'Nisi quam harum qui aut accusamus nihil.', '469.37', '6.29', 'Rerum vitae nesciunt quia nulla exercitationem. Eligendi unde animi veniam. Quos iusto et dolore pariatur.', 1, '/storage/products/Dt2qWeDTGQNNtoZw5MYNxJm3PXK5WnHBECeOk5Sd.jpg', 273, 492, 'active', '2025-02-01 19:40:37', '2025-02-01 22:18:03', 9),
(24, 'Quis consequatur qui nihil.', '13.09', '23.06', 'Est ipsa quasi esse omnis aliquam molestiae quo. Veniam harum blanditiis animi quos nostrum in omnis.', 4, '/storage/products/4KCFEA9gNBMD6osJDmrBT3wCB1bj6OQvBz5MI1fi.jpg', 280, 448, 'active', '2025-02-01 19:40:37', '2025-02-01 21:52:17', 4),
(25, 'Reiciendis omnis saepe possimus cupiditate quaerat.', '495.91', '35.95', 'Et qui cupiditate tempora iste in explicabo eligendi doloremque. Autem aut voluptatem atque tempore non ut. Ut modi illo magnam ut sequi et.', 2, '/storage/products/DAvDYd46kBHSr8rSloBufQJGTaPx45OJ3xSo1S6q.jpg', 227, 11, 'active', '2025-02-01 19:40:37', '2025-02-01 21:24:13', 5),
(26, 'Dolores accusantium laboriosam velit est adipisci qui sunt.', '591.79', '20.17', 'Facere ea eaque aut consequatur et vitae. Velit iure qui et. Fuga veniam vel voluptas perferendis reprehenderit.', 6, '/storage/products/R7M3ElXeKSVYOhDCi5KzwDvSK6hCtxsTRmqUbE0U.jpg', 381, 185, 'active', '2025-02-01 19:40:37', '2025-02-02 02:06:28', 9),
(27, 'Voluptas consequuntur rerum dolor nam ut.', '363.23', '19.98', 'Debitis ea dolorem quia autem suscipit quia. Voluptate doloribus autem aut. Sit et amet quo fugiat ea aut ullam. Impedit voluptas sint commodi consectetur nobis.', 9, 'https://via.placeholder.com/640x480.png/009911?text=enim', 450, 605, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 3),
(28, 'Aspernatur aut non laboriosam qui asperiores dolore.', '553.10', '0.44', 'Corporis odit incidunt voluptas. Culpa beatae ad officia illo veniam inventore. Ut beatae enim reprehenderit quia assumenda qui blanditiis.', 8, '/storage/products/wByCQdTZOLoHQhCHXncW3HlZtqsCsH9SI9MFjMuY.jpg', 282, 275, 'active', '2025-02-01 19:40:37', '2025-02-01 21:38:21', 3),
(29, 'Quia consequatur aut dolores corrupti excepturi.', '683.82', '24.82', 'Sit aliquam quia velit est sunt perspiciatis. Amet incidunt facere libero dolores. Suscipit tempora omnis et ea.', 1, '/storage/products/YKhL8tA9tSVmbp1lhumTS0OpkR7LemcNmkYd28Sj.jpg', 341, 553, 'active', '2025-02-01 19:40:37', '2025-02-01 22:18:14', 5),
(30, 'Fuga est ab quod et perferendis.', '993.86', '21.03', 'Tempore consequatur aut omnis molestias error nihil. Temporibus aut deserunt aperiam possimus ipsum sit facere incidunt. Quidem non itaque ut aut. Eos nobis minima autem dolorem.', 6, '/storage/products/68HXlOcIsqYBiU8sOzMo40mAlPbZwflOuj5GIfcL.jpg', 340, 39, 'active', '2025-02-01 19:40:37', '2025-02-02 02:06:36', 9),
(31, 'Et harum molestias maxime autem quae sed nisi.', '744.93', '3.61', 'Perferendis et soluta hic qui. Est rem repellendus est qui consequuntur quidem quibusdam. Et voluptatibus fuga corrupti ex nesciunt. In soluta possimus et sit.', 9, 'https://via.placeholder.com/640x480.png/00cc66?text=facere', 68, 983, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 5),
(32, 'Beatae adipisci vel consequatur voluptatem aliquid id.', '461.20', '1.86', 'Et adipisci et qui dolorem architecto. Ab soluta officia deleniti soluta iusto rerum dolorem. Nostrum id vero ipsa soluta.', 10, '/storage/products/qgH7dkCJzfn1zFQFhJjTPCXwtpT5vcphkGGBWb27.jpg', 315, 281, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:26', 8),
(33, 'Corrupti ea doloribus cupiditate hic nihil maiores.', '438.16', '7.17', 'Et natus sapiente perferendis. Sapiente autem dolorem aut ex sint aut eius. Et illo veritatis tempore deleniti consequatur ullam.', 7, 'https://via.placeholder.com/640x480.png/000088?text=molestias', 220, 159, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 9),
(34, 'Tempora amet eum provident voluptas praesentium soluta dolorum.', '404.81', '26.52', 'Laudantium ducimus est accusantium facilis impedit iure. Minima adipisci repudiandae autem consequatur eum maxime aut. Impedit maxime ullam aliquid modi doloremque aut. Exercitationem est quas occaecati non est.', 7, 'https://via.placeholder.com/640x480.png/00eeaa?text=omnis', 50, 119, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 7),
(35, 'Facere impedit odio soluta aut cum sunt.', '809.28', '37.40', 'Quisquam ab aut sit qui. Quam ab voluptatem occaecati id est voluptas.', 5, '/storage/products/EByCgorLGZBHAx8YfAuvNDoPoEEEJAxHdfxUF9xo.jpg', 3, 348, 'active', '2025-02-01 19:40:37', '2025-02-02 01:09:54', 10),
(36, 'Mollitia est magni eos ut.', '108.92', '19.93', 'Distinctio est autem quia rerum corrupti. Eos et sit blanditiis porro deleniti animi accusamus. Aliquid natus voluptates necessitatibus eos quia reiciendis quaerat.', 10, '/storage/products/0Z7D7j0IEf8dZd0qyabILUSQY5HsjxrZmaCxRA8D.jpg', 283, 412, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:34', 10),
(37, 'Ipsam accusantium eos ad expedita.', '502.83', '4.68', 'Et voluptatibus inventore cumque ratione consequuntur aliquid maiores. Fuga dolores unde atque. Aut in excepturi nihil dolor porro exercitationem.', 8, '/storage/products/6ueduQtzfZLmG0u3A1BuBkr9x9S78bDcZADX5fzb.jpg', 285, 304, 'active', '2025-02-01 19:40:37', '2025-02-01 21:38:32', 5),
(38, 'Voluptate est veniam aliquam.', '316.28', '6.50', 'Deserunt at sit distinctio est alias odio assumenda. Et rerum sit odit enim veniam.', 7, 'https://via.placeholder.com/640x480.png/000077?text=enim', 334, 281, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 7),
(39, 'Molestias illum atque magnam odio aut et.', '29.38', '2.01', 'Sint et eum laborum. Saepe asperiores explicabo ut ut sed quia nihil. Sit quia eum asperiores quibusdam iusto porro. Sed aliquid molestiae similique veritatis neque itaque laudantium tenetur.', 5, '/storage/products/X1qex2nGh0IxvMmNPdExowb649jzqVQE1qjjIjux.jpg', 419, 519, 'active', '2025-02-01 19:40:37', '2025-02-02 01:10:02', 9),
(40, 'Laborum minus animi atque deleniti enim voluptate in eos.', '561.82', '49.00', 'Reprehenderit molestiae perspiciatis culpa commodi hic eius. Temporibus quam quaerat molestias quisquam modi et. Alias velit sapiente consequuntur cumque.', 6, '/storage/products/XyzTMJquziOYPBATvaJgaXE0TZ1ldFB38MiZsvAI.jpg', 354, 929, 'active', '2025-02-01 19:40:37', '2025-02-02 02:06:47', 10),
(41, 'Ipsa adipisci ratione ut similique suscipit.', '164.99', '10.23', 'Nostrum voluptates dolorum atque fuga esse. Earum mollitia aut eos veritatis facilis sit. Aliquam ipsa quia in sunt qui magnam officia.', 10, '/storage/products/wyctuJhfEevEr6B37OTutzEAVH6Wwj1vwh2gxbiM.jpg', 490, 523, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:43', 10),
(42, 'Autem rerum sit nisi id eligendi sit sit doloribus.', '612.22', '47.78', 'Eum minima sequi porro ut officiis. Molestiae amet commodi similique. Repudiandae qui ea minima totam enim nisi. Neque quis voluptatem harum quo.', 2, '/storage/products/wVRyEluBpNt68jvorrSz8Fv425iUAzlfs9RBZdMs.jpg', 391, 405, 'active', '2025-02-01 19:40:37', '2025-02-01 21:24:34', 8),
(43, 'Soluta tempora error eius quaerat nobis nesciunt.', '291.34', '13.59', 'A enim rerum architecto molestiae. Pariatur et vero nihil minima voluptate velit. Vel amet natus quia voluptates.', 10, '/storage/products/uX7waoxPWVQWh6y6WyrMEUnniIJqVPTc04BTPOyu.jpg', 450, 492, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:51', 7),
(44, 'Placeat minus impedit veritatis omnis.', '626.28', '29.57', 'Totam eligendi quasi sapiente non. Aut nostrum quaerat at accusamus. Est eius et nesciunt incidunt quia blanditiis. Impedit cupiditate sit eius.', 2, '/storage/products/HQ3lK7XXhsmcURF1OzgVmp3ul4vEhoIxeIMTOWp6.jpg', 99, 542, 'active', '2025-02-01 19:40:37', '2025-02-01 21:27:22', 1),
(45, 'Id quo eos explicabo id eveniet aut sed.', '787.23', '12.33', 'Sapiente rerum voluptatibus autem. Inventore expedita aliquid quia beatae quo aliquid eligendi molestiae. Libero maiores doloribus et debitis nostrum quod assumenda.', 4, '/storage/products/wT9A552cggGPZTZFwQ4TqCFJGoPrrdA9ebV1K7RR.jpg', 238, 70, 'active', '2025-02-01 19:40:37', '2025-02-01 21:52:31', 3),
(46, 'Velit reiciendis sint veniam autem tenetur dolores.', '838.03', '42.40', 'Praesentium consectetur natus neque libero sequi vitae. Libero facilis totam magni illum. Et quia placeat atque deleniti consectetur blanditiis illo sed. Alias enim aperiam sed eum.', 4, '/storage/products/HfUXwGfXHVXtuLcZLNHa5aYB3DBm9QInwu1zV4Gk.jpg', 332, 140, 'active', '2025-02-01 19:40:37', '2025-02-01 21:52:49', 1),
(47, 'Aut tenetur eos quaerat.', '538.79', '44.77', 'Earum nostrum quam facere vero culpa hic ut. Dolores mollitia iste quia voluptatum doloribus ut totam. Porro consequatur laborum tenetur beatae impedit quia aut.', 10, '/storage/products/iGgn9Sf1ZHTRGnZamLy7avviLg6zpmhb9QJhhfvV.jpg', 35, 306, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:59', 4),
(48, 'Ipsam beatae quo quos quia sequi laudantium.', '119.93', '47.55', 'Nesciunt est asperiores vel officiis illo. Id quod dignissimos corrupti minima corrupti. Et dolores exercitationem unde et quo quod ipsam.', 10, '/storage/products/llKvFjTclipeIo69GrxJGufwbgXPH87uIeo8JhzC.jpg', 89, 178, 'active', '2025-02-01 19:40:37', '2025-02-02 02:15:10', 2),
(49, 'Aut eum nostrum ut dolor voluptates qui.', '788.14', '31.31', 'Ut et sit quas aliquid dolores earum dolor est. Qui non adipisci reprehenderit qui est. Velit assumenda dignissimos iure omnis ex minus dolorum.', 8, '/storage/products/yMJrh76JYeOAdJ8Mhvplwfeq9qLF0rYhAllBlfZn.jpg', 33, 624, 'active', '2025-02-01 19:40:37', '2025-02-01 21:38:42', 10),
(50, 'Qui dicta iste officiis vitae.', '432.49', '8.36', 'Sint molestias dolores magni voluptates natus optio fugiat voluptas. Architecto eum esse provident dolor. Inventore quod nobis beatae ex omnis itaque facilis.', 5, '/storage/products/CRfBXegusYvd98Zsfh5UYMuwz4ITgTCsivZL8GwS.jpg', 333, 908, 'active', '2025-02-01 19:40:37', '2025-02-02 01:10:12', 7),
(51, 'Quia occaecati ut voluptate inventore ea itaque numquam.', '731.92', '31.10', 'Sit harum deserunt dicta libero. In repudiandae fugiat veritatis dolorem tenetur similique exercitationem. Porro ipsa officia distinctio quam perferendis.', 10, '/storage/products/z4GuVWijO9Dx3ajo4BFV6k2esE2eplBaePyP6LXO.jpg', 231, 100, 'active', '2025-02-01 19:40:37', '2025-02-02 01:10:31', 5),
(52, 'Sunt repellat a a nobis consectetur sed animi.', '884.19', '4.95', 'Doloremque consequuntur sequi in exercitationem suscipit voluptates. Explicabo qui reiciendis odio dolores quia.', 5, '/storage/products/8VjJwuNsiJbKmlZGm4JAHDg433NhTrwV2nlVXw3a.jpg', 491, 317, 'active', '2025-02-01 19:40:37', '2025-02-02 01:12:00', 6),
(53, 'Ipsam molestias corrupti adipisci sed.', '652.30', '22.80', 'Omnis excepturi maxime sunt itaque nisi fugit. Voluptas ut quidem officia repellat eaque ipsa distinctio. Nam maiores maiores alias provident at doloremque velit. Ducimus dolores suscipit nesciunt officia illum necessitatibus dolorem.', 10, '/storage/products/3iEhOkgX44bEqb5ZImMivlgMmgRImzUlDBZvYztP.jpg', 455, 631, 'active', '2025-02-01 19:40:37', '2025-02-02 02:17:24', 9),
(54, 'Impedit accusantium omnis at consequatur sequi eos autem et.', '604.29', '2.57', 'Maxime vitae atque earum. Sed fuga et itaque aut magnam ipsam. Est harum ut id deserunt recusandae quisquam. Sunt inventore laudantium nobis quam.', 8, '/storage/products/LVarVYEt0UGHaDBfUG65GVTM0PibNVRJwpTMZqJx.jpg', 92, 578, 'active', '2025-02-01 19:40:37', '2025-02-01 21:38:50', 6),
(55, 'Sit doloremque sit atque quas architecto.', '889.37', '31.93', 'Unde tempore aliquid incidunt non molestiae aperiam quo. Aperiam error velit labore omnis consequuntur. Error error ad saepe. Magni mollitia ab tempora corrupti accusantium deleniti in.', 6, '/storage/products/3MCgjB1y8PJq75YCiWctW9TNhPzTRy61xGIDqgW6.jpg', 411, 387, 'active', '2025-02-01 19:40:37', '2025-02-02 02:06:55', 1),
(56, 'Dolorem et voluptate ea aliquam in harum doloremque veritatis.', '685.23', '15.51', 'Qui et est inventore. Aut qui nostrum id itaque. Facere nulla quia aut at harum eaque.', 8, '/storage/products/5AHLocFAPfF9Vi4WT6vM7NL1DAiI1K1vzgKtmn4U.jpg', 399, 17, 'active', '2025-02-01 19:40:37', '2025-02-01 21:39:02', 10),
(57, 'Rerum eum quia aut dicta debitis ut.', '276.37', '18.33', 'Necessitatibus ut mollitia enim voluptate exercitationem facilis illo. Voluptatibus vero nesciunt qui rerum quod excepturi. Eius ea labore magnam magnam.', 10, '/storage/products/a2dvk0BjOXprkTJrgn1OBnxtEmfNWl94VcNRMXrL.jpg', 487, 899, 'active', '2025-02-01 19:40:37', '2025-02-02 02:17:36', 1),
(58, 'Magnam consectetur et non doloremque id reiciendis quisquam.', '499.02', '49.68', 'Voluptates ut autem vel odit qui vel illo voluptatem. Quaerat minus repudiandae sequi saepe. Sed aliquid expedita natus quis qui.', 7, 'https://via.placeholder.com/640x480.png/00ddee?text=autem', 12, 215, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 4),
(59, 'Aut temporibus sequi voluptatem aut rem quis.', '738.99', '25.99', 'Debitis et nobis commodi delectus et numquam maiores. Fuga rerum ut est praesentium. Possimus sed sed esse aliquid molestiae voluptate.', 7, 'https://via.placeholder.com/640x480.png/000000?text=quae', 235, 283, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 1),
(60, 'A et ipsa perferendis deserunt saepe est.', '310.12', '1.15', 'Quaerat rerum tenetur cumque qui cum quaerat praesentium enim. Ullam voluptas culpa id accusamus reiciendis omnis. Quibusdam id accusamus consectetur totam accusantium unde praesentium. Nihil numquam consequatur quam.', 10, '/storage/products/0sAMbgi1p4hV3OU1PAK6tVIYjnvK4XT037WVbCad.jpg', 245, 771, 'active', '2025-02-01 19:40:37', '2025-02-02 02:17:46', 10),
(61, 'Iusto nisi et sed nihil quo sint.', '752.62', '29.35', 'Magnam vel consectetur molestiae. Dolores et commodi aliquam odit provident ut nisi. Illo molestiae molestias quae et id et. Impedit eius omnis aut molestiae vel et atque. Dolore ex aspernatur nisi eum delectus.', 4, '/storage/products/tTpvW4wpnYi9qLC02rtA3d1k37pFJFsqpCaTa074.jpg', 235, 126, 'active', '2025-02-01 19:40:37', '2025-02-01 21:53:01', 4),
(62, 'Vero est deserunt culpa.', '430.95', '21.51', 'Qui velit perspiciatis dolor non optio. Non unde quis quas possimus cumque. Itaque corporis voluptatibus ad. Ut molestiae incidunt nesciunt sunt amet enim ut. Possimus perferendis rerum ex minima mollitia accusamus et.', 4, '/storage/products/2pZoATJgW0kTb1Rx0ykLmAmJ5Vuk0pYlRdSuVxdD.jpg', 223, 251, 'active', '2025-02-01 19:40:37', '2025-02-01 21:53:10', 2),
(63, 'Ut officiis occaecati corrupti a omnis.', '238.27', '33.43', 'Et dolor enim est et et sunt tempore. Sit corporis velit qui placeat atque optio natus fuga. Voluptatem veritatis accusantium aliquid.', 2, '/storage/products/D224Hgcfy6EhmdYaxrRyQuuKZUz7Xc4Cr0W98EXT.jpg', 15, 575, 'active', '2025-02-01 19:40:37', '2025-02-01 21:27:30', 8),
(64, 'Cumque reprehenderit deleniti aliquid reiciendis laudantium.', '778.35', '22.29', 'Cum nam est rem vero nisi. Sed explicabo aut et ex. Ut deleniti qui est numquam. Quo consectetur in velit id officiis. Dolores dolorem dignissimos non blanditiis iusto at.', 3, '/storage/products/lKLn1iiUScXhdPa8n1opSYmqylBsUEo2WbumtEJF.jpg', 2, 424, 'active', '2025-02-01 19:40:37', '2025-02-02 00:54:55', 6),
(65, 'Occaecati aperiam beatae eligendi enim.', '461.05', '7.22', 'Consequatur iure odio non hic ipsum. Id omnis dolores est consequatur commodi. Quia sed earum dolorem voluptate quis quae animi natus. Sint hic laboriosam dolor doloribus.', 10, '/storage/products/a6Xy8WHEzzUEYVQR8xfCpLDRIyjW68lRjRPje2Zr.jpg', 302, 66, 'active', '2025-02-01 19:40:37', '2025-02-02 02:17:54', 6),
(66, 'Repudiandae illo minima beatae qui qui doloremque.', '443.81', '19.18', 'Tempore animi iusto qui saepe non optio voluptatem enim. Sint consequatur qui non. Velit suscipit dolores aliquid laudantium.', 7, 'https://via.placeholder.com/640x480.png/006699?text=non', 169, 737, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 1),
(67, 'Doloribus minus maiores aut tenetur libero sed.', '836.85', '2.69', 'Hic autem dolores a suscipit. Molestias nihil consequuntur ad et sunt ipsa neque error. Sit amet qui voluptatibus est.', 4, '/storage/products/4RwZzSQQYiyZ5HLAFGu7cRr0tbdwMzazNclN9Uqs.jpg', 1, 45, 'active', '2025-02-01 19:40:37', '2025-02-01 21:53:30', 5),
(68, 'Ratione dolorem delectus dolores quia illum.', '549.18', '4.08', 'In sit explicabo fugit aspernatur qui quae. Sit dolorem quae molestiae tenetur enim qui et. Esse impedit qui dolores autem.', 4, '/storage/products/Kgg9oYrfqmJx2uSFmaTeaPPYlamLxRC5X4iVFAPl.jpg', 354, 237, 'active', '2025-02-01 19:40:37', '2025-02-01 21:53:40', 3),
(69, 'Eum qui accusantium in expedita.', '875.32', '4.33', 'Esse et odio et consequuntur molestias dolores. Neque ipsam exercitationem ratione quis magnam ex. Praesentium rerum recusandae odio.', 2, '/storage/products/v0i8e5DHBKPUgULdngA0NFRccLJ7rKMpRsjoUZTZ.jpg', 251, 768, 'active', '2025-02-01 19:40:37', '2025-02-01 21:28:20', 10),
(70, 'Quis at doloribus amet expedita.', '729.66', '24.25', 'Odio eaque enim facere. Deserunt at numquam et voluptas enim dolores rerum id. Corporis inventore ducimus qui similique sunt fugit qui. Voluptas quibusdam occaecati enim possimus ea. Ipsam expedita ullam fugiat unde ducimus.', 1, '/storage/products/7laInKaNdHa6DpfM8dbtcfgv0CbhLYCAzO3t67jw.jpg', 428, 674, 'active', '2025-02-01 19:40:37', '2025-02-01 22:18:24', 9),
(71, 'Dignissimos non accusamus reiciendis est enim inventore enim.', '566.85', '22.78', 'Nesciunt voluptate omnis mollitia temporibus. Minima sed qui reiciendis eius et. Et perspiciatis suscipit rerum aperiam et omnis aut.', 5, '/storage/products/TCt06JuMVX5NMsK1OMlZJCk61OTBrMdcGjkDn71J.jpg', 157, 632, 'active', '2025-02-01 19:40:37', '2025-02-02 01:10:41', 5),
(72, 'Perferendis et voluptas inventore temporibus dolorum rerum repellat.', '993.84', '45.51', 'Laborum commodi distinctio fugiat in iste veniam. Provident quasi quia cum nihil ut voluptate vel non. Qui voluptatibus totam fuga commodi quibusdam aut.', 9, 'https://via.placeholder.com/640x480.png/00aacc?text=soluta', 159, 328, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 9),
(73, 'Eligendi et laudantium non asperiores voluptatum porro.', '188.79', '14.80', 'Quia vero et blanditiis. Neque animi qui sed praesentium. Sed ea fuga nemo doloribus. Placeat at delectus et qui.', 2, '/storage/products/cRIn0ZgyS3nSgqvcqDaxvuT1RYZuRuu44YnvD5Jf.jpg', 41, 730, 'active', '2025-02-01 19:40:37', '2025-02-01 21:28:48', 5),
(74, 'Nisi unde impedit modi beatae consequuntur ut praesentium.', '56.75', '48.22', 'Non ratione voluptas debitis distinctio. Expedita rerum veritatis aut aut aliquam qui minus. Sed aut aliquam non id consequatur. Aut doloribus quis sunt et. Ut est hic quia atque ut explicabo.', 1, '/storage/products/LTwYDJDOCALhBRJQhpFIjLvLzfPOYbQR7ISFRn3v.jpg', 9, 866, 'active', '2025-02-01 19:40:37', '2025-02-01 22:18:35', 1),
(75, 'Laudantium qui incidunt aspernatur minus optio aspernatur.', '596.20', '38.87', 'Velit et voluptas sed nam sint aliquam consequatur. Dolor magni voluptas iusto veritatis aut est. Sint voluptatibus aperiam repudiandae eum sit. Dolor repudiandae rerum alias et esse.', 8, '/storage/products/Ox0VCOGVFs1yNAUUpA7lqQyc6BEoG4odqVA5zS1Z.jpg', 372, 160, 'active', '2025-02-01 19:40:37', '2025-02-01 21:39:12', 1),
(76, 'Pariatur natus laboriosam cupiditate aperiam qui ab.', '201.05', '19.78', 'Fugit nesciunt sequi amet distinctio. Omnis consequatur et repellat eius.', 9, 'https://via.placeholder.com/640x480.png/0055cc?text=quidem', 268, 745, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 7),
(77, 'Quaerat tempore facilis exercitationem illum eligendi reprehenderit autem.', '707.96', '18.85', 'Eum debitis assumenda eligendi praesentium. Nihil a aliquid tempora velit voluptatum sed nulla. Hic vel numquam debitis est. Voluptatum similique qui sed illum qui.', 4, '/storage/products/QJoOBzrkbpIMj7PuXZ2oz0EuqKR5fnkqeFgA27Cu.jpg', 493, 559, 'active', '2025-02-01 19:40:37', '2025-02-01 21:53:58', 2),
(78, 'Veniam quaerat saepe ut harum id.', '898.24', '30.08', 'Voluptatem atque eos maiores. Vel nulla impedit dicta nulla maxime soluta. Consequuntur impedit ipsam libero quis sit molestiae labore.', 1, '/storage/products/VxOKtncJLJNNditJa1BNQkAV3tbJvsTlJP78PIRv.jpg', 430, 178, 'active', '2025-02-01 19:40:37', '2025-02-01 22:19:17', 1),
(79, 'Sapiente quos odio itaque inventore voluptas accusamus.', '144.29', '26.74', 'Sed tenetur perspiciatis ut rem laboriosam explicabo. Velit qui est modi reprehenderit. Omnis impedit odio dolor sint laboriosam. Quos dolores harum doloremque.', 4, '/storage/products/bO3PRNPClcJ5GALwNHrA7FOfiFPdVGajhINqKvh3.jpg', 257, 529, 'active', '2025-02-01 19:40:37', '2025-02-01 21:54:18', 3),
(80, 'Qui rem recusandae doloribus assumenda.', '523.45', '40.77', 'Fuga nam quia eos natus facilis rerum. Veniam a non repudiandae impedit. Excepturi voluptas itaque voluptas laborum nihil ratione.', 4, '/storage/products/D17JBYONXnCquAYj9w7zNtTtKAZ1t3ykA6f8t3pW.jpg', 215, 286, 'active', '2025-02-01 19:40:37', '2025-02-01 21:54:33', 5),
(81, 'Distinctio dolor et aut dolorem qui illo.', '552.34', '28.00', 'Asperiores porro quisquam modi ad perspiciatis ex cum. Error natus porro officiis quam. Pariatur nihil eum rem eum nulla aliquid. Quibusdam consectetur rerum ea rerum qui asperiores.', 9, 'https://via.placeholder.com/640x480.png/00ee22?text=iusto', 324, 836, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 8),
(82, 'Vel eum modi iure aut assumenda.', '271.90', '30.76', 'Vel voluptatem tenetur quas quis iusto. Magnam sint ex accusamus consequatur. Eos expedita corrupti quia excepturi.', 10, '/storage/products/yIVAM4RGR0NASsOhxuRwDucLbCNoD4RsLqDoUzs1.jpg', 256, 37, 'active', '2025-02-01 19:40:37', '2025-02-02 02:18:07', 7),
(83, 'Eum harum consequatur nesciunt maiores nostrum.', '580.38', '28.80', 'Esse excepturi ut et et ut laudantium. Rerum ea distinctio voluptatum nostrum voluptas ducimus alias. Laborum eum possimus delectus.', 3, '/storage/products/ZqQwTBYoPaAj2k3YAb2sZs8KkpWjYQ88xxVIuAmf.jpg', 390, 542, 'active', '2025-02-01 19:40:37', '2025-02-02 00:58:06', 6),
(84, 'Facere repellendus totam sunt similique cum.', '122.22', '27.39', 'Explicabo quia quia deserunt quos voluptatem et laborum. Maxime dolores dolor velit voluptatem sequi sed distinctio tempore. Architecto non iste unde.', 7, 'https://via.placeholder.com/640x480.png/006688?text=voluptate', 362, 333, 'active', '2025-02-01 19:40:37', '2025-02-01 19:40:37', 2),
(85, 'Voluptatem consequuntur commodi nobis exercitationem quae ipsum.', '64.78', '7.29', 'Voluptatum natus veniam deserunt consequatur nesciunt voluptas. Iusto autem qui animi eaque. Aspernatur a est consequuntur ut aliquid.', 10, '/storage/products/VfL8Y0TQffeHcYr4gnRhmnplyFwUScZPsgI5YVsu.jpg', 418, 318, 'active', '2025-02-01 19:40:37', '2025-02-02 02:18:19', 9),
(86, 'Iste cupiditate rerum nisi at.', '517.59', '44.04', 'Dolorem doloremque necessitatibus recusandae reprehenderit ut. Sint ut maiores vitae veniam. Quo et cupiditate facilis. Omnis reprehenderit ad voluptates nihil voluptate.', 8, '/storage/products/3SIWE6eW39sbJQwu7ZzFYfEtJO85cfYvEqbYfYUQ.jpg', 153, 654, 'active', '2025-02-01 19:40:37', '2025-02-01 21:39:25', 7),
(87, 'Sequi aut ut nisi ut.', '608.71', '28.24', 'Consectetur eum accusamus voluptatem et. Cupiditate eius placeat iure soluta corrupti. Sunt enim et illo veniam maxime unde quia.', 2, '/storage/products/6CABG68FuhrNdQ7YKt2SIE9vycrCpyGLmUFaTeqI.jpg', 370, 308, 'active', '2025-02-01 19:40:37', '2025-02-01 21:30:10', 4),
(88, 'Veritatis error dolorem dolorem ad aspernatur ea hic.', '404.37', '23.60', 'Ut dolores commodi vitae qui. Laboriosam doloribus tempore qui eum id aspernatur laborum. Aspernatur omnis sed aut ex amet commodi est. Ducimus recusandae qui nostrum sit repellendus non reprehenderit.', 5, '/storage/products/NibigyBpSkwhJkoP77X89Zi7YpFha9PeOmg2LGgM.jpg', 467, 79, 'active', '2025-02-01 19:40:37', '2025-02-02 01:10:52', 2),
(89, 'Rerum adipisci autem corrupti enim sit.', '572.44', '11.25', 'Facere unde cupiditate alias iure dolorem. Molestiae consequatur sed veniam quo. Illo sed sint eos omnis. Sint dicta ratione porro fugit exercitationem ullam dicta explicabo.', 6, '/storage/products/SYVEzNrz20VvM1T8cQirZEP5cCLXbhABsyrxpWJf.jpg', 415, 947, 'active', '2025-02-01 19:40:37', '2025-02-02 02:07:03', 4),
(90, 'Et aut eligendi est.', '245.38', '7.60', 'Maiores odio sit qui nihil dolorem ad commodi at. Impedit debitis voluptatem nobis voluptatem. Vitae est qui mollitia quisquam temporibus nostrum. Dolor porro et qui doloremque quia dignissimos. Dolor veniam cupiditate dolor nostrum ullam.', 1, '/storage/products/wBxJPp8X66VpNp264wFFkgVCzrhPCisCBmcWRiKY.jpg', 374, 276, 'active', '2025-02-01 19:40:37', '2025-02-01 22:19:27', 9),
(91, 'Explicabo velit reprehenderit est et quasi iusto earum.', '569.08', '1.41', 'Cumque quo ab rerum rerum quis illum sapiente. Neque odio eos ipsum. Ut corporis voluptatum aut.', 5, '/storage/products/SltKxlzLeIlPvityCFKrTU0yvADHt1WFH0Olk7Yv.jpg', 413, 95, 'active', '2025-02-01 19:40:37', '2025-02-02 01:11:03', 9),
(92, 'Dolorem rem ipsam fugiat odit consectetur.', '273.37', '37.06', 'Et quo veritatis qui dolore sed possimus molestiae. Molestiae animi aut doloribus. Esse dolorum laboriosam quisquam nihil. Impedit illum ipsa voluptas occaecati cupiditate numquam quasi. Dolor cum voluptatem ipsam qui est.', 4, '/storage/products/cdGpoOfAbLKmKzWTl7LhYgImcVWWEhNzJkzda4iD.jpg', 78, 93, 'active', '2025-02-01 19:40:37', '2025-02-01 21:54:46', 1),
(93, 'Eum dolorem et et similique quis quia.', '695.22', '49.11', 'Aliquid praesentium nesciunt consequuntur sed. Quia ex voluptatem id sequi sed. Nulla est et sit et aut non magnam. Praesentium nihil suscipit voluptatem quisquam numquam veritatis.', 6, '/storage/products/BY1FbJwjTeC7seyYYigPNegzuq3lzHpTeZra03cy.jpg', 223, 397, 'active', '2025-02-01 19:40:37', '2025-02-02 02:07:12', 5),
(94, 'Expedita aut esse omnis deleniti quam.', '654.05', '20.38', 'Ab magnam vitae quo totam cum amet. Non harum nihil voluptatem mollitia rerum commodi accusantium. Sunt sint quia aspernatur eligendi ut. Aut in doloribus nemo occaecati porro et esse.', 1, '/storage/products/sggeHOpkoHcjzHQugdddZMZXHercL1jgrHqUWtdp.jpg', 74, 152, 'active', '2025-02-01 19:40:37', '2025-02-01 22:19:38', 4),
(95, 'Rerum sequi eligendi unde dolores aut eos.', '228.02', '2.23', 'Quibusdam voluptatem et magnam dolor beatae nostrum et quo. Cum dicta quae nihil et reprehenderit et blanditiis mollitia. Quos laboriosam nostrum qui qui qui totam suscipit iusto. Et corrupti nesciunt dolor voluptas et.', 1, '/storage/products/60aIOKc76aA8rEYVmWVMRsI3Fd8OPKZlKTlTFaRF.jpg', 307, 815, 'active', '2025-02-01 19:40:37', '2025-02-01 22:20:28', 6),
(96, 'Occaecati expedita aliquam illo eaque harum omnis.', '473.04', '40.55', 'Ut sequi doloribus in cumque est dolore. Aut odio doloremque minus. Eum quis dignissimos atque est.', 10, '/storage/products/sfFnIhd9jA027C2Wsn8EGHL94YEi4FmWO8fEipMv.jpg', 329, 331, 'active', '2025-02-01 19:40:37', '2025-02-02 02:14:01', 10),
(97, 'Odio possimus cum a velit.', '311.37', '32.12', 'Inventore nemo asperiores vel quas qui unde. Cum libero debitis libero et eius labore et animi. Vero adipisci voluptas optio non nulla aut sit sed.', 7, '/storage/products/MnM9TyX43ed3wQwf6IL3lQN4e7AvXlFp3oNG4xLD.jpg', 297, 936, 'active', '2025-02-01 19:40:37', '2025-02-02 10:35:20', 3),
(98, 'Consectetur aut repellat nemo libero.', '219.94', '15.01', 'Quasi corrupti non dignissimos ex. Voluptatem quis magni aliquid praesentium ratione. Quidem quasi similique enim rerum qui iusto corporis.', 5, '/storage/products/ACWbKVc1Jp9TlmdR5YRQmDSoMuT9uzXStPZiBfyr.jpg', 444, 573, 'active', '2025-02-01 19:40:37', '2025-02-02 01:11:12', 1),
(99, 'Occaecati tempore earum voluptas voluptas.', '955.04', '18.56', 'Nam labore sed maxime saepe commodi laboriosam nihil. Corporis explicabo reprehenderit rem accusamus omnis. Ut temporibus ex molestiae et illum.', 2, '/storage/products/pZRaRu5g3LTVGTVsBYwSuFwcYUMmHrWusbzMkAvA.jpg', 418, 133, 'active', '2025-02-01 19:40:37', '2025-02-01 21:30:18', 4),
(100, 'Possimus minus accusamus ad aut iure.', '195.74', '40.39', 'Vitae eos nihil dolorem tenetur voluptatem. Tenetur modi blanditiis aperiam corporis dignissimos voluptate accusamus. Minus fugit perferendis at totam voluptate.', 8, '/storage/products/XxFba11HpvRIglsNORrFzlKSQcNh05kw8mfhhO4D.jpg', 126, 897, 'active', '2025-02-01 19:40:37', '2025-02-01 21:39:35', 8);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `rate` decimal(3,2) NOT NULL,
  `count` int NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `rate`, `count`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 108, '4.70', 211, 'Dolore provident accusantium ut neque.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(2, 5, '3.40', 437, 'Optio fugit ut minus asperiores tempore tempora.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(3, 84, '1.20', 1, 'Qui quia perferendis sunt molestiae magni.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(4, 100, '4.30', 129, 'Veritatis maxime et cumque est ducimus.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(5, 35, '3.20', 364, 'Tenetur asperiores nulla suscipit vel blanditiis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(6, 109, '3.70', 267, 'Quia quidem corrupti porro ea odit omnis laborum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(7, 74, '2.30', 232, 'Molestiae libero ad alias quos.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(8, 90, '1.00', 333, 'Et vel quaerat nam aut odio voluptatem.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(9, 41, '3.80', 189, 'Ab maiores in ratione.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(10, 114, '3.40', 403, 'Odio non adipisci facere quia.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(11, 49, '1.20', 348, 'Assumenda non id iste voluptas quisquam quia eos et.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(12, 79, '2.90', 81, 'Rerum repudiandae excepturi enim nihil natus.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(13, 67, '1.70', 419, 'Laudantium quaerat esse qui est corporis a aperiam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(14, 102, '4.50', 356, 'Quis reiciendis voluptates deleniti.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(15, 60, '3.20', 433, 'Consequatur ut asperiores corrupti blanditiis molestiae corrupti sint.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(16, 115, '2.20', 305, 'Ut quasi optio omnis nisi hic aperiam quaerat.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(17, 98, '4.40', 194, 'Optio qui id est fugiat non velit quam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(18, 17, '1.20', 470, 'Laudantium qui praesentium architecto vitae id.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(19, 20, '2.70', 10, 'Quia qui in debitis eos aut ut tempore dolorem.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(20, 12, '3.50', 76, 'Id sint ut molestiae eos magnam sunt eius.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(21, 47, '2.60', 159, 'Natus similique reiciendis ut nulla quo.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(22, 50, '4.70', 255, 'Ipsam aspernatur eos aperiam ad.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(23, 37, '3.30', 346, 'Sint et ad ea tempore consequatur quos eveniet.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(24, 101, '1.60', 500, 'Laborum corporis sit odit officiis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(25, 105, '2.40', 24, 'Blanditiis quo culpa eum sint nam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(26, 20, '3.80', 186, 'Officia et culpa qui aut iste illo.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(27, 6, '3.00', 20, 'Esse deserunt sint explicabo.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(28, 33, '4.80', 343, 'Ullam vel tempora occaecati voluptatibus pariatur reprehenderit.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(29, 39, '2.60', 129, 'Esse qui repellendus nemo quidem voluptate possimus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(30, 55, '2.50', 140, 'Id et quasi hic itaque.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(31, 64, '1.90', 446, 'Doloribus iure quos quibusdam distinctio quia.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(32, 101, '3.30', 3, 'Sit inventore iste dicta ipsa ut.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(33, 92, '3.60', 369, 'Et possimus rerum laborum velit tenetur neque.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(34, 71, '2.80', 396, 'Non eos et natus eius id sed.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(35, 81, '1.90', 85, 'Nesciunt numquam et architecto reiciendis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(36, 29, '1.60', 215, 'Sed sit necessitatibus eos dolor in dicta nostrum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(37, 54, '4.60', 81, 'Facilis voluptas perspiciatis pariatur vel laborum consequatur quo.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(38, 17, '1.10', 492, 'Ea eum et corporis assumenda.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(39, 23, '4.80', 205, 'Possimus recusandae rerum vel odio.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(40, 22, '3.80', 50, 'Dignissimos nihil est vitae molestias et tenetur.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(41, 78, '1.20', 305, 'Sint exercitationem consectetur enim sint consequuntur.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(42, 81, '3.90', 250, 'Voluptates ullam eius asperiores tempora temporibus illum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(43, 79, '3.40', 38, 'Incidunt ipsam exercitationem distinctio dicta impedit soluta dolorem.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(44, 76, '3.20', 285, 'Placeat dolor fuga eligendi.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(45, 45, '2.20', 163, 'Blanditiis incidunt magni saepe qui est perferendis provident.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(46, 83, '2.40', 428, 'Animi harum harum et iure dolor doloribus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(47, 70, '3.00', 257, 'Esse aperiam et tempora odit temporibus esse sit.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(48, 70, '2.50', 464, 'Beatae aut expedita iusto beatae dolor.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(49, 107, '4.50', 369, 'Aut animi nihil quia.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(50, 104, '4.60', 279, 'Perspiciatis quis atque aut facere vel incidunt quia ipsa.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(51, 82, '3.40', 296, 'Nisi est quod quis consequatur harum explicabo.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(52, 49, '2.70', 414, 'Facilis placeat et illum quos optio eum numquam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(53, 96, '2.80', 240, 'Qui est eos veritatis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(54, 46, '1.70', 451, 'Iusto tenetur ea explicabo voluptates cupiditate voluptate.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(55, 95, '1.50', 195, 'Eos odio dolores aperiam sit.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(56, 97, '3.40', 39, 'Ut assumenda molestiae possimus ipsum mollitia.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(57, 40, '2.70', 427, 'Totam ut facere ad nesciunt quae aut ipsam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(58, 61, '1.40', 478, 'Voluptas aut delectus accusamus impedit.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(59, 73, '4.40', 185, 'Inventore molestiae qui id cumque numquam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(60, 21, '4.20', 163, 'Hic nihil facilis reprehenderit vel.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(61, 24, '3.60', 315, 'Ducimus ut occaecati deserunt ipsa est.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(62, 16, '2.70', 201, 'Eos et velit aperiam blanditiis autem sed.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(63, 80, '4.20', 283, 'Ullam qui ut hic voluptatem dignissimos delectus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(64, 66, '3.10', 363, 'Incidunt non voluptatem eos illum ad velit.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(65, 54, '1.80', 234, 'Sit unde itaque adipisci quia saepe repellat corporis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(66, 16, '4.00', 312, 'Sit harum quo repellendus consequatur.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(67, 36, '4.30', 6, 'Eaque iste et et accusantium consectetur ullam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(68, 51, '2.10', 95, 'Vel sint et aut molestias.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(69, 76, '2.10', 189, 'Et minima molestiae quod.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(70, 32, '2.40', 123, 'Porro et quidem consequuntur et laboriosam asperiores quia.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(71, 99, '1.90', 134, 'Sint aut nisi rem maiores iure dolor nostrum tempore.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(72, 16, '1.30', 342, 'Aperiam mollitia minima voluptatibus debitis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(73, 44, '4.30', 37, 'Exercitationem aliquam accusamus mollitia tempora magnam maxime non.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(74, 66, '4.40', 177, 'Minus deleniti occaecati aperiam sapiente.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(75, 31, '2.50', 419, 'Sit sed quasi nesciunt sint.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(76, 43, '5.00', 356, 'Molestiae vitae explicabo dolor architecto suscipit illo dignissimos nobis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(77, 66, '2.70', 249, 'Nemo dignissimos qui ipsum eaque tenetur sit voluptas.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(78, 61, '4.00', 335, 'Ipsa expedita rerum qui suscipit doloribus illo.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(79, 7, '2.00', 188, 'Saepe quo amet dolorem deserunt natus autem ut.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(80, 19, '3.50', 424, 'Quos et temporibus qui et qui omnis reiciendis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(81, 98, '1.60', 315, 'Qui consectetur reprehenderit fugiat autem.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(82, 39, '3.30', 15, 'Eius sequi enim praesentium occaecati et et voluptatum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(83, 38, '1.10', 377, 'Est sed rerum quibusdam aspernatur dolores ratione.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(84, 5, '2.60', 480, 'Consequuntur non nam recusandae fuga explicabo doloribus asperiores odio.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(85, 5, '1.90', 402, 'Et excepturi quia quibusdam molestiae veritatis maxime.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(86, 58, '2.70', 279, 'Tempora est voluptas esse quibusdam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(87, 36, '3.80', 322, 'Architecto officiis et aut distinctio quia.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(88, 69, '2.70', 473, 'Itaque ut eum nulla officiis doloribus.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(89, 112, '2.30', 467, 'Sed est adipisci sed perspiciatis quae.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(90, 88, '1.50', 284, 'Amet eaque omnis est aut laudantium laudantium sit.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(91, 68, '3.80', 255, 'Necessitatibus eum eius dicta maxime.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(92, 5, '2.20', 335, 'Praesentium a laudantium impedit et quis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(93, 59, '4.20', 385, 'Maxime similique ipsa assumenda atque.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(94, 111, '4.60', 243, 'Eum est corrupti unde ducimus.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(95, 98, '1.20', 406, 'Autem quo id cupiditate voluptatem impedit aut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(96, 6, '2.20', 64, 'Quia et exercitationem cupiditate vitae cupiditate facere animi.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(97, 22, '2.40', 169, 'Delectus nostrum ipsam esse in.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(98, 73, '1.70', 295, 'Saepe eligendi voluptatem iste.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(99, 77, '4.10', 183, 'Et laborum nisi omnis provident voluptates voluptatem.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(100, 58, '4.70', 60, 'Possimus alias quia suscipit maiores.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(101, 25, '2.80', 91, 'Id quibusdam accusantium voluptate.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(102, 16, '2.10', 106, 'Commodi est voluptate iste qui repellat corporis sed.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(103, 50, '4.30', 240, 'Amet facere ea omnis ut culpa.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(104, 69, '4.30', 22, 'Earum cum facere aspernatur et debitis porro.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(105, 34, '4.90', 44, 'Quis cum esse repellendus ipsum eum.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(106, 94, '4.40', 29, 'Deserunt numquam eos est quo.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(107, 6, '1.40', 147, 'Dolorem possimus voluptates velit quis hic.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(108, 97, '3.80', 304, 'Est quibusdam sunt ipsum autem soluta autem voluptate debitis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(109, 49, '4.30', 131, 'Consequatur velit ut molestiae omnis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(110, 94, '2.70', 68, 'Esse error nisi porro ut nobis ipsam.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(111, 108, '4.80', 331, 'Nemo molestiae temporibus voluptatem autem consequatur dolor doloribus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(112, 23, '4.10', 242, 'Laborum dignissimos voluptatem ipsam non hic dignissimos accusamus facilis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(113, 104, '1.40', 256, 'Nisi voluptatem maiores ab officia et sed nobis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(114, 52, '1.50', 228, 'Impedit quo qui ea quia.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(115, 29, '1.50', 106, 'Non similique ut eius harum incidunt vel laudantium.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(116, 5, '4.20', 250, 'Ratione quo nisi nisi ut eaque delectus deleniti enim.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(117, 6, '2.60', 227, 'Facere debitis sint nemo aut est qui asperiores.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(118, 49, '2.50', 363, 'Et esse voluptatem nostrum aperiam sint tempore et.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(119, 40, '2.80', 345, 'Molestiae fuga repellat consequatur ea ex.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(120, 5, '2.80', 278, 'Officiis minima dolorem in aliquam et dolores unde.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(121, 66, '2.60', 162, 'Sunt sequi omnis consectetur est ea.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(122, 12, '5.00', 303, 'Quas quia incidunt harum nobis facere.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(123, 99, '2.00', 471, 'Suscipit repudiandae non quam totam ad numquam rerum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(124, 63, '4.70', 173, 'Ullam est unde magnam cum.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(125, 47, '1.90', 484, 'Voluptate eos dolorem cum molestiae.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(126, 114, '3.80', 386, 'Quaerat harum possimus saepe et aliquam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(127, 28, '2.30', 420, 'Aut impedit quisquam similique sit quos ut.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(128, 102, '2.30', 451, 'Non voluptatum ipsum similique nobis vero commodi id.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(129, 39, '2.90', 442, 'Architecto voluptates voluptatum est beatae blanditiis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(130, 86, '2.70', 169, 'Voluptatem voluptatem blanditiis commodi nihil dolores aspernatur provident.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(131, 61, '1.40', 261, 'Et voluptatibus et quae non officiis natus.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(132, 13, '2.70', 435, 'Commodi voluptates dolor omnis delectus adipisci.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(133, 27, '3.70', 433, 'Doloremque qui aut quos dolorem quae voluptatum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(134, 41, '2.00', 262, 'Explicabo ea aliquid in voluptatem sequi.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(135, 44, '3.90', 359, 'Cum qui consequatur voluptatem id molestiae.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(136, 28, '2.40', 202, 'Molestiae est aliquam amet.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(137, 103, '3.60', 331, 'Aut facilis et numquam quod quidem ea aut.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(138, 37, '2.30', 207, 'Facilis a optio sed sapiente voluptatum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(139, 27, '3.20', 307, 'Illum quaerat quae voluptates et commodi consequatur.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(140, 40, '3.70', 279, 'Aut commodi hic temporibus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(141, 21, '2.60', 483, 'Explicabo et ut recusandae ut voluptatum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(142, 64, '1.40', 140, 'Id eos impedit reiciendis quod.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(143, 6, '3.00', 186, 'Est enim nihil ipsam similique aut itaque.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(144, 102, '2.70', 107, 'Sit accusamus modi repellendus quia omnis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(145, 67, '4.40', 402, 'Est sit iste ut rerum numquam velit enim.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(146, 13, '2.20', 161, 'Numquam porro iusto omnis repudiandae maiores quam error.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(147, 12, '4.10', 300, 'Veritatis eos dolor et sapiente modi vel.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(148, 56, '4.50', 296, 'Voluptas asperiores veniam non totam eum porro officiis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(149, 40, '3.70', 295, 'Qui ducimus nam ut sapiente iure quam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(150, 104, '3.00', 406, 'Eaque repellendus maxime amet autem ut dolorem debitis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(151, 48, '2.80', 40, 'Rerum unde incidunt cumque sunt facere sunt natus.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(152, 70, '3.50', 303, 'Ea qui quam hic qui rem neque expedita.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(153, 43, '2.50', 245, 'Aut dolores dicta quis exercitationem enim cumque.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(154, 62, '3.40', 9, 'Quae atque non incidunt cumque illo rerum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(155, 31, '3.40', 74, 'Et dolorem ratione dolores fugiat accusantium non.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(156, 7, '2.50', 415, 'Numquam nostrum eius sit aut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(157, 84, '1.10', 243, 'Reiciendis explicabo odio autem veniam ut nulla.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(158, 42, '2.70', 391, 'Hic dicta reiciendis est deserunt quaerat.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(159, 26, '4.10', 63, 'Officia exercitationem ipsam laborum quas nihil.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(160, 32, '1.50', 285, 'Magnam quod occaecati ut voluptatum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(161, 59, '1.40', 244, 'Nesciunt minus debitis voluptas nihil eum veritatis in tempore.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(162, 49, '2.30', 40, 'Qui qui impedit magnam quo id quisquam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(163, 72, '4.80', 406, 'Possimus beatae maxime optio fuga optio.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(164, 21, '2.80', 438, 'Ut eveniet at accusantium veritatis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(165, 31, '3.20', 187, 'Ex sapiente accusamus sed enim minima est earum.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(166, 68, '4.10', 75, 'Tenetur nostrum occaecati non.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(167, 92, '3.70', 172, 'Laboriosam quas numquam aliquid ab aliquam a suscipit ut.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(168, 38, '1.00', 10, 'Animi eos aperiam consequatur ut laborum esse quaerat.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(169, 103, '4.90', 382, 'Omnis fugit facilis sapiente consequatur occaecati.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(170, 16, '1.60', 382, 'Modi eum quidem eveniet in qui.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(171, 36, '3.40', 128, 'Sunt molestiae autem necessitatibus.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(172, 83, '3.40', 273, 'Illum dolores sunt eos placeat voluptas ea.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(173, 14, '1.60', 162, 'Ea consequuntur et perferendis qui eaque enim facilis perspiciatis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(174, 21, '4.10', 257, 'Deserunt deserunt excepturi consequatur quia laborum sapiente et numquam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(175, 43, '2.10', 232, 'Omnis est in perferendis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(176, 99, '1.80', 202, 'Saepe fuga velit quis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(177, 56, '2.90', 39, 'Sapiente modi voluptas voluptas ratione voluptatem officiis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(178, 32, '2.60', 253, 'Ut vel odio animi est.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(179, 33, '4.50', 219, 'Explicabo officiis qui odit aliquam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(180, 57, '3.80', 57, 'Nihil voluptatibus quia non quam corporis sit sit.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(181, 104, '2.80', 363, 'In dolores voluptates qui aut autem quas.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(182, 70, '1.10', 462, 'Magnam consequatur illum rerum soluta quia ut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(183, 6, '1.70', 9, 'Non nam qui dicta alias deleniti quas.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(184, 53, '4.20', 151, 'Possimus porro consequatur et.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(185, 58, '4.60', 392, 'Quisquam eligendi dolores assumenda aut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(186, 65, '4.90', 90, 'Dicta quia sit doloribus quo voluptatem officiis velit.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(187, 79, '3.10', 447, 'Maxime voluptatum occaecati eius ut.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(188, 66, '1.80', 232, 'Voluptatem et eum et dolorem.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(189, 71, '3.20', 216, 'Et ea iure velit quis quia blanditiis voluptate.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(190, 3, '3.20', 221, 'Autem explicabo tempore omnis dignissimos velit necessitatibus.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(191, 60, '3.20', 67, 'Reprehenderit qui dolor earum facilis esse.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(192, 31, '4.80', 376, 'Ipsam ducimus totam et dolorem repellendus sit.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(193, 113, '4.60', 228, 'Sint necessitatibus id tenetur molestiae.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(194, 64, '1.10', 485, 'Dolorum amet commodi non aliquid quia soluta mollitia.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(195, 97, '3.90', 464, 'Inventore ratione sit quia molestiae maxime architecto.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(196, 90, '2.30', 276, 'Non repellendus ab ad.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(197, 58, '2.20', 477, 'Ad officiis omnis suscipit iusto dolor delectus id sint.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(198, 14, '1.80', 312, 'Voluptas rem asperiores est.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(199, 85, '4.90', 499, 'Ipsa quis ut atque officiis tempora ipsa.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(200, 33, '3.20', 478, 'Quidem qui iure repellendus est natus odit.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(201, 41, '4.70', 80, 'Corporis blanditiis quia alias molestias pariatur autem dolorum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(202, 3, '4.70', 390, 'Accusamus voluptatem vel excepturi iusto distinctio modi.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(203, 44, '1.70', 385, 'Aut qui nemo molestiae modi quis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(204, 6, '2.90', 170, 'Est doloremque nisi magni deserunt magnam magnam.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(205, 89, '3.20', 259, 'Natus tempora illo beatae aliquid laudantium culpa iste.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(206, 66, '2.50', 429, 'Consequatur qui excepturi officia ut repellendus sit aspernatur.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(207, 31, '4.80', 387, 'Et cumque incidunt libero quia impedit ut vero.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(208, 39, '2.50', 380, 'Assumenda quibusdam corporis repellendus quibusdam.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(209, 50, '2.90', 64, 'Delectus voluptatum fugit quia exercitationem facilis.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(210, 12, '4.30', 126, 'Sint aut consequatur nisi facere ea ratione aut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(211, 112, '1.80', 34, 'Sequi voluptatum sit accusamus doloribus omnis qui.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(212, 65, '3.50', 210, 'Expedita ea voluptas ut unde.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(213, 23, '1.20', 136, 'Quis ratione repellendus saepe minima quia voluptate consequatur.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(214, 65, '4.90', 34, 'Voluptatem et nisi ut veniam ut.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(215, 103, '1.30', 178, 'Cum quia eaque et recusandae.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(216, 40, '1.80', 55, 'Labore similique quia vitae incidunt inventore rerum non.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(217, 73, '2.00', 186, 'Atque eum asperiores temporibus ducimus reprehenderit et rerum.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(218, 33, '4.40', 270, 'Qui eaque quia vero.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(219, 74, '5.00', 335, 'Aut optio quo deleniti provident.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(220, 5, '2.00', 416, 'Et aliquam odit veniam quaerat et quasi et.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(221, 111, '2.40', 299, 'Quis nulla aut et deserunt et aut.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(222, 101, '1.90', 266, 'Et porro rerum ut explicabo blanditiis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(223, 6, '3.20', 209, 'Suscipit earum eos ab recusandae qui.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(224, 73, '4.60', 346, 'Quasi perspiciatis in modi dicta rerum.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(225, 94, '2.70', 416, 'Provident non rerum vel recusandae sed magni dolor.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(226, 69, '2.70', 201, 'Fugiat officia autem omnis nisi quo non.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(227, 18, '1.30', 283, 'Ex ad expedita itaque dolor modi ad.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(228, 22, '3.30', 397, 'Et recusandae dicta recusandae vitae doloremque tempore atque.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(229, 56, '3.90', 14, 'Cum at dolorem dolore.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(230, 40, '2.80', 282, 'Error aut ipsa maiores ea illum.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(231, 113, '1.90', 197, 'Culpa et soluta numquam rem qui.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(232, 103, '2.60', 496, 'Facilis numquam reprehenderit consequatur itaque libero maiores.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(233, 51, '3.00', 480, 'Recusandae sit provident voluptatem animi.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(234, 60, '1.80', 49, 'Sit veniam libero occaecati sapiente id reiciendis.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(235, 20, '1.20', 304, 'Aliquam quibusdam eligendi et consequatur dolorem.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(236, 92, '1.80', 363, 'Voluptatibus laboriosam explicabo id sint aperiam.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(237, 54, '2.30', 369, 'Rerum saepe nihil vel est in.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(238, 85, '3.40', 188, 'Sed quaerat accusamus repellendus explicabo laborum unde vel.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(239, 7, '1.30', 394, 'Ipsa suscipit harum et nulla vel.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(240, 66, '4.40', 199, 'Cum asperiores enim eum aut illum beatae in sit.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(241, 82, '4.40', 311, 'Qui qui facilis recusandae totam consectetur consectetur laboriosam.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(242, 48, '3.50', 63, 'Libero ut assumenda quas et impedit.', 'pending', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(243, 44, '1.30', 9, 'Voluptatibus natus porro quis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(244, 68, '4.10', 234, 'Non voluptas vero quam nobis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(245, 22, '3.80', 165, 'Accusamus earum deleniti vel.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(246, 115, '3.10', 208, 'Voluptas non voluptatibus libero.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(247, 82, '2.50', 268, 'Eius voluptatem ipsa qui dolores quibusdam ut debitis.', 'rejected', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(248, 18, '1.50', 483, 'Ex nemo recusandae dolor blanditiis qui.', 'approved', '2025-02-01 14:08:54', '2025-02-01 14:08:54'),
(249, 109, '4.60', 247, 'Odio commodi deleniti dignissimos laborum tempore labore.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(250, 96, '3.70', 340, 'Quo voluptatem illo voluptatem ut.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(251, 85, '2.70', 340, 'Repudiandae soluta omnis cum aut.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(252, 36, '4.40', 425, 'Eligendi qui id excepturi veritatis.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(253, 106, '1.80', 394, 'Eos ipsam beatae doloribus molestiae repudiandae incidunt quis.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(254, 89, '2.80', 288, 'Aut minima quia cum nesciunt aut omnis voluptas.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(255, 23, '4.90', 259, 'Qui quo quisquam ipsa quod quis a.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(256, 98, '1.30', 81, 'Velit ducimus excepturi laudantium enim sint ex quasi.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(257, 103, '2.30', 64, 'Deserunt quia voluptates voluptas qui veniam.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(258, 31, '3.80', 143, 'Asperiores dolor doloremque ex.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(259, 67, '1.70', 348, 'Labore beatae nam voluptatem itaque repellendus expedita facere.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(260, 44, '2.10', 310, 'Ut atque aliquid reiciendis id veniam.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(261, 7, '2.00', 86, 'Temporibus placeat voluptatem vitae facere voluptatibus vero.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(262, 12, '2.30', 232, 'Corrupti et ad aperiam veritatis.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(263, 36, '4.80', 469, 'Est eligendi molestias illum necessitatibus quisquam.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(264, 86, '4.40', 354, 'Quia ut sapiente omnis praesentium.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(265, 26, '2.00', 210, 'Quod necessitatibus dolorem quia ut.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(266, 7, '1.10', 450, 'Iusto culpa enim voluptatibus ducimus vero quis nemo.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(267, 62, '4.10', 461, 'Adipisci sequi et dolor.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(268, 25, '3.20', 368, 'Maxime vero cum vel ut accusantium nobis.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(269, 34, '4.10', 316, 'Quia ut eius error eos.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(270, 11, '2.90', 263, 'Similique sed officia quam quisquam laboriosam.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(271, 51, '2.60', 425, 'Vel a velit neque facere sequi.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(272, 98, '3.30', 410, 'Doloribus est fuga reiciendis ad ut.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(273, 20, '1.90', 151, 'Commodi voluptatibus enim nihil hic.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(274, 28, '4.10', 11, 'Voluptatem reprehenderit commodi quam suscipit possimus sed.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(275, 97, '1.30', 358, 'Hic aut fugit molestiae inventore ipsa laboriosam eum.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(276, 89, '4.20', 358, 'Itaque harum esse impedit sint.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(277, 104, '4.70', 499, 'Voluptatibus qui numquam rem numquam deleniti eveniet corrupti.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(278, 45, '4.40', 420, 'Est qui quia laudantium nihil.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(279, 74, '1.90', 167, 'Corporis nulla possimus et impedit blanditiis aut ducimus.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(280, 72, '2.70', 79, 'Vel consequatur enim et quo aliquid autem.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(281, 78, '4.60', 295, 'Et ad occaecati facere.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(282, 74, '3.90', 473, 'Quae velit dolor sed totam autem quaerat voluptatibus.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(283, 52, '1.90', 316, 'Voluptates in eveniet et vero iure nihil voluptas accusantium.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(284, 65, '3.00', 459, 'Et sit eius sed et.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(285, 76, '2.20', 23, 'Aspernatur libero suscipit harum ex dolore.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(286, 32, '2.30', 492, 'Esse possimus id qui facere nesciunt quam eum.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(287, 106, '4.80', 378, 'Delectus voluptatum aut ut nihil delectus ratione.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(288, 57, '4.90', 290, 'A eveniet nihil error deserunt est.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(289, 38, '3.70', 126, 'Quam voluptas iure autem ipsa id eveniet.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(290, 6, '4.60', 75, 'Et enim enim eos debitis rerum labore voluptatibus.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(291, 35, '4.10', 123, 'Et temporibus occaecati accusantium itaque.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(292, 77, '2.10', 271, 'Asperiores consequuntur sapiente nesciunt aliquam.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(293, 14, '3.30', 234, 'Earum rerum asperiores eos sit molestiae.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(294, 109, '2.80', 418, 'Aut id voluptas sunt dicta occaecati.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(295, 35, '1.80', 274, 'Possimus ut distinctio animi officiis quae.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(296, 43, '2.60', 310, 'Vel ratione optio explicabo tenetur sunt numquam.', 'pending', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(297, 19, '2.50', 216, 'Dolorem excepturi modi placeat corrupti libero dolorum.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(298, 42, '2.00', 191, 'Ad consectetur perferendis provident omnis laudantium laudantium assumenda.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(299, 71, '4.20', 226, 'Vitae alias alias et atque velit dolor.', 'rejected', '2025-02-01 14:08:55', '2025-02-01 14:08:55'),
(300, 64, '1.30', 199, 'In distinctio laboriosam voluptatem.', 'approved', '2025-02-01 14:08:55', '2025-02-01 14:08:55');

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
('2GDNbVV082RnA2LKeUr5iKoKL0By8zRiMdRgSxHW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVg5R2NmWFpmZ3oxUWJ5NFE3QXU3c1lXZ1VjV0tNR3FsOENGNkRiSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738666239),
('4NsAjFGdSLFRTtImRqTicu5dHx5rWwbv7zzUetdM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRW5nSW9WaktPdlZQUWh6VGE4Q0dZUnZ4UGxtaFFiekw1cVYxa0IzeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738666462),
('DOUFVC0vAxwHnQtDRUodn6WCSoOzyU5Faa54qe40', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQmFhdTI5andZNlRhT1lJQkZVNnpWUjVOYWZJdDJhRjBmTG01dnpHQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738689042),
('FjJEPnkUQOULUynexoB1EonR9mrLq0eXHudvgGIY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVBZNVU3ak1QNnJYemFCOEkxZkdXbG4wUFA1a2xpYUM0M2Y0S2VIdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738677789),
('g8U4wEXrYojhVOGFA9sEgagcWVTRZ5x6HIhfC88C', NULL, '127.0.0.1', 'PostmanRuntime/7.42.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXNhUEg1aDVPeHUxZnE2enk1WEN4YWpCUWFqYTVHVEtZOHozNWNkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738666111),
('QnEGghr8nBPzDddBLm0yAdqN9d8fE6XgAPX0XCco', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibk1iODlGNDdPdjA0ZHdJZnY2b05VZjU3TkFlc0d2dlE5Mzc2VTlxbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738666189),
('zJpLzv5udsAzISXojaCrtYjlQnCKVxx6oBsLDYFR', NULL, '127.0.0.1', 'PostmanRuntime/7.42.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU5ZTTVWYklyZ21lTW56TDk0eFl6Ym93eWN0ZjB3ODNvMHV3OFM4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738677401);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Shakhawat Hossain', 'shakhawat.sk@gmail.com', NULL, '$2y$12$9rafbq9h6mgXE9.1NaHvw./qeVfnQdcYHM9zy/6dYN0E2GUL3k3tC', NULL, '2025-02-01 20:33:01', '2025-02-01 20:33:01', 'admin'),
(2, 'Abu Musa', 'user@domain.com', NULL, '$2y$12$XI4EGbN9iKXu1YW4gbncjud2TH0JswjE29IR2ap5lS3DWrfi9MouG', NULL, '2025-02-04 10:17:23', '2025-02-04 10:17:23', 'user'),
(3, 'Md. Shaiful Islam', 'shaiful.agrigate@gmail.com', NULL, '$2y$12$R7.0Ro/ABtLK/m2oN1fIu.qPjs08TPu9MAq/OhJrT88xgk1fPfYCa', NULL, '2025-02-04 10:19:54', '2025-02-04 10:19:54', 'user'),
(4, 'Anuar', 'user1@domain.com', NULL, '$2y$12$Ni32/Aa70anXf95N3/tOde/wT0NUEKbhUAsrvtlup1MWgIRyvWYHq', NULL, '2025-02-04 10:21:46', '2025-02-04 10:21:46', 'user'),
(5, 'Anuar Alom', 'user2@domain.com', NULL, '$2y$12$DgNDNY2SGH8.TJErQ1Q2LOh6LyhVqiWyn.Fy166lIIHM/FPG6yVae', NULL, '2025-02-04 10:25:33', '2025-02-04 10:25:33', 'user'),
(6, 'Abu jor', 'user3@domain.com', NULL, '$2y$12$E8XGL4aNPopNkj4fkrDxXe8cU5srYPnUsf3sdElUS7CIWtkHcjw9W', NULL, '2025-02-04 10:29:15', '2025-02-04 10:29:15', 'user'),
(7, 'Amir Ali', 'user4@domain.com', NULL, '$2y$12$72YG/DkGKtBdPw4uvcDFmOnBtsoL6q3O2DQpi3N0V8ctNBFZ1V4Ii', NULL, '2025-02-04 10:33:21', '2025-02-04 10:33:21', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
