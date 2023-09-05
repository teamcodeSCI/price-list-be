-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2023 at 01:42 PM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_pricelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HH', 'Hồng Hà', '2023-05-19 08:13:55', '2023-05-19 08:13:55'),
(2, 'PR', 'Paris', '2023-05-19 08:14:04', '2023-05-19 08:14:04'),
(3, 'KN', 'Kangnam', '2023-06-14 08:27:51', '2023-06-14 08:27:51'),
(4, 'DA', 'Đông Á', '2023-06-14 08:28:02', '2023-06-14 08:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `brand_id`, `category`, `created_at`, `updated_at`) VALUES
(7, 2, 'Trồng răng', '2023-06-20 04:40:13', '2023-06-20 06:21:42'),
(8, 2, 'Niềng răng', '2023-06-20 04:44:17', '2023-06-20 04:44:17'),
(9, 2, 'Khuyến mãi', '2023-06-20 04:44:51', '2023-06-20 04:44:51'),
(10, 2, 'Bọc răng sứ', '2023-06-20 04:46:50', '2023-06-20 04:46:50'),
(14, 2, 'Phẫu thuật hàm mặt', '2023-06-20 06:37:10', '2023-06-20 06:37:10'),
(16, 2, 'Nâng mũi', '2023-07-12 09:07:22', '2023-07-12 09:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landing_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `landing_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(15, 54, '08/21/2023', '08/31/2023', '2023-06-20 06:48:08', '2023-08-02 03:48:44'),
(16, 54, '08/14/2023', '08/20/2023', '2023-06-20 06:48:23', '2023-08-02 03:48:29'),
(17, 54, '08/07/2023', '08/13/2023', '2023-06-20 06:48:37', '2023-08-02 03:48:11'),
(18, 54, '08/01/2023', '08/06/2023', '2023-06-20 06:49:01', '2023-08-02 03:47:53'),
(23, 53, '09/01/2023', '09/30/2023', '2023-06-20 07:00:29', '2023-09-05 02:33:27');

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
-- Table structure for table `landings`
--

CREATE TABLE `landings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id`, `brand_id`, `category_id`, `url`, `status`, `created_at`, `updated_at`) VALUES
(53, 2, 9, 'https://nhakhoaparis.vn/tham-my-rang-tieu-chuan-phap.html', 1, '2023-06-20 06:45:25', '2023-06-20 06:45:25'),
(54, 2, 7, 'https://nhakhoaparis.vn/trong-implant-giai-phap-toi-uu.html', 1, '2023-06-20 06:45:59', '2023-06-20 06:45:59'),
(55, 2, 14, 'https://benhvienranghammatparis.vn/phau-thuat-ham-ho-hang-dau-viet-nam/', 1, '2023-07-12 08:49:36', '2023-07-12 08:49:36'),
(56, 2, 16, 'https://benhvienranghammatparis.vn/phau-thuat-nang-mui-chuan-y-khoa/', 1, '2023-07-12 09:07:32', '2023-07-12 09:07:32'),
(57, 2, 14, 'https://benhvienranghammatparis.vn/giai-phap-chinh-hinh-rang-ham-mat-moi-nhat.html', 1, '2023-08-15 06:49:21', '2023-08-15 06:49:21');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_04_20_065259_create_brands_table', 1),
(11, '2023_04_20_071550_create_categories_table', 1),
(12, '2023_04_20_071904_create_landings_table', 1),
(13, '2023_04_20_072428_create_prices_table', 1),
(14, '2023_06_14_132534_create_extensions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02591f724099864e5d8953042127dc38508c41cf81d7522e73b36187b28bdac3f68a24e995a76818', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:35:18', '2023-05-23 06:35:18', '2023-06-22 13:35:18'),
('02d2333bf04fb71cbeac5ccd03da9b134acdecb65ebc6a01353c5f46f07022ea2dfb0132fe4d50bf', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:22:39', '2023-05-23 06:22:39', '2023-06-22 13:22:39'),
('052c14e90bc4ac98f078fb1601a9f4d15cf09a687f781389f4bdbdf5f02c58c2dd0f170468eef38e', 1, 1, 'PriceList', '[]', 0, '2023-06-20 03:17:40', '2023-06-20 03:17:40', '2023-07-20 10:17:40'),
('091d0ed06afa7c53e989287f08fe56b076a3e0b16885cf278cd6d2c83a2fb477ea2f027f982c995f', 4, 1, 'PriceList', '[]', 0, '2023-06-13 08:12:52', '2023-06-13 08:12:52', '2023-07-13 15:12:52'),
('0be99f27270aac1695846eeb622a25e8fea8c046d64dedb76527b5aaadf9ce9dde45160c09328634', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:32:19', '2023-06-08 02:32:19', '2023-07-08 09:32:19'),
('0d2e8e57251ab6a18717aef5085ab27c754e44dfe7db2ebf7e771e795bcb81aae2a73e3d6eb1c080', 4, 1, 'PriceList', '[]', 0, '2023-05-25 08:43:52', '2023-05-25 08:43:52', '2023-06-24 15:43:52'),
('0d6837534c794f4c7d9ff70805ffb79cee9bd341cf63291711d7275ae57337717433892c12b9c657', 77, 1, 'PriceList', '[]', 0, '2023-06-16 01:17:13', '2023-06-16 01:17:13', '2023-07-16 08:17:13'),
('0d80a773d89454857b86909ce743990cb37e80fdc3546fcb016ae565ad119bb234a98e5737747e7e', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:37:56', '2023-06-08 02:37:56', '2023-07-08 09:37:56'),
('10e1e7db944ff8db83f64bb40a9732e26994650172d66584fb63710cd6af46c38575dd2e6115e004', 3, 1, 'PriceList', '[]', 0, '2023-05-19 08:18:59', '2023-05-19 08:18:59', '2023-06-18 15:18:59'),
('2267fdc72970049e3760a88ed48db3dbdcbdca7d4487b7585927d6c70231edf9e006d411c1529a7f', 4, 1, 'PriceList', '[]', 0, '2023-06-13 06:20:25', '2023-06-13 06:20:25', '2023-07-13 13:20:25'),
('2430b6de52410daae29e576ea4b315ca9420d222bf5e19629c6194f4c580681aef178bf146b7f8a0', 3, 1, 'PriceList', '[]', 0, '2023-08-01 02:08:09', '2023-08-01 02:08:09', '2023-08-31 09:08:09'),
('244811c0e186cc09b5ddadb776197208d1ded90609a57e36dbec1df3e087db83b6a75cf76b336039', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:19:06', '2023-05-23 06:19:06', '2023-06-22 13:19:06'),
('2dff4f93a6d5bf3270facd99f00047a346f062e962000981383719bf1d21a5315dd193bfd3ae837e', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:34:01', '2023-06-08 03:34:01', '2023-07-08 10:34:01'),
('32b5b5b2864a4936c600b4fa443f181979684c6c5be71323d70c79ec1bc1df9dce1141716f827159', 3, 1, 'PriceList', '[]', 0, '2023-07-06 09:13:34', '2023-07-06 09:13:34', '2023-08-05 16:13:34'),
('3352079643c91c63cb8aac6f43156462b19e0c3a9f137f087ec25cb6a55e648b713e62c3c5707672', 1, 1, 'PriceList', '[]', 0, '2023-06-02 06:27:26', '2023-06-02 06:27:26', '2023-07-02 13:27:26'),
('374c5c6c2076cd98c7eb9d181741182a7f92888fc912eafc600955686294a6a510606e7d425aa51d', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:01:24', '2023-06-08 03:01:24', '2023-07-08 10:01:24'),
('3b89135041540c9d99cb789c25350ec1ae22f09f4f7814d3d980966b7f8566e077f7173db8319d0b', 77, 1, 'PriceList', '[]', 0, '2023-06-16 01:21:51', '2023-06-16 01:21:51', '2023-07-16 08:21:51'),
('3be99ff77de4154fcab50e61145bcd73db991eb06fcb8301aa74ef886ad4b5d0e1715f9b4e61cce1', 1, 1, 'PriceList', '[]', 0, '2023-06-02 01:37:39', '2023-06-02 01:37:39', '2023-07-02 08:37:39'),
('3d55296008da172203a186a3edf127f241b13f0949a1249288df36ae9974e8314704ec2575e22da9', 77, 1, 'PriceList', '[]', 0, '2023-06-16 01:21:02', '2023-06-16 01:21:02', '2023-07-16 08:21:02'),
('3d6cde3da7841bcb004b75c1b1c4a8254780004c65d8e8c214802318fc55286677c51fc3e357b3c1', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:52:24', '2023-06-08 02:52:24', '2023-07-08 09:52:24'),
('3e4a89c35abdfb3f6f1bb17ed6c0ca8ea535b6425f6d37655d75e03f012f19cb136d95b50de27682', 4, 1, 'PriceList', '[]', 0, '2023-05-23 08:25:25', '2023-05-23 08:25:25', '2023-06-22 15:25:25'),
('4a98787340ddde9e984e8a5b12b52862b3a73914c44fb72a5179ce5a10f28059b9a9f686f649e221', 3, 1, 'PriceList', '[]', 0, '2023-08-01 02:00:03', '2023-08-01 02:00:03', '2023-08-31 09:00:03'),
('4eed7fbc173631416e039fa609253cf786ab0f99b9b16efbf44efe577202dbc4fd31b96d37063d36', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:42:27', '2023-05-23 04:42:27', '2023-06-22 11:42:27'),
('5202f0c1b8b26b618e6902b90a6ce11cc9b50827594a2aff51f372fe4fa6bebd1157a49ea5d07b24', 4, 1, 'PriceList', '[]', 0, '2023-05-24 01:46:21', '2023-05-24 01:46:21', '2023-06-23 08:46:21'),
('52207d29020b55e87dd6ecdf3547723752a9a8610e1dda5fa6deb87b415adf90a8da3b33fb3e2cbd', 3, 1, 'PriceList', '[]', 0, '2023-06-20 04:13:12', '2023-06-20 04:13:12', '2023-07-20 11:13:12'),
('53e12b667b6ca90eaeaf4fe9966230754256b524a58dde81c30a8fc2acf246542283249b1a8e5e3a', 4, 1, 'PriceList', '[]', 0, '2023-06-16 01:23:14', '2023-06-16 01:23:14', '2023-07-16 08:23:14'),
('55f9ea670e0e15bea23124fca10946e2432a712bb517b691a34c37560f6ca551dad75a0d58abff10', 39, 1, 'PriceList', '[]', 0, '2023-06-16 01:18:56', '2023-06-16 01:18:56', '2023-07-16 08:18:56'),
('573930fd6773a3ef05abffacdf52ffeb2f04852e178efd3caf2f024941bb9917b9f7469a56524365', 1, 1, 'PriceList', '[]', 0, '2023-05-23 08:25:15', '2023-05-23 08:25:15', '2023-06-22 15:25:15'),
('58f40c3d68a74eb23fa36294bc14285d07f9ba07275fa6da560a8c7488d436e05e0cfb0c5554b3ea', 1, 1, 'PriceList', '[]', 0, '2023-05-22 06:17:29', '2023-05-22 06:17:29', '2023-06-21 13:17:29'),
('597d49dd6ac2f443ad7be0454c5088be4a4a7d6705f1fc870ef807fe66d5a9945eba5bd2593738ce', 1, 1, 'PriceList', '[]', 0, '2023-06-02 07:02:00', '2023-06-02 07:02:00', '2023-07-02 14:02:00'),
('5bfcf14ca9629f439e9f9e9a7fcd2134529c93fb7ede9a81e78492a092ffef71f5074b6f6baf36f5', 40, 1, 'PriceList', '[]', 0, '2023-06-16 01:19:14', '2023-06-16 01:19:14', '2023-07-16 08:19:14'),
('70345532db5c67a9e6d729461ddc805339921f987d03112f530001b5af91f5ce3bae8f2936035aa8', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:26:13', '2023-06-08 02:26:13', '2023-07-08 09:26:13'),
('714912fe77ba754460bc6a14bcfd9e9186c282e46435d0107afb2590ad02de3e68c71d693dbcbc34', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:33:37', '2023-05-23 06:33:37', '2023-06-22 13:33:37'),
('7321ec878d62649ac4f573e58fbe4f6eea7bcba38dff8908c4c17ddc5086eea22d6673b60922ddb7', 1, 1, 'PriceList', '[]', 0, '2023-06-08 01:45:03', '2023-06-08 01:45:03', '2023-07-08 08:45:03'),
('7656db44eac6c64d362bda93e8d5e16674b0783115a472b1c8d6ed29813e808859062d0ce73140d1', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:38:42', '2023-05-23 06:38:42', '2023-06-22 13:38:42'),
('8225112b86f96b9ed7515dd94fb36edcd2f72b86a6d9249aa345e65e99e351d0bc84fdc51f8fe952', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:44:56', '2023-05-23 04:44:56', '2023-06-22 11:44:56'),
('8476e476d4895faa33d5bb04868bbcc7aef492048241d32270037412d8d3154b7198bc941350894a', 3, 1, 'PriceList', '[]', 0, '2023-07-13 04:14:57', '2023-07-13 04:14:57', '2023-08-12 11:14:57'),
('8b727eda4708e67fcda86f1427617c73fa6c62102b0db7604021a82d83fe8d8d3064ccce2bd6ee7b', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:35:46', '2023-05-23 04:35:46', '2023-06-22 11:35:46'),
('914d1e0d81474f36dafeb6476f5fcb5e5e071beb1e963a73ef5e96d4b667d4d178a7a0b5325480f7', 3, 1, 'PriceList', '[]', 0, '2023-08-01 02:00:18', '2023-08-01 02:00:18', '2023-08-31 09:00:18'),
('92c98641f3ab396453ad7e063bfcab790bf0e5d1051dcd763dec057ef3239f10bff3da409c2b0940', 1, 1, 'PriceList', '[]', 0, '2023-05-24 01:46:02', '2023-05-24 01:46:02', '2023-06-23 08:46:02'),
('9ae1f88495d9cd134406396d2636e9857a88bdc4f79222a788cc1b7c52317f61b4375090ffa607bf', 1, 1, 'PriceList', '[]', 0, '2023-06-20 03:06:49', '2023-06-20 03:06:49', '2023-07-20 10:06:49'),
('9d9eb2cb6ac7b05aa20f8759ec6693362ceddc5fd10056b3f3f4bf134b147da967d38ab7bdf4812a', 3, 1, 'PriceList', '[]', 0, '2023-09-05 02:33:06', '2023-09-05 02:33:06', '2023-10-05 09:33:06'),
('9e1c64bbac43d8bf38af47c136f342db54319bac892765edd6dc81a3c134531fa73b741847249fd9', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:02:53', '2023-06-08 03:02:53', '2023-07-08 10:02:53'),
('a47a0fb4003e60bb660e59b3495f6dcd3ebea3e255866d517c287bbcea340a98a226637c7830668a', 4, 1, 'PriceList', '[]', 0, '2023-06-08 03:58:19', '2023-06-08 03:58:19', '2023-07-08 10:58:19'),
('a68ca0cac5171b6537504f4be85f4e569501676f9fc57ed215ef69dd082a916efa252daf896f9104', 1, 1, 'PriceList', '[]', 0, '2023-06-02 03:56:13', '2023-06-02 03:56:13', '2023-07-02 10:56:13'),
('acb9c0d58f7e0e24d5a1bf07741ca55b48aebd0269ce2ee78b53f222f6034a1b5b3bab979721eec0', 3, 1, 'PriceList', '[]', 0, '2023-06-30 02:21:25', '2023-06-30 02:21:25', '2023-07-30 09:21:25'),
('aced66352375e0b42e0530c0860b46f51e3a56db15005b2ded4def39328e75409a2ae934b565d01d', 4, 1, 'PriceList', '[]', 0, '2023-06-02 01:37:55', '2023-06-02 01:37:55', '2023-07-02 08:37:55'),
('b764bb830b7715d0b20cbbcc07f4cd48c30dd57723e1a5936b4a1404ae4d9fcddf8c10edc3ec9b49', 2, 1, 'PriceList', '[]', 0, '2023-06-20 03:09:25', '2023-06-20 03:09:25', '2023-07-20 10:09:25'),
('bbc1b65b9ded56818fc64a3c458a14d5d60c5cfd2560afe8e32a8a819510a215a158adc8ba9c23d8', 4, 1, 'PriceList', '[]', 0, '2023-06-19 06:51:59', '2023-06-19 06:51:59', '2023-07-19 13:51:59'),
('bea51f8a5850afa287db71f59783fcaab2ab37d49e672d14399b1ef5116d3870958cd5bd23bba1d7', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:36:00', '2023-05-23 06:36:00', '2023-06-22 13:36:00'),
('bea89555a81cdd1245580cdfeb835d3622b25b47748525cb96bb0c0b2cad2018a24d5cdcba2aa035', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:47:43', '2023-06-08 03:47:43', '2023-07-08 10:47:43'),
('c1d729fda9669afb910bb1c649624bf93e6bb12db08a3c92839fac7d5da58574527a9c23ba44f85e', 3, 1, 'PriceList', '[]', 0, '2023-07-04 01:18:39', '2023-07-04 01:18:39', '2023-08-03 08:18:39'),
('c71e85e1d69b56f92cc1515e8b6de77c2b6d2a8a389d81e8097572fd6cb7191c37d0295df8b7c45d', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:42:27', '2023-05-23 04:42:27', '2023-06-22 11:42:27'),
('d74a3881ff3dc3f02f9842e876026a21109bc99c54436eae58260202730f4ca82c26f7fd41a188e2', 4, 1, 'PriceList', '[]', 0, '2023-05-23 08:23:35', '2023-05-23 08:23:35', '2023-06-22 15:23:35'),
('d8eda78e5c39434b0501acf57908f1481e66dac5d8a37411183ad12473f2b73e855d27c6c0392e17', 4, 1, 'PriceList', '[]', 0, '2023-08-01 02:02:05', '2023-08-01 02:02:05', '2023-08-31 09:02:05'),
('d92e292f1f21212aca7972da0f5e6561c5689d593b1ec248af1eb32aec6b08211eb51c5bb9d227d7', 3, 1, 'PriceList', '[]', 0, '2023-07-04 01:14:26', '2023-07-04 01:14:26', '2023-08-03 08:14:26'),
('da3bfb2ca9e81bdcb2be6a18e59362d17d91b0619acfc7b98b4ec3102c4f38d1705569098e9470a1', 4, 1, 'PriceList', '[]', 0, '2023-05-22 06:29:28', '2023-05-22 06:29:28', '2023-06-21 13:29:28'),
('dd4c26cdb17c9f11340d64d0b8edacd718b4ac406414aeb62917814bb92c8d58a1a23104255472ae', 1, 1, 'PriceList', '[]', 0, '2023-05-25 08:43:34', '2023-05-25 08:43:34', '2023-06-24 15:43:34'),
('de703f19173192330d15f10b6ddf9d998a08b22ef5c256c2c2c6b1dac4d29c1cd8992f81620f71cf', 4, 1, 'PriceList', '[]', 0, '2023-06-02 04:00:21', '2023-06-02 04:00:21', '2023-07-02 11:00:21'),
('e04ede050ff38a7d0895146a75a75a0665dc81f03cd8325ae6f5a0df82c1d673d28fe99c362e1032', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:36:52', '2023-05-23 06:36:52', '2023-06-22 13:36:52'),
('e3061683901a2d4372e1dbfa8d5db79ca8e6102d63ca7d76fbd50200d349d0b28cc3783f54846a11', 1, 1, 'PriceList', '[]', 0, '2023-06-02 06:31:30', '2023-06-02 06:31:30', '2023-07-02 13:31:30'),
('e4c7e6ccfd5ed37c355c60f1dceb60f9a263f2d6747941eef95e55da5a8cc0f3c709724e4d4fa718', 3, 1, 'PriceList', '[]', 0, '2023-06-20 03:22:08', '2023-06-20 03:22:08', '2023-07-20 10:22:08'),
('e67da97e0f3fe93a3cac6c0b378412acbc07b4b85281ecc940567da7c634f5e92f2e98a1d57a6a2d', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:50:07', '2023-05-23 04:50:07', '2023-06-22 11:50:07'),
('e950cc460519c1f6be64bf294c61d7b6dd4508e187addbc18335cfa64930bfa98336605564135c9c', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:48:14', '2023-06-08 02:48:14', '2023-07-08 09:48:14'),
('eb8a6a775ccdfee7a39210c60fd1e1706d45dac18f1c55aacfdfe808031acb3e6d8aeb7caf98f897', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:50:24', '2023-06-08 02:50:24', '2023-07-08 09:50:24'),
('f4de9a9f79bcb92124db2a2dc6c9ba0f7539003dce94eb7345bbe78fde9354bb88ca742f98cbd355', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:47:25', '2023-06-08 03:47:25', '2023-07-08 10:47:25'),
('fd86a595899780fcff2e37b9107139bdb3e06f281908023d724ac1b2f1d54e1a4bb1f5cea3646385', 1, 1, 'PriceList', '[]', 0, '2023-05-19 08:17:37', '2023-05-19 08:17:37', '2023-06-18 15:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'NpeRqM5d2Tp77ENkMfehQihuqtlmzwpk2Pa4vbip', NULL, 'http://localhost', 1, 0, 0, '2023-05-19 08:01:21', '2023-05-19 08:01:21'),
(2, NULL, 'Laravel Password Grant Client', 'HyCBYqRhrEdAA5wbfhOjMn35hw5tijQOtHFNq1dF', 'users', 'http://localhost', 0, 1, 0, '2023-05-19 08:01:21', '2023-05-19 08:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-19 08:01:21', '2023-05-19 08:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landing_id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion` longtext COLLATE utf8mb4_unicode_ci,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `landing_id`, `service`, `price`, `discount`, `promotion`, `note`, `created_at`, `updated_at`) VALUES
(1, 54, 'Dio Hàn Quốc - Tiêu chuẩn', '16000000', '45', 'Tặng răng sứ Titan', '7 năm', '2023-07-12 03:55:31', '2023-07-12 03:55:31'),
(2, 54, 'Dentium Hàn Quốc - Tiêu chuẩn', '16000000', '20', 'Tặng răng sứ Titan', '20 năm', '2023-07-12 03:56:52', '2023-07-12 03:56:52'),
(3, 54, 'Dentium Hàn Quốc - Cao cấp', '21500000', '20', 'Tặng răng sứ Titan - Abutment cá nhân hóa', 'Trọn đời', '2023-07-12 03:57:54', '2023-07-12 03:57:54'),
(4, 54, 'ETK Paris Pháp - Tiêu chuẩn', '24000000', '20', 'Tặng răng sứ Titan', 'Trọn đời', '2023-07-12 03:58:40', '2023-07-12 03:58:40'),
(5, 54, 'ETK Paris Pháp - Cao cấp', '28000000', '20', 'Tặng răng sứ Titan - Abutment cá nhân hóa', 'Trọn đời', '2023-07-12 03:59:30', '2023-07-12 03:59:30'),
(6, 54, 'SIC Thụy Sĩ - Tiêu chuẩn', '30000000', '15', 'Tặng răng sứ Titan', 'Trọn đời', '2023-07-12 04:00:12', '2023-07-12 04:00:12'),
(7, 54, 'SIC Thụy Sĩ - Cao cấp', '35000000', '15', 'Tặng răng sứ Bio Paris - Abutment cá nhân hóa', 'Trọn đời', '2023-07-12 04:01:13', '2023-07-12 04:01:13'),
(8, 54, 'Straumann SLActive Thụy Sĩ - Cao cấp', '42000000', '15', 'Tặng răng sứ Bio Paris - Abutment cá nhân hóa - Vệ sinh chăm sóc răng miệng toàn diện 499k', 'Trọn đời', '2023-07-12 04:02:07', '2023-07-12 04:02:07'),
(9, 55, 'GỌT HÀM VLINE 3D', '60000000', '25', NULL, NULL, '2023-07-12 08:50:10', '2023-07-12 08:50:10'),
(10, 55, 'HẠ GÒ MÁ 3D', '60000000', '25', NULL, NULL, '2023-07-12 08:50:31', '2023-07-12 08:50:31'),
(11, 55, 'TRƯỢT CẰM 3D', '40000000', '20', NULL, NULL, '2023-07-12 08:50:53', '2023-08-01 02:17:14'),
(12, 55, 'GỌT CẰM 3D', '40000000', '20', NULL, NULL, '2023-07-12 08:51:20', '2023-07-12 08:51:20'),
(13, 55, 'ĐỘN CẰM 3D', '15000000', '25', NULL, NULL, '2023-07-12 08:51:36', '2023-08-01 02:22:22'),
(14, 55, 'CHỈNH HÀM HÔ MINI 3D', '55000000', '20', NULL, 'Tiền hàm', '2023-07-12 08:51:53', '2023-07-12 08:52:08'),
(15, 55, 'CHỈNH HÌNH HÀM HÔ/ MÓM 3D', '65000000', '25', NULL, '1 hàm trên/dưới', '2023-07-12 08:52:34', '2023-07-12 08:52:34'),
(16, 55, 'CHỈNH HÌNH HÀM HÔ/ MÓM 3D', '80000000', '10', NULL, '1 hàm trên/dưới khó, ghép xương, xoay trục hàm,...', '2023-07-12 08:53:31', '2023-07-12 08:53:31'),
(17, 55, 'COMBO CHỈNH HÀM HÔ MÓM 2 HÀM', '100000000', '15', NULL, NULL, '2023-07-12 08:53:49', '2023-07-12 08:53:49'),
(18, 55, 'COMBO CHỈNH HÀM HÔ MÓM 2 HÀM + TRƯỢT CẰM', '130000000', '15', NULL, NULL, '2023-07-12 08:54:07', '2023-07-12 08:54:07'),
(19, 56, 'NÂNG MŨI BỌC SỤN HÀN QUỐC', '20000000', '25', NULL, NULL, '2023-07-12 09:07:54', '2023-07-12 09:07:54'),
(20, 56, 'NÂNG MŨI S-LINE/ L-LINE 3D', '25000000', '30', NULL, NULL, '2023-07-12 09:08:09', '2023-07-12 09:08:09'),
(21, 56, 'NÂNG MŨI CẤU TRÚC 4D', '35000000', '35', NULL, NULL, '2023-07-12 09:08:27', '2023-07-12 09:08:27'),
(22, 56, 'NÂNG MŨI SỤN SƯỜN BÁN PHẦN', '55000000', '20', NULL, NULL, '2023-07-12 09:08:39', '2023-07-12 09:08:39'),
(23, 56, 'NÂNG MŨI SỤN SƯỜN 100%', '70000000', '20', NULL, NULL, '2023-07-12 09:09:02', '2023-07-12 09:09:02'),
(24, 56, 'TẠO HÌNH/ THU NHỎ ĐẦU MŨI', '12000000', '0', NULL, NULL, '2023-07-12 09:09:16', '2023-07-12 09:09:16'),
(25, 56, 'THU NHỎ CÁNH MŨI', '6000000', '0', NULL, NULL, '2023-07-12 09:09:25', '2023-07-12 09:09:25'),
(30, 57, 'Chỉnh hàm hô MINI 3D', '55000000', '20', NULL, 'Tiền hàm', '2023-08-15 06:50:01', '2023-08-15 06:50:01'),
(31, 57, 'Chỉnh hình hàm hô móm 3D', '65000000', '25', NULL, '1 hàm', '2023-08-15 06:50:27', '2023-08-15 06:50:27'),
(32, 57, 'Niềng răng mắc cài kim loại thường 3M', '30000000', '25', NULL, NULL, '2023-08-15 06:50:44', '2023-08-15 06:50:44'),
(33, 57, 'Niềng răng mắc cài tự buộc AI DESIGN', '45000000', '20', NULL, NULL, '2023-08-15 06:51:07', '2023-08-15 06:51:07'),
(34, 57, 'Niềng răng khay trong INVISALIGN LITE', '80000000', '20', NULL, NULL, '2023-08-15 06:51:24', '2023-08-15 06:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `brand_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Đoàn Minh Đức', 'duc@gmail.com', NULL, '$2y$10$tT1Tb9OW5Jr/1dkq27w7iu9v0QJgzYvfXaLkR35yvQnsIKmHYeuvq', NULL, '2023-06-20 03:06:19', '2023-06-20 03:06:19'),
(2, 3, 'Đoàn Minh Đức', 'duckn@gmail.com', NULL, '$2y$10$960ZoQkc2JY6bPHdnjkaiuZTn5LNFSypNuw7XENx3b35WocEYzC1S', NULL, '2023-06-20 03:09:07', '2023-06-20 03:09:07'),
(3, 2, 'Đoàn Minh Đức', 'ducpr@gmail.com', NULL, '$2y$10$5K7PpwTaqmQAiC9cXTpWB.9bOHjbscI8ocxF0iRHT53prHakhdVsq', NULL, '2023-06-20 03:21:52', '2023-06-20 03:21:52'),
(4, 2, 'Khổng Việt Hà', 'hakhong96@gmail.com', NULL, '$2y$10$YGpWHPQjO7Jp4kXf4lat8.ylWghy2VQdlPaiM9UNN.o3Eivbxaf2.', NULL, '2023-08-01 02:01:50', '2023-08-01 02:01:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landings`
--
ALTER TABLE `landings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landings`
--
ALTER TABLE `landings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
