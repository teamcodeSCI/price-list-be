-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `list-price`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HH', 'Hồng Hà', '2023-05-19 08:13:55', '2023-05-19 08:13:55'),
(2, 'PR', 'Paris', '2023-05-19 08:14:04', '2023-05-19 08:14:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `brand_id`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nâng ngực', '2023-05-19 08:14:47', '2023-05-19 08:14:47'),
(2, 2, 'Niềng răng', '2023-05-22 02:53:19', '2023-05-22 02:53:19'),
(3, 2, 'Trồng răng', '2023-05-22 02:53:26', '2023-05-22 02:53:26'),
(4, 2, 'Bọc răng sứ', '2023-05-22 02:53:34', '2023-05-22 02:53:34'),
(5, 1, 'Nâng mũi', '2023-05-22 02:53:56', '2023-05-22 02:53:56'),
(6, 1, 'Cắt mí', '2023-05-22 02:54:12', '2023-05-22 02:54:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `landings`
--

CREATE TABLE `landings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `landings`
--

INSERT INTO `landings` (`id`, `brand_id`, `category_id`, `url`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 3, 'https://nhakhoaparis.vn/tham-my-rang-tieu-chuan-phap.html', 1, '2023-05-22 02:18:39', '2023-06-12 08:01:15'),
(5, 2, 3, 'https://nhakhoaparis.vn/mat-rang-vinh-vien-thi-phai-lam-sao.html', 1, '2023-05-22 02:55:01', '2023-05-22 02:55:01'),
(7, 2, 4, 'https://nhakhoaparis.vn/bang-gia-boc-rang-su-chinh-hang-2023.html', 1, '2023-05-22 02:59:53', '2023-05-22 02:59:53'),
(8, 2, 2, 'https://nhakhoaparis.vn/chinh-nha-nieng-rang-3d-speed-invisalign-trong-suot.html', 1, '2023-05-25 07:45:41', '2023-05-25 07:45:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
(13, '2023_04_20_072428_create_prices_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02591f724099864e5d8953042127dc38508c41cf81d7522e73b36187b28bdac3f68a24e995a76818', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:35:18', '2023-05-23 06:35:18', '2023-06-22 13:35:18'),
('02d2333bf04fb71cbeac5ccd03da9b134acdecb65ebc6a01353c5f46f07022ea2dfb0132fe4d50bf', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:22:39', '2023-05-23 06:22:39', '2023-06-22 13:22:39'),
('0be99f27270aac1695846eeb622a25e8fea8c046d64dedb76527b5aaadf9ce9dde45160c09328634', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:32:19', '2023-06-08 02:32:19', '2023-07-08 09:32:19'),
('0d2e8e57251ab6a18717aef5085ab27c754e44dfe7db2ebf7e771e795bcb81aae2a73e3d6eb1c080', 4, 1, 'PriceList', '[]', 0, '2023-05-25 08:43:52', '2023-05-25 08:43:52', '2023-06-24 15:43:52'),
('0d80a773d89454857b86909ce743990cb37e80fdc3546fcb016ae565ad119bb234a98e5737747e7e', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:37:56', '2023-06-08 02:37:56', '2023-07-08 09:37:56'),
('10e1e7db944ff8db83f64bb40a9732e26994650172d66584fb63710cd6af46c38575dd2e6115e004', 3, 1, 'PriceList', '[]', 0, '2023-05-19 08:18:59', '2023-05-19 08:18:59', '2023-06-18 15:18:59'),
('2267fdc72970049e3760a88ed48db3dbdcbdca7d4487b7585927d6c70231edf9e006d411c1529a7f', 4, 1, 'PriceList', '[]', 0, '2023-06-13 06:20:25', '2023-06-13 06:20:25', '2023-07-13 13:20:25'),
('244811c0e186cc09b5ddadb776197208d1ded90609a57e36dbec1df3e087db83b6a75cf76b336039', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:19:06', '2023-05-23 06:19:06', '2023-06-22 13:19:06'),
('2dff4f93a6d5bf3270facd99f00047a346f062e962000981383719bf1d21a5315dd193bfd3ae837e', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:34:01', '2023-06-08 03:34:01', '2023-07-08 10:34:01'),
('3352079643c91c63cb8aac6f43156462b19e0c3a9f137f087ec25cb6a55e648b713e62c3c5707672', 1, 1, 'PriceList', '[]', 0, '2023-06-02 06:27:26', '2023-06-02 06:27:26', '2023-07-02 13:27:26'),
('374c5c6c2076cd98c7eb9d181741182a7f92888fc912eafc600955686294a6a510606e7d425aa51d', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:01:24', '2023-06-08 03:01:24', '2023-07-08 10:01:24'),
('3be99ff77de4154fcab50e61145bcd73db991eb06fcb8301aa74ef886ad4b5d0e1715f9b4e61cce1', 1, 1, 'PriceList', '[]', 0, '2023-06-02 01:37:39', '2023-06-02 01:37:39', '2023-07-02 08:37:39'),
('3d6cde3da7841bcb004b75c1b1c4a8254780004c65d8e8c214802318fc55286677c51fc3e357b3c1', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:52:24', '2023-06-08 02:52:24', '2023-07-08 09:52:24'),
('3e4a89c35abdfb3f6f1bb17ed6c0ca8ea535b6425f6d37655d75e03f012f19cb136d95b50de27682', 4, 1, 'PriceList', '[]', 0, '2023-05-23 08:25:25', '2023-05-23 08:25:25', '2023-06-22 15:25:25'),
('4eed7fbc173631416e039fa609253cf786ab0f99b9b16efbf44efe577202dbc4fd31b96d37063d36', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:42:27', '2023-05-23 04:42:27', '2023-06-22 11:42:27'),
('5202f0c1b8b26b618e6902b90a6ce11cc9b50827594a2aff51f372fe4fa6bebd1157a49ea5d07b24', 4, 1, 'PriceList', '[]', 0, '2023-05-24 01:46:21', '2023-05-24 01:46:21', '2023-06-23 08:46:21'),
('573930fd6773a3ef05abffacdf52ffeb2f04852e178efd3caf2f024941bb9917b9f7469a56524365', 1, 1, 'PriceList', '[]', 0, '2023-05-23 08:25:15', '2023-05-23 08:25:15', '2023-06-22 15:25:15'),
('58f40c3d68a74eb23fa36294bc14285d07f9ba07275fa6da560a8c7488d436e05e0cfb0c5554b3ea', 1, 1, 'PriceList', '[]', 0, '2023-05-22 06:17:29', '2023-05-22 06:17:29', '2023-06-21 13:17:29'),
('597d49dd6ac2f443ad7be0454c5088be4a4a7d6705f1fc870ef807fe66d5a9945eba5bd2593738ce', 1, 1, 'PriceList', '[]', 0, '2023-06-02 07:02:00', '2023-06-02 07:02:00', '2023-07-02 14:02:00'),
('70345532db5c67a9e6d729461ddc805339921f987d03112f530001b5af91f5ce3bae8f2936035aa8', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:26:13', '2023-06-08 02:26:13', '2023-07-08 09:26:13'),
('714912fe77ba754460bc6a14bcfd9e9186c282e46435d0107afb2590ad02de3e68c71d693dbcbc34', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:33:37', '2023-05-23 06:33:37', '2023-06-22 13:33:37'),
('7321ec878d62649ac4f573e58fbe4f6eea7bcba38dff8908c4c17ddc5086eea22d6673b60922ddb7', 1, 1, 'PriceList', '[]', 0, '2023-06-08 01:45:03', '2023-06-08 01:45:03', '2023-07-08 08:45:03'),
('7656db44eac6c64d362bda93e8d5e16674b0783115a472b1c8d6ed29813e808859062d0ce73140d1', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:38:42', '2023-05-23 06:38:42', '2023-06-22 13:38:42'),
('8225112b86f96b9ed7515dd94fb36edcd2f72b86a6d9249aa345e65e99e351d0bc84fdc51f8fe952', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:44:56', '2023-05-23 04:44:56', '2023-06-22 11:44:56'),
('8b727eda4708e67fcda86f1427617c73fa6c62102b0db7604021a82d83fe8d8d3064ccce2bd6ee7b', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:35:46', '2023-05-23 04:35:46', '2023-06-22 11:35:46'),
('92c98641f3ab396453ad7e063bfcab790bf0e5d1051dcd763dec057ef3239f10bff3da409c2b0940', 1, 1, 'PriceList', '[]', 0, '2023-05-24 01:46:02', '2023-05-24 01:46:02', '2023-06-23 08:46:02'),
('9e1c64bbac43d8bf38af47c136f342db54319bac892765edd6dc81a3c134531fa73b741847249fd9', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:02:53', '2023-06-08 03:02:53', '2023-07-08 10:02:53'),
('a47a0fb4003e60bb660e59b3495f6dcd3ebea3e255866d517c287bbcea340a98a226637c7830668a', 4, 1, 'PriceList', '[]', 0, '2023-06-08 03:58:19', '2023-06-08 03:58:19', '2023-07-08 10:58:19'),
('a68ca0cac5171b6537504f4be85f4e569501676f9fc57ed215ef69dd082a916efa252daf896f9104', 1, 1, 'PriceList', '[]', 0, '2023-06-02 03:56:13', '2023-06-02 03:56:13', '2023-07-02 10:56:13'),
('aced66352375e0b42e0530c0860b46f51e3a56db15005b2ded4def39328e75409a2ae934b565d01d', 4, 1, 'PriceList', '[]', 0, '2023-06-02 01:37:55', '2023-06-02 01:37:55', '2023-07-02 08:37:55'),
('bea51f8a5850afa287db71f59783fcaab2ab37d49e672d14399b1ef5116d3870958cd5bd23bba1d7', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:36:00', '2023-05-23 06:36:00', '2023-06-22 13:36:00'),
('bea89555a81cdd1245580cdfeb835d3622b25b47748525cb96bb0c0b2cad2018a24d5cdcba2aa035', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:47:43', '2023-06-08 03:47:43', '2023-07-08 10:47:43'),
('c71e85e1d69b56f92cc1515e8b6de77c2b6d2a8a389d81e8097572fd6cb7191c37d0295df8b7c45d', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:42:27', '2023-05-23 04:42:27', '2023-06-22 11:42:27'),
('d74a3881ff3dc3f02f9842e876026a21109bc99c54436eae58260202730f4ca82c26f7fd41a188e2', 4, 1, 'PriceList', '[]', 0, '2023-05-23 08:23:35', '2023-05-23 08:23:35', '2023-06-22 15:23:35'),
('da3bfb2ca9e81bdcb2be6a18e59362d17d91b0619acfc7b98b4ec3102c4f38d1705569098e9470a1', 4, 1, 'PriceList', '[]', 0, '2023-05-22 06:29:28', '2023-05-22 06:29:28', '2023-06-21 13:29:28'),
('dd4c26cdb17c9f11340d64d0b8edacd718b4ac406414aeb62917814bb92c8d58a1a23104255472ae', 1, 1, 'PriceList', '[]', 0, '2023-05-25 08:43:34', '2023-05-25 08:43:34', '2023-06-24 15:43:34'),
('de703f19173192330d15f10b6ddf9d998a08b22ef5c256c2c2c6b1dac4d29c1cd8992f81620f71cf', 4, 1, 'PriceList', '[]', 0, '2023-06-02 04:00:21', '2023-06-02 04:00:21', '2023-07-02 11:00:21'),
('e04ede050ff38a7d0895146a75a75a0665dc81f03cd8325ae6f5a0df82c1d673d28fe99c362e1032', 1, 1, 'PriceList', '[]', 0, '2023-05-23 06:36:52', '2023-05-23 06:36:52', '2023-06-22 13:36:52'),
('e3061683901a2d4372e1dbfa8d5db79ca8e6102d63ca7d76fbd50200d349d0b28cc3783f54846a11', 1, 1, 'PriceList', '[]', 0, '2023-06-02 06:31:30', '2023-06-02 06:31:30', '2023-07-02 13:31:30'),
('e67da97e0f3fe93a3cac6c0b378412acbc07b4b85281ecc940567da7c634f5e92f2e98a1d57a6a2d', 1, 1, 'PriceList', '[]', 0, '2023-05-23 04:50:07', '2023-05-23 04:50:07', '2023-06-22 11:50:07'),
('e950cc460519c1f6be64bf294c61d7b6dd4508e187addbc18335cfa64930bfa98336605564135c9c', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:48:14', '2023-06-08 02:48:14', '2023-07-08 09:48:14'),
('eb8a6a775ccdfee7a39210c60fd1e1706d45dac18f1c55aacfdfe808031acb3e6d8aeb7caf98f897', 1, 1, 'PriceList', '[]', 0, '2023-06-08 02:50:24', '2023-06-08 02:50:24', '2023-07-08 09:50:24'),
('f4de9a9f79bcb92124db2a2dc6c9ba0f7539003dce94eb7345bbe78fde9354bb88ca742f98cbd355', 1, 1, 'PriceList', '[]', 0, '2023-06-08 03:47:25', '2023-06-08 03:47:25', '2023-07-08 10:47:25'),
('fd86a595899780fcff2e37b9107139bdb3e06f281908023d724ac1b2f1d54e1a4bb1f5cea3646385', 1, 1, 'PriceList', '[]', 0, '2023-05-19 08:17:37', '2023-05-19 08:17:37', '2023-06-18 15:17:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'NpeRqM5d2Tp77ENkMfehQihuqtlmzwpk2Pa4vbip', NULL, 'http://localhost', 1, 0, 0, '2023-05-19 08:01:21', '2023-05-19 08:01:21'),
(2, NULL, 'Laravel Password Grant Client', 'HyCBYqRhrEdAA5wbfhOjMn35hw5tijQOtHFNq1dF', 'users', 'http://localhost', 0, 1, 0, '2023-05-19 08:01:21', '2023-05-19 08:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-19 08:01:21', '2023-05-19 08:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landing_id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `promotion` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prices`
--

INSERT INTO `prices` (`id`, `landing_id`, `service`, `price`, `discount`, `promotion`, `note`, `created_at`, `updated_at`) VALUES
(1, 5, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '7 năm', '2023-06-12 09:04:48', '2023-06-12 09:04:48'),
(2, 5, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '7 năm', '2023-06-12 09:05:48', '2023-06-12 09:05:48'),
(3, 5, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '7 năm', '2023-06-12 09:05:49', '2023-06-12 09:05:49'),
(4, 5, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '7 năm', '2023-06-12 09:05:50', '2023-06-12 09:05:50'),
(5, 5, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '9 năm', '2023-06-12 09:08:30', '2023-06-12 09:08:30'),
(6, 5, 'Dio Hàn Quốc - Cao cấp', '1000000', '30', 'Tặng răng sứ', '1', '2023-06-12 09:55:25', '2023-06-12 09:55:25'),
(7, 5, 'Dio Hàn Quốc - Cao cấp', '1000000', '30', 'Tặng răng sứ', NULL, '2023-06-12 09:55:40', '2023-06-12 09:55:40'),
(8, 5, 'Dio Hàn Quốc - Cao cấp', '1000000', '30', 'Tặng răng sứ', NULL, '2023-06-12 09:56:26', '2023-06-12 09:56:26'),
(9, 5, 'Dio Hàn Quốc - Cao cấp', '1000000', '30', 'Tặng răng sứ', NULL, '2023-06-12 09:57:34', '2023-06-12 09:57:34'),
(10, 5, 'Dio Hàn Quốc - Cao cấp', '1000000', '90', 'Tặng răng sứ Titan', 'c', '2023-06-12 09:58:49', '2023-06-12 09:58:49'),
(11, 4, 'Dio Hàn Quốc - Tiêu chuẩn', '8000000', '45', 'Tặng răng sứ Titan', '9 nămx', '2023-06-13 06:22:44', '2023-06-13 07:34:33'),
(12, 4, 'test2', '5000000', '10', 'không có', 'sadacxzcvbx', '2023-06-13 06:23:18', '2023-06-13 07:31:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `brand_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đức', 'duc@gmail.com', NULL, '$2y$10$M/mrGlmqdTvKxWq0AAMejubSpKm5h9YEmSiODTbhNQ9d2MQ.Seo0.', NULL, '2023-05-19 08:09:17', '2023-05-19 08:09:17'),
(3, 1, 'Đức', 'duc2@gmail.com', NULL, '$2y$10$73JmldI9Y7WMUPEfWT0fZuPGTapkbJXTEmJXVfIUrpkOarm8YaCFW', NULL, '2023-05-19 08:14:17', '2023-05-19 08:14:17'),
(4, 2, 'Đức', 'ducpr@gmail.com', NULL, '$2y$10$vuTBEwMBBKtY7KKXK1CX8ux9veWHj7nZZyswlHZlpE7TJrMOQdyb2', NULL, '2023-05-22 06:29:12', '2023-05-22 06:29:12'),
(7, 2, 'Đức', 'ducpr1@gmail.com', NULL, '$2y$10$kHNbBcJDEXX2DQc0aBDhz.aoUeMaKPJhrxQb6gCFeRtvPbZgN4fzm', NULL, '2023-05-22 07:45:28', '2023-05-22 07:45:28'),
(8, 1, 'Nam', 'nam@gmail.com', NULL, '$2y$10$YA69.7lpsqNWT2tcFGU3b.dlN/cVgmF2F9BYimFfeUrWKHElbDOm.', NULL, '2023-05-22 07:48:20', '2023-05-22 07:48:20'),
(33, 1, 'Đức', 'duchh@gmail.com', NULL, '$2y$10$AYJFS0OT642Pvx/6RlYxmeTpeIwDbkUNtNi2qyN01GVfm2NrdYcFK', NULL, '2023-06-02 03:36:48', '2023-06-02 03:36:48'),
(37, 1, 'duc', 'duch@gmail.com', NULL, '$2y$10$q5KQPvjZs1tiidSuMe.dNOCYTeWe8Wf5r6aRPWGTv.LqxWCW7izmS', NULL, '2023-06-02 03:38:52', '2023-06-02 03:38:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `landings`
--
ALTER TABLE `landings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `landings`
--
ALTER TABLE `landings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
