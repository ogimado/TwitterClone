-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-12-19 10:18:30
-- サーバのバージョン： 10.4.20-MariaDB
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `twitter_clone`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `follows`
--

CREATE TABLE `follows` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `follow_user_id` int(11) NOT NULL,
  `followed_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `follows`
--

INSERT INTO `follows` (`id`, `status`, `follow_user_id`, `followed_user_id`, `created_at`, `updated_at`) VALUES
(1, 'deleted', 2, 3, '2021-02-19 07:05:49', '2021-10-20 23:25:30'),
(3, 'deleted', 2, 3, '2021-10-20 23:25:31', '2021-10-20 23:25:34'),
(4, 'deleted', 2, 3, '2021-10-20 23:25:37', '2021-10-20 23:25:39'),
(5, 'deleted', 2, 3, '2021-10-20 23:25:42', '2021-10-20 23:25:45'),
(6, 'deleted', 2, 3, '2021-10-20 23:27:28', '2021-10-20 23:27:29'),
(7, 'deleted', 2, 3, '2021-10-20 23:27:30', '2021-10-20 23:27:31'),
(8, 'deleted', 2, 3, '2021-10-20 23:27:33', '2021-10-20 23:27:36'),
(9, 'deleted', 2, 1, '2021-10-20 23:27:53', '2021-10-20 23:29:37'),
(10, 'deleted', 2, 1, '2021-10-20 23:29:54', '2021-10-20 23:30:38'),
(11, 'deleted', 2, 1, '2021-10-26 21:29:55', '2021-10-26 21:29:56'),
(12, 'deleted', 2, 3, '2021-10-26 21:30:05', '2021-10-26 21:30:05'),
(13, 'deleted', 1, 2, '2021-12-08 22:19:16', '2021-12-10 09:13:33'),
(14, 'active', 2, 1, '2021-12-08 22:23:40', '2021-12-08 22:23:40'),
(15, 'deleted', 2, 3, '2021-12-08 22:27:44', '2021-12-12 13:40:21'),
(16, 'active', 1, 2, '2021-12-10 09:15:00', '2021-12-10 09:15:00'),
(17, 'active', 3, 2, '2021-12-10 09:15:49', '2021-12-10 09:15:49'),
(18, 'active', 2, 3, '2021-12-12 13:42:04', '2021-12-12 13:42:04'),
(19, 'active', 5, 2, '2021-12-12 22:50:11', '2021-12-12 22:50:11'),
(20, 'deleted', 2, 5, '2021-12-12 22:53:27', '2021-12-12 22:53:31'),
(21, 'active', 2, 5, '2021-12-12 22:53:36', '2021-12-12 22:53:36'),
(22, 'active', 8, 5, '2021-12-13 22:05:10', '2021-12-13 22:05:10'),
(23, 'active', 8, 2, '2021-12-13 22:05:33', '2021-12-13 22:05:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`id`, `status`, `user_id`, `tweet_id`, `created_at`, `updated_at`) VALUES
(1, 'deleted', 2, 12, '2021-02-19 07:17:43', '2021-02-19 07:17:43'),
(2, 'deleted', 2, 5, '2021-02-19 07:17:58', '2021-02-19 07:17:58'),
(3, 'deleted', 2, 7, '2021-02-19 07:17:59', '2021-02-19 07:17:59'),
(4, 'deleted', 2, 14, '2021-02-19 07:18:01', '2021-02-19 07:18:01'),
(5, 'active', 2, 16, '2021-02-19 07:18:06', '2021-02-19 07:18:06'),
(6, 'deleted', 2, 18, '2021-02-19 07:18:06', '2021-02-19 07:18:06'),
(7, 'deleted', 2, 4, '2021-10-11 19:45:44', '2021-10-11 19:45:44'),
(8, 'deleted', 2, 4, '2021-10-11 19:49:22', '2021-10-11 19:49:22'),
(9, 'deleted', 2, 4, '2021-10-11 19:50:50', '2021-10-11 19:50:50'),
(10, 'deleted', 2, 5, '2021-10-11 19:50:55', '2021-10-11 19:50:55'),
(11, 'deleted', 2, 4, '2021-10-11 19:51:34', '2021-10-11 19:51:34'),
(12, 'deleted', 2, 5, '2021-10-11 19:57:05', '2021-10-11 19:57:05'),
(13, 'deleted', 2, 4, '2021-10-11 19:57:50', '2021-10-11 19:57:50'),
(14, 'deleted', 2, 5, '2021-10-11 19:57:55', '2021-10-11 19:57:55'),
(15, 'deleted', 2, 4, '2021-10-12 07:47:37', '2021-10-12 07:47:37'),
(16, 'deleted', 2, 4, '2021-10-12 07:47:55', '2021-10-12 07:47:55'),
(17, 'deleted', 2, 7, '2021-10-12 07:56:42', '2021-10-12 07:56:42'),
(18, 'deleted', 2, 4, '2021-10-12 07:56:58', '2021-10-12 07:56:58'),
(19, 'deleted', 2, 4, '2021-10-12 08:02:13', '2021-10-12 08:02:13'),
(20, 'deleted', 2, 4, '2021-10-12 08:02:14', '2021-10-12 08:02:14'),
(21, 'deleted', 2, 5, '2021-10-12 08:02:15', '2021-10-12 08:02:15'),
(22, 'deleted', 2, 5, '2021-10-12 08:02:16', '2021-10-12 08:02:16'),
(23, 'active', 2, 4, '2021-10-12 08:02:28', '2021-10-12 08:02:28'),
(24, 'deleted', 2, 18, '2021-10-12 09:12:26', '2021-10-12 09:12:26'),
(25, 'deleted', 2, 18, '2021-10-12 09:12:27', '2021-10-12 09:12:27'),
(26, 'deleted', 2, 19, '2021-10-13 06:24:14', '2021-10-13 06:24:14'),
(27, 'deleted', 2, 18, '2021-10-20 08:20:25', '2021-10-20 08:20:25'),
(28, 'deleted', 2, 20, '2021-10-21 20:58:06', '2021-10-21 20:58:06'),
(29, 'deleted', 2, 19, '2021-10-21 20:58:40', '2021-10-21 20:58:40'),
(30, 'deleted', 2, 18, '2021-10-21 20:58:44', '2021-10-21 20:58:44'),
(31, 'deleted', 2, 13, '2021-10-26 21:30:08', '2021-10-26 21:30:08'),
(32, 'deleted', 1, 20, '2021-12-08 22:19:11', '2021-12-08 22:19:11'),
(33, 'active', 2, 20, '2021-12-08 22:22:07', '2021-12-08 22:22:07'),
(34, 'active', 2, 17, '2021-12-08 22:27:08', '2021-12-08 22:27:08'),
(35, 'active', 1, 19, '2021-12-10 09:13:29', '2021-12-10 09:13:29'),
(36, 'active', 3, 20, '2021-12-10 09:15:29', '2021-12-10 09:15:29'),
(37, 'active', 3, 18, '2021-12-10 09:15:36', '2021-12-10 09:15:36'),
(38, 'active', 3, 13, '2021-12-10 09:15:41', '2021-12-10 09:15:41'),
(39, 'active', 5, 20, '2021-12-12 22:50:24', '2021-12-12 22:50:24'),
(40, 'active', 5, 10, '2021-12-12 22:50:29', '2021-12-12 22:50:29'),
(41, 'active', 2, 21, '2021-12-12 22:53:54', '2021-12-12 22:53:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `received_user_id` int(11) NOT NULL,
  `sent_user_id` int(11) NOT NULL,
  `message` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `notifications`
--

INSERT INTO `notifications` (`id`, `status`, `received_user_id`, `sent_user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'active', 3, 2, 'フォローされました。', '2021-02-19 07:05:49', '2021-02-19 07:05:49'),
(2, 'active', 1, 2, 'フォローされました。', '2021-02-19 07:05:54', '2021-02-19 07:05:54'),
(3, 'active', 3, 2, 'いいね！されました。', '2021-02-19 07:17:43', '2021-02-19 07:17:43'),
(4, 'active', 1, 2, 'いいね！されました。', '2021-02-19 07:17:58', '2021-02-19 07:17:58'),
(5, 'active', 1, 2, 'いいね！されました。', '2021-12-08 22:27:08', '2021-12-08 22:27:08'),
(6, 'active', 3, 2, 'フォローされました。', '2021-12-08 22:27:44', '2021-12-08 22:27:44'),
(7, 'active', 2, 1, 'いいね！されました。', '2021-12-10 09:13:29', '2021-12-10 09:13:29'),
(8, 'active', 2, 1, 'フォローされました。', '2021-12-10 09:15:00', '2021-12-10 09:15:00'),
(9, 'active', 2, 3, 'いいね！されました。', '2021-12-10 09:15:29', '2021-12-10 09:15:29'),
(10, 'active', 1, 3, 'いいね！されました。', '2021-12-10 09:15:36', '2021-12-10 09:15:36'),
(11, 'active', 3, 3, 'いいね！されました。', '2021-12-10 09:15:41', '2021-12-10 09:15:41'),
(12, 'active', 2, 3, 'フォローされました。', '2021-12-10 09:15:49', '2021-12-10 09:15:49'),
(13, 'active', 3, 2, 'フォローされました。', '2021-12-12 13:42:04', '2021-12-12 13:42:04'),
(14, 'active', 2, 5, 'フォローされました。', '2021-12-12 22:50:11', '2021-12-12 22:50:11'),
(15, 'active', 2, 5, 'いいね！されました。', '2021-12-12 22:50:24', '2021-12-12 22:50:24'),
(16, 'active', 2, 5, 'いいね！されました。', '2021-12-12 22:50:29', '2021-12-12 22:50:29'),
(17, 'active', 5, 2, 'フォローされました。', '2021-12-12 22:53:27', '2021-12-12 22:53:27'),
(18, 'active', 5, 2, 'フォローされました。', '2021-12-12 22:53:36', '2021-12-12 22:53:36'),
(19, 'active', 5, 2, 'いいね！されました。', '2021-12-12 22:53:54', '2021-12-12 22:53:54'),
(20, 'active', 5, 8, 'フォローされました。', '2021-12-13 22:05:10', '2021-12-13 22:05:10'),
(21, 'active', 2, 8, 'フォローされました。', '2021-12-13 22:05:33', '2021-12-13 22:05:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `user_id` int(11) NOT NULL,
  `body` varchar(140) NOT NULL,
  `image_name` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `tweets`
--

INSERT INTO `tweets` (`id`, `status`, `user_id`, `body`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 'active', 2, 'あああああ\r\nあああああ', NULL, '2018-01-19 05:32:02', '2018-01-19 05:32:02'),
(2, 'active', 2, 'いいいいい\r\nいいいいい', NULL, '2018-02-20 05:32:15', '2018-02-20 05:32:15'),
(3, 'active', 2, 'ううううう\r\nううううう', NULL, '2018-08-05 05:32:30', '2018-08-05 05:32:30'),
(4, 'active', 1, '太郎1です', NULL, '2018-08-21 06:32:57', '2018-08-21 06:32:57'),
(5, 'active', 1, '太郎1のつぶやき2', NULL, '2019-03-22 05:33:12', '2019-03-22 05:33:12'),
(6, 'active', 1, '太郎1のつぶやき3', NULL, '2019-04-09 05:33:38', '2019-04-09 05:33:38'),
(7, 'active', 1, '太郎1のつぶやき4', NULL, '2019-11-10 05:33:54', '2019-11-10 05:33:54'),
(8, 'active', 1, '太郎1のつぶやき5', NULL, '2019-12-01 05:34:40', '2019-12-01 05:34:40'),
(9, 'active', 2, 'えええええ\r\nえええええ', NULL, '2020-06-18 05:35:10', '2020-06-18 05:35:10'),
(10, 'active', 2, 'おおおおお\r\nおおおおお', NULL, '2020-07-11 05:35:17', '2020-07-11 05:35:17'),
(11, 'active', 3, 'XXX', NULL, '2020-08-10 05:35:29', '2020-08-10 05:35:29'),
(12, 'active', 3, 'YYY', NULL, '2020-10-25 05:35:31', '2020-10-25 05:35:31'),
(13, 'active', 3, 'ZZZ', NULL, '2021-01-03 05:35:34', '2021-01-03 05:35:34'),
(14, 'active', 1, '太郎1のつぶやき6', NULL, '2021-01-19 05:35:57', '2021-01-19 05:35:57'),
(15, 'active', 1, '太郎1のつぶやき7', NULL, '2021-02-28 05:36:00', '2021-02-28 05:36:00'),
(16, 'active', 1, '太郎1のつぶやき8', NULL, '2021-03-10 05:40:04', '2021-03-10 05:40:04'),
(17, 'active', 1, '太郎1のつぶやき9', 'sample-post.jpg', '2021-04-05 05:36:07', '2021-04-05 05:36:07'),
(18, 'active', 1, '太郎1のつぶやき10', NULL, '2021-04-18 12:36:12', '2021-04-18 12:36:12'),
(19, 'active', 2, 'TwitterCloneの上級者向けレッスン取り組み中', '2_20211013062407.jpg', '2021-10-13 06:24:07', '2021-10-13 06:24:07'),
(20, 'active', 2, '海。', '2_20211021205802.jpg', '2021-10-21 20:58:02', '2021-10-21 20:58:02'),
(21, 'active', 5, 'ホーム画面のつぶやき一覧、フォロー中のユーザーになったのかテスト。', '5_20211212225250.jpg', '2021-12-12 22:52:50', '2021-12-12 22:52:50'),
(22, 'active', 8, 'test5のツイート初投稿。', NULL, '2021-12-13 22:05:00', '2021-12-13 22:05:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `nickname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `status`, `nickname`, `name`, `email`, `password`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 'active', '太郎1', 'user1', 'test1@example.com', '$2y$10$vH3LhLuEfhLPxtpxsQ7z8.ZEkXZQqfLX9uFG9snf30EZedPB58LJW', 'sample-person.jpg', '2021-02-19 05:28:51', '2021-02-19 05:28:51'),
(2, 'active', '花子', 'hanako', 'hanako@example.com', '$2y$10$zXEIm1IExBFyg/JU4PTxwOoKv3ylTCV7Dtx89LtStxaJE/5k9EbVK', '2_20211212230530.jpg', '2021-02-19 05:30:36', '2021-12-12 23:05:30'),
(3, 'active', '太郎3', 'user3', 'test3@example.com', '$2y$10$TtuLPc4ybw/8TX1bFVp99ehvpfhyISVbdBC9kdZsX7U74qyRlquZm', NULL, '2021-02-19 05:31:13', '2021-02-19 05:31:13'),
(4, 'active', 'pon@techis.com', 'ぽん', 'pon@techis.com', '$2y$10$uaRmtqmOPWwPw4wP.CCJOO60TmnNKASrEsJLovWDkc8qrkbrblS5.', '4_20211030225232.jpg', '2021-10-30 22:51:27', '2021-10-30 22:52:32'),
(5, 'active', 'test1', 'test1', 'test1@techis.com', '$2y$10$eYGfRkzgDzsgZ0yIiNovxeomvahAPmZPDhnjNfShvQEpxd6STHarW', '5_20211212224954.jpg', '2021-12-12 22:47:31', '2021-12-12 22:49:54'),
(6, 'active', 'test3', 'test3', 'test3@techis.com', '$2y$10$Wcs0kzutagWAlFpE5CtxhuwSuyJjlCrdxLcIiQjVEQ6brHwlkA.QG', '6_20211212231749.jpg', '2021-12-12 23:16:25', '2021-12-12 23:20:09'),
(7, 'active', '十文字でエラーになるか否かの実験', 'test4', 'test4@techis.com', '$2y$10$TCUhX2RJDWzh6CTkRX2vfONr7biVcJZbHXyzUXoex0CMF7sr8VXAq', NULL, '2021-12-12 23:21:38', '2021-12-13 08:17:35'),
(8, 'active', 'test5', 'test5', 'test5@techis.com', '$2y$10$kEjvp/dPcMRQqunQSy9ChOXYTj928af645Obn6ivA0Q047Gr4cgZG', '8_20211213220439.jpg', '2021-12-13 22:02:52', '2021-12-13 22:04:39');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `follow_user_id` (`follow_user_id`),
  ADD KEY `followed_user_id` (`followed_user_id`);

--
-- テーブルのインデックス `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tweet_id` (`tweet_id`);

--
-- テーブルのインデックス `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `received_user_id` (`received_user_id`),
  ADD KEY `sent_user_id` (`sent_user_id`);

--
-- テーブルのインデックス `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `body` (`body`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- テーブルの AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- テーブルの AUTO_INCREMENT `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- テーブルの AUTO_INCREMENT `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
