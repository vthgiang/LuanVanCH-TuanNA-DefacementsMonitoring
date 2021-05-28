-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2021 lúc 04:37 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `page_monitor`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `extra` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `extra`) VALUES
(2133, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 0:50:4.23', '{\"left\":\"1616089145085\",\"right\":1616089802260,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616089145085-1616089802260.jpg\",\"count\":{\"add\":1,\"remove\":20,\"style\":0,\"text\":0}}', 1),
(2141, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:3:8.72', '{\"left\":\"1616090404603\",\"right\":1616090586101,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616090404603-1616090586101.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2142, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:5:6.820', '{\"left\":\"1616090586101\",\"right\":1616090704875,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616090586101-1616090704875.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2143, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:6:6.562', '{\"left\":\"1616090704875\",\"right\":1616090764640,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616090704875-1616090764640.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2144, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:7:7.510', '{\"left\":\"1616090764640\",\"right\":1616090825422,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616090764640-1616090825422.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2145, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:11:7.799', '{\"left\":\"1616090825422\",\"right\":1616091065283,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616090825422-1616091065283.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2146, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:12:6.999', '{\"left\":\"1616091065283\",\"right\":1616091125124,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616091065283-1616091125124.jpg\",\"count\":{\"add\":3,\"remove\":5,\"style\":0,\"text\":0}}', 1),
(2147, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:13:6.448', '{\"left\":\"1616091125124\",\"right\":1616091184560,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616091125124-1616091184560.jpg\",\"count\":{\"add\":3,\"remove\":2,\"style\":0,\"text\":0}}', 1),
(2148, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 1:16:7.399', '{\"left\":\"1616091184560\",\"right\":1616091365553,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616091184560-1616091365553.jpg\",\"count\":{\"add\":2,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2150, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:33:13.668', '{\"left\":\"1616059593611\",\"right\":1616121187049,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616059593611-1616121187049.jpg\",\"count\":{\"add\":1,\"remove\":2,\"style\":2,\"text\":0}}', 1),
(2151, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:33:14.183', '{\"left\":\"1616091365553\",\"right\":1616121191019,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616091365553-1616121191019.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2152, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:34:14.593', '{\"left\":\"1616121187049\",\"right\":1616121249008,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616121187049-1616121249008.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":24,\"text\":0}}', 1),
(2153, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:35:10.969', '{\"left\":\"1616121191019\",\"right\":1616121307716,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616121191019-1616121307716.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2154, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:35:14.303', '{\"left\":\"1616121249008\",\"right\":1616121310139,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616121249008-1616121310139.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":24,\"text\":0}}', 1),
(2155, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:36:0.121', '{\"left\":\"1616121310139\",\"right\":1616121356137,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616121310139-1616121356137.jpg\",\"count\":{\"add\":2,\"remove\":3,\"style\":228,\"text\":0}}', 1),
(2156, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:36:11.616', '{\"left\":\"1616121307716\",\"right\":1616121369629,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616121307716-1616121369629.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2157, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:37:10.825', '{\"left\":\"1616121356137\",\"right\":1616121424915,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616121356137-1616121424915.jpg\",\"count\":{\"add\":3,\"remove\":2,\"style\":250,\"text\":0}}', 1),
(2158, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:37:12.936', '{\"left\":\"1616121369629\",\"right\":1616121429745,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616121369629-1616121429745.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2159, 'Website http://nawapi.gov.vn bị thay đổi vào 19/3/2021 9:37:44.726', '{\"left\":\"1616121424915\",\"right\":1616121460263,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\nawapi.gov.vn\\\\Lw==/diff/1616121424915-1616121460263.jpg\",\"count\":{\"add\":1,\"remove\":2,\"style\":24,\"text\":0}}', 1),
(2160, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:44:13.889', '{\"left\":\"1616121429745\",\"right\":1616121851663,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616121429745-1616121851663.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2161, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:48:15.242', '{\"left\":\"1616121851663\",\"right\":1616122093293,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616121851663-1616122093293.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2162, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:49:12.343', '{\"left\":\"1616122093293\",\"right\":1616122149924,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616122093293-1616122149924.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2163, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 19/3/2021 9:50:9.759', '{\"left\":\"1616122149924\",\"right\":1616122207831,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616122149924-1616122207831.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2165, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:1:17.459', '{\"left\":\"1616122207831\",\"right\":1616209275551,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616122207831-1616209275551.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2166, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:2:8.81', '{\"left\":\"1616209275551\",\"right\":1616209326177,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616209275551-1616209326177.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2167, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:27:14.402', '{\"left\":\"1616209326177\",\"right\":1616210832550,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616209326177-1616210832550.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2168, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:28:9.162', '{\"left\":\"1616210832550\",\"right\":1616210887273,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616210832550-1616210887273.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2169, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:54:13.475', '{\"left\":\"1616210887273\",\"right\":1616212451705,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616210887273-1616212451705.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2170, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 10:55:8.661', '{\"left\":\"1616212451705\",\"right\":1616212506642,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616212451705-1616212506642.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2171, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 13:1:10.524', '{\"left\":\"1616212506642\",\"right\":1616220068660,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616212506642-1616220068660.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2172, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 20/3/2021 13:2:8.668', '{\"left\":\"1616220068660\",\"right\":1616220126726,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616220068660-1616220126726.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2174, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:22:14.123', '{\"left\":\"1616372468383\",\"right\":1616372527522,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372468383-1616372527522.jpg\",\"count\":{\"add\":3,\"remove\":5,\"style\":0,\"text\":0}}', 1),
(2175, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:23:16.612', '{\"left\":\"1616372527522\",\"right\":1616372588490,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372527522-1616372588490.jpg\",\"count\":{\"add\":5,\"remove\":3,\"style\":0,\"text\":0}}', 1),
(2176, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:25:14.20', '{\"left\":\"1616372588490\",\"right\":1616372707959,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372588490-1616372707959.jpg\",\"count\":{\"add\":0,\"remove\":2,\"style\":0,\"text\":0}}', 1),
(2177, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:27:14.377', '{\"left\":\"1616372707959\",\"right\":1616372827020,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372707959-1616372827020.jpg\",\"count\":{\"add\":2,\"remove\":2,\"style\":0,\"text\":0}}', 1),
(2178, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:28:16.425', '{\"left\":\"1616372827020\",\"right\":1616372889125,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372827020-1616372889125.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2179, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:29:14.688', '{\"left\":\"1616372889125\",\"right\":1616372947601,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372889125-1616372947601.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2180, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:31:14.303', '{\"left\":\"1616372947601\",\"right\":1616373067693,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616372947601-1616373067693.jpg\",\"count\":{\"add\":7,\"remove\":5,\"style\":0,\"text\":0}}', 1),
(2181, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:32:13.626', '{\"left\":\"1616373067693\",\"right\":1616373127377,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373067693-1616373127377.jpg\",\"count\":{\"add\":3,\"remove\":3,\"style\":0,\"text\":0}}', 1),
(2182, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:33:14.359', '{\"left\":\"1616373127377\",\"right\":1616373187772,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373127377-1616373187772.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2183, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:36:14.233', '{\"left\":\"1616373187772\",\"right\":1616373367863,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373187772-1616373367863.jpg\",\"count\":{\"add\":3,\"remove\":3,\"style\":0,\"text\":0}}', 1),
(2184, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:37:14.454', '{\"left\":\"1616373367863\",\"right\":1616373427946,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373367863-1616373427946.jpg\",\"count\":{\"add\":3,\"remove\":5,\"style\":0,\"text\":0}}', 1),
(2185, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:39:14.897', '{\"left\":\"1616373427946\",\"right\":1616373548895,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373427946-1616373548895.jpg\",\"count\":{\"add\":2,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2186, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:40:14.442', '{\"left\":\"1616373548895\",\"right\":1616373607693,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373548895-1616373607693.jpg\",\"count\":{\"add\":0,\"remove\":2,\"style\":0,\"text\":0}}', 1),
(2187, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:41:13.914', '{\"left\":\"1616373607693\",\"right\":1616373667792,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373607693-1616373667792.jpg\",\"count\":{\"add\":2,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2188, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:42:14.207', '{\"left\":\"1616373667792\",\"right\":1616373727566,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373667792-1616373727566.jpg\",\"count\":{\"add\":0,\"remove\":2,\"style\":0,\"text\":0}}', 1),
(2189, 'Website https://dantri.com.vn bị thay đổi vào 22/3/2021 7:43:15.69', '{\"left\":\"1616373727566\",\"right\":1616373787241,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373727566-1616373787241.jpg\",\"count\":{\"add\":1,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2190, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:25:19.177', '{\"left\":\"1616220126726\",\"right\":1620267917286,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1616220126726-1620267917286.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2191, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:25:21.628', '{\"left\":\"1616373787241\",\"right\":1620267915818,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1616373787241-1620267915818.jpg\",\"count\":{\"add\":36,\"remove\":46,\"style\":0,\"text\":0}}', 1),
(2192, 'Website http://chinhphu.vn bị thay đổi vào 6/5/2021 9:26:12.760', '{\"left\":\"1616207766947\",\"right\":1620267968884,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\chinhphu.vn\\\\Lw==/diff/1616207766947-1620267968884.jpg\",\"count\":{\"add\":6,\"remove\":9,\"style\":1,\"text\":1}}', 1),
(2193, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:26:17.479', '{\"left\":\"1620267915818\",\"right\":1620267972547,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620267915818-1620267972547.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2194, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:26:31.608', '{\"left\":\"1620267917286\",\"right\":1620267989611,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620267917286-1620267989611.jpg\",\"count\":{\"add\":1,\"remove\":5,\"style\":0,\"text\":0}}', 1),
(2195, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:27:16.164', '{\"left\":\"1620267989611\",\"right\":1620268034540,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620267989611-1620268034540.jpg\",\"count\":{\"add\":5,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2196, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:28:11.752', '{\"left\":\"1620268034540\",\"right\":1620268089003,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620268034540-1620268089003.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2197, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:28:13.704', '{\"left\":\"1620267972547\",\"right\":1620268087536,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620267972547-1620268087536.jpg\",\"count\":{\"add\":2,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2198, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:29:11.962', '{\"left\":\"1620268087536\",\"right\":1620268146874,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620268087536-1620268146874.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2199, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:30:16.152', '{\"left\":\"1620268146874\",\"right\":1620268211732,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620268146874-1620268211732.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2200, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:31:12.180', '{\"left\":\"1620268089003\",\"right\":1620268270636,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620268089003-1620268270636.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2201, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:32:9.97', '{\"left\":\"1620268270636\",\"right\":1620268327495,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620268270636-1620268327495.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2202, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:34:10.647', '{\"left\":\"1620268327495\",\"right\":1620268449107,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620268327495-1620268449107.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2203, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:36:16.972', '{\"left\":\"1620268211732\",\"right\":1620268572261,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620268211732-1620268572261.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2204, 'Website http://10.1.101.72/forecasting/ bị thay đổi vào 6/5/2021 9:37:14.821', '{\"left\":\"1620268449107\",\"right\":1620268632276,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\10.1.101.72\\\\L2ZvcmVjYXN0aW5nLw==/diff/1620268449107-1620268632276.jpg\",\"count\":{\"add\":0,\"remove\":1,\"style\":0,\"text\":0}}', 1),
(2205, 'Website https://dantri.com.vn bị thay đổi vào 6/5/2021 9:37:20.553', '{\"left\":\"1620268572261\",\"right\":1620268633374,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\dantri.com.vn\\\\Lw==/diff/1620268572261-1620268633374.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2210, 'Website http://localhost/tiepcancntt/login.html bị thay đổi vào 16/5/2021 9:14:4.525', '{\"left\":\"1621127762538\",\"right\":1621131242889,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L2xvZ2luLmh0bWw=/diff/1621127762538-1621131242889.jpg\",\"count\":{\"add\":3,\"remove\":15,\"style\":2,\"text\":0}}', 1),
(2212, 'Website http://localhost/tiepcancntt/login.html bị thay đổi vào 16/5/2021 9:19:4.207', '{\"left\":\"1621131301977\",\"right\":1621131542518,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L2xvZ2luLmh0bWw=/diff/1621131301977-1621131542518.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2214, 'Website http://localhost/tiepcancntt/login.html bị thay đổi vào 16/5/2021 9:27:3.739', '{\"left\":\"1621131662003\",\"right\":1621132022080,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L2xvZ2luLmh0bWw=/diff/1621131662003-1621132022080.jpg\",\"count\":{\"add\":0,\"remove\":6,\"style\":0,\"text\":0}}', 1),
(2216, 'url', 'http://localhost/tiepcancntt/TrangChu.html', -1),
(2217, 'Website http://localhost/tiepcancntt/TrangChu.html bị thay đổi vào 16/5/2021 9:43:8.604', '{\"left\":\"1621132202270\",\"right\":1621132986345,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L1RyYW5nQ2h1Lmh0bWw=/diff/1621132202270-1621132986345.jpg\",\"count\":{\"add\":1,\"remove\":0,\"style\":0,\"text\":0}}', 1),
(2219, 'Website http://localhost/tiepcancntt/TrangChu.html bị thay đổi vào 16/5/2021 12:30:4.770', '{\"left\":\"1621133102631\",\"right\":1621143002470,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L1RyYW5nQ2h1Lmh0bWw=/diff/1621133102631-1621143002470.jpg\",\"count\":{\"add\":1,\"remove\":23,\"style\":0,\"text\":0}}', 1),
(2220, 'Website http://localhost/tiepcancntt/TrangChu.html bị thay đổi vào 16/5/2021 12:33:8.342', '{\"left\":\"1621143002470\",\"right\":1621143185088,\"screenshot\":\"C:\\\\xampp\\\\htdocs\\\\page-monitoring\\\\localhost\\\\L3RpZXBjYW5jbnR0L1RyYW5nQ2h1Lmh0bWw=/diff/1621143002470-1621143185088.jpg\",\"count\":{\"add\":23,\"remove\":1,\"style\":1,\"text\":0}}', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(191),`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
