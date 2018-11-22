-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 09:13 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codehacking`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bootstrap', NULL, NULL),
(2, 'Php', NULL, NULL),
(4, 'Laravel++', NULL, '2018-06-11 07:00:56'),
(6, 'Codeigniter', '2018-06-11 06:04:09', '2018-06-11 06:04:09'),
(7, 'Codeigniter', '2018-06-11 06:05:29', '2018-06-11 06:05:29'),
(8, 'Javascript', '2018-06-13 06:24:16', '2018-06-13 06:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `is_active`, `author`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'neha', 'neha@gmail.com', 'my first comment', '2018-06-11 23:15:00', '2018-06-12 02:32:01'),
(3, 3, 1, 'neha', 'neha@gmail.com', 'Love yaa', '2018-06-12 01:57:50', '2018-06-12 02:32:04'),
(4, 6, 1, 'Kanishka', 'tgkanishka04@gmail.com', 'yeah its me', '2018-06-13 06:58:06', '2018-06-13 06:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `is_active`, `author`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'neha', 'neha@gmail.com', 'hehe', '2018-06-12 05:02:05', '2018-06-12 08:38:14'),
(2, 1, 1, 'neha', 'neha@gmail.com', 'hey', '2018-06-12 06:23:57', '2018-06-12 08:47:23'),
(3, 4, 1, 'Kanishka', 'tgkanishka04@gmail.com', 'this was awesome', '2018-06-13 07:10:23', '2018-06-13 07:16:57'),
(4, 4, 1, 'Kanishka', 'tgkanishka04@gmail.com', 'as  it is', '2018-06-13 07:29:23', '2018-06-13 07:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2018_05_28_184229_create_roles_table', 1),
(15, '2018_06_09_055000_add_photo_id_to_users', 1),
(16, '2018_06_09_083325_create_photos_table', 1),
(17, '2018_06_10_112151_create_posts_table', 1),
(18, '2018_06_11_050905_create_categories_table', 1),
(19, '2018_06_11_143100_create_comments_table', 2),
(20, '2018_06_11_143241_create_comment_replies_table', 2),
(21, '2018_06_12_153049_add_slug_column_to_posts_tables', 3),
(22, '2018_06_13_113245_add_file_column_to_photos_tables', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `created_at`, `updated_at`, `file`) VALUES
(1, '2018-06-13 06:07:27', '2018-06-13 06:07:27', '1528889847IMG_20161219_193150.jpg'),
(2, '2018-06-13 06:13:03', '2018-06-13 06:13:03', '1528890183IMG_20161219_193150.jpg'),
(3, '2018-06-13 06:19:20', '2018-06-13 06:19:20', '1528890560IMG-20160831-WA0035.jpg'),
(4, '2018-06-13 06:39:22', '2018-06-13 06:39:22', '15288917621462993928image_4.jpg'),
(5, '2018-06-13 08:46:09', '2018-06-13 08:46:09', '15288993691461523051image_3.jpg'),
(6, '2018-06-13 08:48:57', '2018-06-13 08:48:57', '15288995371461523051image_3.jpg'),
(7, '2018-06-13 08:53:28', '2018-06-13 08:53:28', '15288998081461523058image_2.jpg'),
(8, '2018-06-13 08:55:31', '2018-06-13 08:55:31', '15288999311472781731image_1.jpg'),
(9, '2018-06-13 08:56:26', '2018-06-13 08:56:26', '15288999861472781731image_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`, `slug`) VALUES
(3, 2, 1, NULL, 'Bootstrap update', 'this is bootstrap haha lovely', '2018-06-11 05:09:23', '2018-06-12 10:15:32', 'bootstrap-update'),
(4, 2, 4, NULL, 'Laravel', 'Laravel is love', '2018-06-12 01:59:54', '2018-06-12 01:59:54', NULL),
(5, 2, 4, NULL, 'Bootstrap update', 'second one', '2018-06-12 11:34:54', '2018-06-12 11:34:54', 'bootstrap-update-1'),
(6, 3, 8, 4, 'Javascript', 'It is one of the best thing happened to web development', '2018-06-13 06:25:58', '2018-06-13 06:39:22', 'javascript');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'author', NULL, NULL),
(3, 'subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(2, 1, 1, 'neha', 'neha@gmail.com', '$2y$10$O3CPmed7BzGbvNt/hWM/OeE3en22dyXtI78WGOsTsvOS.W5Bou5qW', '7nqVeYSoFTTx3N55ndnVnAQRdUd8bzyarF3EQqx5OXwbg6nL8bOSCwzgFqza', '2018-06-11 05:01:27', '2018-06-11 05:01:27', '0'),
(3, 1, 1, 'Kanishka', 'tgkanishka04@gmail.com', '$2y$10$QlXoD9Jp4PKeQVH..nBUOul5XKKObNwyWBulEyWHRrQDPappMfey.', 'dTR8xVIvzZ8NtIBL06rF5qntQSrzOMsqLBEXwvdlZrum1Dy2HegVj7tr5NR7', '2018-06-12 12:42:50', '2018-06-13 06:19:20', '3'),
(4, 1, 1, 'Priyanshu', 'ceo@rtgstudios.in', '$2y$10$o/DRBaU5KGhsxJbFGany9.cmTd.2QFEpuPoX/D8Lmkf8Ry/j7qm2C', '2WGMZeyKOOScOZUeeQAUnOZyiEoYDXvhf69dhA60sUnLEe5BRvp5cZbvVSPY', '2018-06-13 05:38:52', '2018-06-13 06:13:03', '2'),
(5, 2, 0, 'Siddhi', 'jainsiddhi@gmail.com', '$2y$10$SJ1WzZnBMx02sfuWWxO1ke6zn2KybUo37plqqVo.ze5H8x/H8Ut4y', 'Vc3FwEFtqXGNW7fwRH4WHKIU4zcJJY9MDWoqsZgAIiTTW9BruU7Q45EXgMv8', '2018-06-13 08:22:55', '2018-06-13 08:22:55', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_comment_id_index` (`comment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
