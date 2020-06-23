-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 12:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_table_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name`, `image`, `detail`, `status`, `created`) VALUES
(1, 'Máy công nghiệp', '1585046063-maymay.jfif', 'Máy công nghiệp', 1, 1592295758),
(2, 'Máy gia công', '1585046082-maytutlua.jfif', '	Máy gia công', 1, 1584785457),
(3, 'Máy vệ sinh', '1585046158-maygatlienhop.jpg.jfif', 'Máy vệ sinh', 1, 1584785457),
(4, 'Máy nông nghiệp', '1585046027-maydapxe.jfif', 'Máy nông nghiệp', 1, 1234567),
(5, 'Máy xây dựng', '1585046063-maymay.jfif', 'Máy xây dựng', 1, 1234567),
(45, 'Honda', NULL, 'Honda Motor Company, Ltd. is a Japanese public multinational conglomerate corporation primarily known as a manufacturer of automobiles, motorcycles, and power equipment.', 1, 1592295829);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `name`, `content`, `created`) VALUES
(1, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(2, 124215, 1254211, 'Đổi bảo hành', 'sản phẩm có vấn đề', '2020-02-02'),
(3, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(4, 1321564, 5454512, 'Cho em hỏi', 'tư vấn sản phẩm', '2020-02-02'),
(5, 2147483647, 212312321, 'Máy hút', 'Bảo trì', '2012-12-14'),
(6, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(7, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(11, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(12, 2154545, 54546455, 'Không mua hang', 'Sản phẩm ok', '2020-02-04'),
(13, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(14, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(15, 124215, 1254211, 'Đổi bảo hành', 'sản phẩm có vấn đề', '2020-02-02'),
(16, 1321564, 5454512, 'Cho em hỏi', 'tư vấn sản phẩm', '2020-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `url`, `created`) VALUES
(15, '1592902795.jpg', 'http://localhost/blog/public/images/1592902795.jpg', 1592902795),
(16, '1592902807.jpg', 'http://localhost/blog/public/images/1592902807.jpg', 1592902807),
(17, '1592902813.jpg', 'http://localhost/blog/public/images/1592902813.jpg', 1592902813),
(18, '1592902824.jpg', 'http://localhost/blog/public/images/1592902824.jpg', 1592902824),
(19, '1592903043.jpg', 'http://localhost/blog/public/images/1592903043.jpg', 1592903043),
(20, '1592907270.jpg', 'http://localhost/blog/public/images/1592907270.jpg', 1592907270),
(21, '1592907284.jpg', 'http://localhost/blog/public/images/1592907284.jpg', 1592907284),
(22, '1592907504.jpg', 'http://localhost/blog/public/images/1592907504.jpg', 1592907504),
(23, '1592907672.jpg', 'http://localhost/blog/public/images/1592907672.jpg', 1592907672);

-- --------------------------------------------------------

--
-- Table structure for table `loyal_customers`
--

CREATE TABLE `loyal_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_06_22_073314_loyal_customers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `order_date` int(11) NOT NULL,
  `deliver_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `status`, `order_date`, `deliver_date`) VALUES
(1, 1, 'HCM', 1, 20200202, 20200203),
(4, 2, 'Vinh Long', 1, 20200227, 20200204),
(5, 3, 'HCM', 1, 20200202, 20200203),
(6, 4, 'Vinh Long', 0, 20200227, 20200204),
(7, 1, 'ha noi', 1, 20200202, 20200203),
(8, 2, 'dak nong', 1, 20200227, 20200204);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(4, 4, 333, 3),
(5, 1, 6, 10),
(6, 4, 444, 10),
(39, 1, 2, 54),
(40, 4, 1, 30),
(41, 15, 32, 48),
(43, 54654, 54654, 564564);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `status`, `image`, `picture`, `description`, `detail`, `price`, `created`) VALUES
(1, 1, 'Máy công nghiệp', 0, '1585133667-avarta.jpg.jfif', 'Máy lau chén', 'Máy lau chén', 'Máy công nghiệp', 150000, 1592295263),
(333, 2, 'Máy may', 1, '1585040441-maymay.jfif', 'Máy may', 'Máy may', 'Máy may', 1500000, 1592276378),
(444, 3, 'Máy quạt', 1, '1585040589-maylaukinh.jfif', 'Máy quạt', 'Máy quạt', 'Máy quạt', 500000, 20141215),
(222261, 4, 'Máy gặt liên hợp ', 1, '1585050069-maygatlienhop.jpg.jfif', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 150000, 20140203),
(222262, 3, 'Máy lau kính', 1, '1585036691-abc.jfif', 'Máy lau kính', 'Máy lau kính', 'Máy lau kính', 10000, 1591943981),
(222263, 5, 'Máy xúc', 1, '1585050053-456.jfif', 'Máy nước nóng', 'Máy nước nóng', 'Máy nước nóng', 200000, 21523521),
(222266, 1, 'Máy cưa', 0, '1585036691-abc.jfif', 'Máy lau kính', 'Máy lau kính', 'Máy lau kính', 10000, 25123212),
(222270, 1, 'Máy kéo', 0, NULL, NULL, 'Máy kéo', 'Máy kéo', 125999000, 1592295294),
(222274, NULL, 'Máy lau chén1', 1, NULL, NULL, 'Máy lau chén', 'Máy lau chén', 150000, 1591941178),
(222278, 5, 'Máy trộn bê tông', 1, NULL, NULL, 'Máy trộn bê tông tốc độ cao ', 'Máy trộn bê tông tốc độ cao ', 12000000, 1591971542),
(222279, 4, 'máy phát cỏ', 1, NULL, NULL, 'máy phát cỏ', 'máy phát cỏ', 2000000, 1591978633),
(222282, 2, 'Máy hàn kim loại', 1, NULL, NULL, 'Máy hàn kim loại', 'Máy hàn kim loại', 7999000, 1592295332);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `address`, `phone`, `image`, `created`, `status`, `level`) VALUES
(55, NULL, 'caovananhdn@gmail.com', 'user123', '202cb962ac59075b964b07152d234b70', 'Thu duc district  , HCMC', 969137449, NULL, NULL, NULL, 0),
(56, NULL, 'nguyendinhthanh48fc@gmail.com', 'caovananh', '202cb962ac59075b964b07152d234b70', 'Thu duc district  , HCMC', 969137449, NULL, NULL, NULL, 0);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyal_customers`
--
ALTER TABLE `loyal_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `loyal_customers`
--
ALTER TABLE `loyal_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222283;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
