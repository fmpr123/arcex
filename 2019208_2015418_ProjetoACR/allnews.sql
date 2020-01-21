-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 11:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allnews`
--

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
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2020_01_07_012243_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `video`, `owner_id`, `created_at`, `updated_at`) VALUES
(4, 'Here we go again', 'uygawgyuawyudgaduyggyudgyuadwgyuwdyugdwagyauywgduyagwuydgauywgdyu\r\naygwuydgauywgduaygwduygayuwdg\r\naohwdhaiuwdhiahwdiuahwhdaihwdiuhad', '/uploads/images/here-we-go-again_1578519554.jpg', NULL, 1, '2020-01-08 21:39:14', '2020-01-08 21:39:14'),
(5, 'Just a Test123', 'Hi there uahwiduahwdawuhdiuahdiuhaiuwhda\r\nhawdhaiwdhiawgdagwdiugawydauwdgauywgduyagwduyawd\r\naghwdygawudgauydgauwygduaygwudyaguwydgauywgdyuagwd', '/uploads/images/just-a-test123_1578571355.jpg', NULL, 1, '2020-01-09 11:23:03', '2020-01-09 12:02:35'),
(6, 'Random Title', 'Just another random New heheheehehehehehehehhee', '/uploads/images/random-title_1578571442.jpg', NULL, 1, '2020-01-09 12:04:02', '2020-01-10 18:44:53'),
(7, 'yeeeeeeeet', 'awdadwadwdwadwaadwawddawwadadwwdwaddwaawddaw\r\ndawawdadwadwwadadwadwawdawd\r\nthrthrthrhtrhrtthrhrthrthrtrthrth\r\nrhthrthrtrhtrthhhrth', '/uploads/images/yeeeeeeeet_1578571473.jpg', NULL, 1, '2020-01-09 12:04:33', '2020-01-09 12:04:33'),
(8, 'Lolitas', 'agwduyagwudguaywgduaygwuydgaugwdugauwguagwuygdyugd\r\njidwhdwuhdwuhwdauhidwahuidwauhidawuhidawuih\r\ndddsdddddddwadawdawdawdawdawdawdawd', '/uploads/images/lolitas_1578677643.jpg', 'https://www.youtube.com/embed/s4gBChg6AII', 2, '2020-01-10 17:34:03', '2020-01-11 18:39:07'),
(9, 'USA versus Iran', 'wygduyagwdyugawuygduyagwydgayuwgdyuagwdygaw\r\nyudgauywgduyagwyudgayuwgdakokopkoppopokpok\r\najwdojawidjoajwojaowjdoajowijda\r\ndjapwoijdaiwjdoajwdoiajdoiajoiwjdoaijwoidja\r\nowijdoaijwdoiajowijdoiajwdoijaowijdiojawd\r\npsjefisejfiojfsoijeoifjsoiejfoisjeoifjsoiejf', '/uploads/images/usa-versus-iran_1578696121.jpg', NULL, 3, '2020-01-10 22:42:01', '2020-01-10 22:42:53');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_image`, `email_verified_at`, `password`, `isAdmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '/uploads/images/admin_1578508690.jpg', NULL, '$2y$10$X7rLbVVIU4O09KIgM8CFluXUe7/MKid95gfhBDZwRYVHHeKPF/I8y', 1, 'X2EohFYkDO7c3m6CZCdmJEIgW5eSyXE73jLt1IHdr9XHtRykaoq1zcgLL3FB', '2020-01-07 03:09:08', '2020-01-08 18:38:10'),
(2, 'User', 'user@gmail.com', '/uploads/images/user_1578677589.jpg', NULL, '$2y$10$sIcYkPJEfndhHd9kK0hbRuK68gkUSs0a6lmphKRqIFxd5BjRg0Fpm', 0, NULL, '2020-01-10 17:32:40', '2020-01-10 17:33:09'),
(3, 'Teste', 'teste@gmail.com', NULL, NULL, '$2y$10$ba5f33d0cKYDYjrihiy2..UVvJhxyCHclPag5RNkRY7I0gYcKQHsS', 0, NULL, '2020-01-10 20:25:07', '2020-01-10 20:31:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
