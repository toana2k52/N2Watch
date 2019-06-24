-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2019 lúc 08:40 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watch_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(3) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `birthday`, `address`, `phone`, `password`, `position`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dương Huy Toàn', 'admin@gmail.com', '2019-05-01', 'Hà Nội', '0979433905', '$2y$10$CQgce1L2qaieWJkVeP06feR1Xl32pcTJBuIhybrY7j1ZSbYm6sd1S', 1, 0, '4QTGBHdaSo9V7fScC6ymtQhqnrSdjP5rpc2dzHAI5XhfVOw7bIqynqtzq3y4', '2019-05-08 16:12:56', '2019-05-08 16:12:56'),
(2, 'Bà Tân Vlog', 'admin2@gmail.com', '1998-08-19', 'Hà Nội', '012365412', '$2y$10$JrC81FoqfB71FM.3efcY3uAJ7lngQWqxP8k/e7ZLHt4YVg/KkMt6u', 0, 0, NULL, '2019-05-08 14:30:33', '2019-05-22 17:36:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CASIO', 'casio', '<p style=\"text-align:center\">ĐẸP</p>', 0, '2019-05-08 09:16:07', '2019-05-08 09:19:12'),
(2, 'G-SHOCK', 'g-shock', '<p style=\"text-align:center\">ĐẸP</p>', 0, '2019-05-08 09:18:59', '2019-06-13 15:56:25'),
(3, 'CITIZEN', 'citizen', '<p>ĐẸP</p>', 0, '2019-05-08 13:57:46', '2019-05-08 13:57:46'),
(4, 'SEIKO', 'seiko', '<p>ĐẸP</p>', 0, '2019-05-08 13:58:07', '2019-05-08 13:58:07'),
(5, 'CANDINO', 'candino', '<p>ĐẸP</p>', 0, '2019-05-08 14:01:53', '2019-05-08 14:01:53'),
(6, 'XIAOMI', 'xiaomi', '<p>ĐẸP</p>', 0, '2019-05-08 14:02:31', '2019-05-08 14:02:31'),
(7, 'SAMSUNG', 'samsung', '<p>ĐẸP</p>', 0, '2019-05-08 14:04:04', '2019-05-08 14:04:04'),
(8, 'APPLE', 'apple', '<p>ĐẸP</p>', 0, '2019-05-08 14:04:24', '2019-05-08 14:04:24'),
(9, 'HUAWEI', 'huawei', '<p>ĐẸP</p>', 0, '2019-05-08 14:04:47', '2019-05-08 14:04:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ĐỒNG HỒ NAM', 'dong-ho-nam', 0, 0, '2019-05-08 09:16:53', '2019-05-08 09:16:53'),
(2, 'ĐỒNG HỒ NỮ', 'dong-ho-nu', 0, 0, '2019-05-08 09:17:04', '2019-05-08 09:17:04'),
(4, 'ĐỒNG HỒ THỂ THAO', 'dong-ho-the-thao', 0, 0, '2019-05-08 09:17:25', '2019-05-08 09:17:25'),
(5, 'ĐỒNG HỒ ĐIỆN TỬ', 'dong-ho-dien-tu', 0, 0, '2019-05-08 09:17:46', '2019-05-08 09:17:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `user_email`, `user_phone`, `user_address`, `quantity`, `status`, `note`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Bà Tân Vlog', 'batan@gmail.com', '0354859494', 'Youtube', 3, 3, 'Lỗi đặt hàng', 1, '2019-05-22 16:12:54', '2019-05-22 16:35:26'),
(2, 'Bà Tân Vlog 2', 'batantv@gmail.com', '0354859495', 'Youtube', 3, 1, NULL, 1, '2019-05-22 16:34:45', '2019-05-22 16:35:08'),
(3, 'Dương Huy Toàn', 'Huytoana2k52@gmail.com', '0979433905', 'Triều Khúc, Thanh Xuân, Hà Nội', 5, 0, NULL, 1, '2019-05-22 17:09:02', '2019-05-22 17:09:02'),
(4, 'Toàn ht22', 'toanht22@gmail.com', '0123456789', 'Hà Nội', 2, 2, NULL, 1, '2019-05-23 08:52:48', '2019-05-23 08:53:46'),
(5, 'Tuấn yêu Hường', 'TuanHuong@gmail.com', '0124154127', 'Quảng Ninh', 2, 0, NULL, 1, '2019-06-13 16:31:41', '2019-06-13 16:31:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float(15,3) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `orders_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 11850000.000, 2, '2019-05-22 16:34:45', '2019-05-22 16:34:45'),
(2, 2, 5, 2200000.000, 1, '2019-05-22 16:34:45', '2019-05-22 16:34:45'),
(3, 3, 4, 2650000.000, 2, '2019-05-22 17:09:03', '2019-05-22 17:09:03'),
(4, 3, 5, 2200000.000, 1, '2019-05-22 17:09:03', '2019-05-22 17:09:03'),
(5, 3, 7, 11850000.000, 2, '2019-05-22 17:09:03', '2019-05-22 17:09:03'),
(6, 4, 7, 11850000.000, 2, '2019-05-23 08:52:48', '2019-05-23 08:52:48'),
(7, 5, 5, 2200000.000, 2, '2019-06-13 16:31:41', '2019-06-13 16:31:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `price_sale` double DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `category_id`, `brand_id`, `image`, `price`, `price_sale`, `view`, `status`, `created_at`, `updated_at`) VALUES
(3, 'G-shock GBA-800-8ADR', 'g', 4, 2, '2019-05-08-02-45-22lenovo-yoga-520-14ikb-i3-7130u-8080106vn-450x300.jpg', 4020000, 3800000, 0, 0, '2019-05-08 14:22:45', '2019-05-18 17:50:15'),
(4, 'Casio AMW-810D-1AVDF', 'casio-amw-810d-1avdf', 1, 1, '2019-05-08-02-26-29casio-amw-810d-1avdf-bac-nt-600x600.jpg', 2870000, 2650000, 0, 0, '2019-05-08 14:29:26', '2019-05-08 14:29:26'),
(5, 'Casio LTP-2089L-4AVDF', 'casio-ltp-2089l-4avdf', 2, 1, '2019-05-08-02-31-38casio-ltp-2089l-4avdf-hong-600x600.jpg', 2310000, 2200000, 0, 0, '2019-05-08 14:38:31', '2019-05-08 14:38:31'),
(6, 'Citizen CA7001-87L - Eco-Drive', 'citizen-ca7001-87l-eco-drive', 1, 3, '2019-05-08-02-58-40citizen-ca7001-87l-xanh-600x600.jpg', 9300000, 8950000, 0, 0, '2019-05-08 14:40:58', '2019-05-08 14:40:58'),
(7, 'Apple Watch S4 GPS 44mm', 'apple-watch-s4-gps-44mm', 5, 8, '2019-05-08-02-22-44apple-watch-s4-gps-44mm-vien-nhom-day-cao-su-den-nt-600x600.jpg', 12490000, 11850000, 0, 0, '2019-05-08 14:44:22', '2019-05-08 14:44:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `glass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `face_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `product_id`, `amount`, `content`, `type`, `size`, `glass`, `material`, `face_type`, `warranty`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 20, '<p>Đẹp</p>', 'Nhựa', 'Dày 15.5 mm - Rộng 48.6 mm - Dài 54.1 mm', 'Kính khoáng', 'Nhựa PC', 'Tròn', '12 tháng', 0, '2019-05-08 14:22:45', '2019-05-18 17:50:15'),
(4, 4, 18, '<p>Đẹp</p>', 'Kim loại', 'Dày 12.6 mm - Rộng 46.6 mm - Dài 51 mm', 'Kính khoáng', 'Thép không gỉ', 'Tròn', '12 tháng', 0, '2019-05-08 14:29:26', '2019-05-22 17:09:03'),
(5, 5, 11, '<p>Đẹp</p>', 'Da', 'Dày 9.2 mm - Rộng 33.4 mm - Dài 37 mm', 'Kính khoáng', 'Thép không gỉ', 'Tròn', '12 tháng', 0, '2019-05-08 14:38:31', '2019-06-13 16:31:41'),
(6, 6, 20, '<p>Đẹp</p>', 'Kim loại', 'Đang cập nhật', 'Kính khoáng', 'Thép không gỉ', 'Tròn', '24 tháng', 0, '2019-05-08 14:40:58', '2019-05-08 14:40:58'),
(7, 7, 9, '<p>Đẹp</p>', 'Silicone', 'Đường kính 44 mm - Dày 10.7 mm', 'Ion-X strengthened glass', 'Nhôm', 'AMOLED', '24 tháng', 0, '2019-05-08 14:44:22', '2019-05-23 08:52:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, '2019-05-08-02-04-26g-shock-gba-800-8adr-xam-1-1.jpg', 0, '2019-05-08 14:26:04', '2019-05-08 14:26:04'),
(4, 3, '2019-05-08-02-16-26g-shock-gba-800-8adr-xam-2.jpg', 0, '2019-05-08 14:26:16', '2019-05-08 14:26:16'),
(5, 3, '2019-05-08-02-16-26g-shock-gba-800-8adr-xam-3.jpg', 0, '2019-05-08 14:26:16', '2019-05-08 14:26:16'),
(6, 3, '2019-05-08-02-16-26g-shock-gba-800-8adr-xam-5-1.jpg', 0, '2019-05-08 14:26:16', '2019-05-08 14:26:16'),
(7, 3, '2019-05-08-02-16-26g-shock-gba-800-8adr-xam-6-1.jpg', 0, '2019-05-08 14:26:16', '2019-05-08 14:26:16'),
(8, 3, '2019-05-08-02-16-26g-shock-gba-800-8adr-xam-8.jpg', 0, '2019-05-08 14:26:16', '2019-05-08 14:26:16'),
(9, 4, '2019-05-08-02-40-29casio-amw-810d-1avdf-bac1.jpg', 0, '2019-05-08 14:29:40', '2019-05-08 14:29:40'),
(10, 4, '2019-05-08-02-40-29casio-amw-810d-1avdf-bac2.jpg', 0, '2019-05-08 14:29:40', '2019-05-08 14:29:40'),
(11, 4, '2019-05-08-02-40-29casio-amw-810d-1avdf-bac3.jpg', 0, '2019-05-08 14:29:40', '2019-05-08 14:29:40'),
(12, 4, '2019-05-08-02-40-29casio-amw-810d-1avdf-bac4.jpg', 0, '2019-05-08 14:29:40', '2019-05-08 14:29:40'),
(13, 4, '2019-05-08-02-41-29casio-amw-810d-1avdf-bac5.jpg', 0, '2019-05-08 14:29:41', '2019-05-08 14:29:41'),
(14, 4, '2019-05-08-02-41-29casio-amw-810d-1avdf-bac6.jpg', 0, '2019-05-08 14:29:41', '2019-05-08 14:29:41'),
(15, 5, '2019-05-08-02-53-38casio-ltp-2089l-4avdf-hong-2-180x125.jpg', 0, '2019-05-08 14:38:53', '2019-05-08 14:38:53'),
(16, 5, '2019-05-08-02-53-38casio-ltp-2089l-4avdf-hong-3-180x125.jpg', 0, '2019-05-08 14:38:53', '2019-05-08 14:38:53'),
(17, 5, '2019-05-08-02-53-38casio-ltp-2089l-4avdf-hong-4-180x125.jpg', 0, '2019-05-08 14:38:53', '2019-05-08 14:38:53'),
(18, 7, '2019-05-08-02-42-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-1-1.jpg', 0, '2019-05-08 14:44:42', '2019-05-08 14:44:42'),
(20, 7, '2019-05-08-02-43-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-4.jpg', 0, '2019-05-08 14:44:43', '2019-05-08 14:44:43'),
(21, 7, '2019-05-08-02-43-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-5.jpg', 0, '2019-05-08 14:44:43', '2019-05-08 14:44:43'),
(22, 7, '2019-05-08-02-43-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-7.jpg', 0, '2019-05-08 14:44:43', '2019-05-08 14:44:43'),
(23, 7, '2019-05-08-02-43-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-8.jpg', 0, '2019-05-08 14:44:43', '2019-05-08 14:44:43'),
(24, 7, '2019-05-08-02-43-44apple-watch-s4-gps-44mm-vien-nhom-xam-day-cao-su-m-9.jpg', 0, '2019-05-08 14:44:43', '2019-05-08 14:44:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_admin` (`admin_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_detail_orders` (`orders_id`),
  ADD KEY `FK_orders_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_category` (`category_id`),
  ADD KEY `FK_product_brand` (`brand_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_image_product` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_orders_detail_orders` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_orders_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `FK_product_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
