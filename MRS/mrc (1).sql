-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2023 at 02:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrc`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Deepika Padukon', '2023-09-17 16:32:37', '2023-09-17 16:32:37'),
(3, 'John O\'Reilly', '2023-10-02 18:10:50', '2023-10-02 18:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'comedy'),
(2, 'horror'),
(3, 'Action'),
(4, 'Adventure'),
(5, 'Animation'),
(6, 'Comedy'),
(7, 'Crime'),
(8, 'Documentary'),
(9, 'Drama'),
(10, 'Family'),
(11, 'Fantasy'),
(12, 'Horror'),
(13, 'Mystery'),
(14, 'Romance'),
(15, 'Sci-Fi'),
(16, 'Thriller'),
(17, 'Biography'),
(18, 'Sport'),
(19, 'Musical'),
(20, 'War'),
(21, 'Western'),
(22, 'History'),
(23, 'Superhero'),
(24, 'Film Noir'),
(25, 'Music'),
(26, 'Holiday'),
(27, 'Short Film');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'rohit shetty', '2023-09-17 16:33:06', '2023-09-17 16:33:06'),
(2, 'Shilpa Shetty', '2023-10-02 18:20:39', '2023-10-02 18:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'action', '2023-09-17 16:33:21', '2023-09-17 16:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'hindi'),
(2, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `release_date` date DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `release_date`, `image_url`, `created_at`, `updated_at`) VALUES
(15, 'jawan', 'an action movie', '2023-10-23', 'uploads/730501697423827payment.png', '2023-10-02 17:36:37', '2023-10-16 02:37:07'),
(16, 'w3cms', 'awe5ysae5y', '2023-10-28', 'uploads/3996081696748971qrcode.png', '2023-10-08 07:09:31', '2023-10-08 07:09:31'),
(17, 'm3', 'ateuj', '2023-10-18', 'uploads/8793991696759878—Pngtree—brain logo_4136072.png', '2023-10-08 10:11:18', '2023-10-08 10:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_casts`
--

CREATE TABLE `movie_has_casts` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `cast_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movie_has_casts`
--

INSERT INTO `movie_has_casts` (`id`, `movie_id`, `cast_id`) VALUES
(16, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_categories`
--

CREATE TABLE `movie_has_categories` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movie_has_categories`
--

INSERT INTO `movie_has_categories` (`id`, `movie_id`, `category_id`) VALUES
(8, 16, 2),
(9, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_director`
--

CREATE TABLE `movie_has_director` (
  `id` int NOT NULL,
  `movie_id` int NOT NULL,
  `director_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_genres`
--

CREATE TABLE `movie_has_genres` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_languages`
--

CREATE TABLE `movie_has_languages` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_tags`
--

CREATE TABLE `movie_has_tags` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_has_writers`
--

CREATE TABLE `movie_has_writers` (
  `id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `writer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tag1', '2023-09-17 16:35:32', '2023-09-17 16:35:32'),
(2, 't2', '2023-10-02 18:24:31', '2023-10-02 18:24:31'),
(3, 'tag3', '2023-10-14 05:55:20', '2023-10-14 05:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(18, 'user1', 'user1@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2023-10-11 17:18:30', '2023-10-11 17:18:30'),
(19, 'user2', 'user2@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2023-10-11 17:30:57', '2023-10-11 17:30:57'),
(20, 'bhavik', 'bhavik@email.com', '202cb962ac59075b964b07152d234b70', '2023-10-14 12:32:22', '2023-10-14 12:32:22'),
(21, 'user1', 'user13@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2023-10-15 17:50:20', '2023-10-15 17:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_cast_preference`
--

CREATE TABLE `user_has_cast_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `cast_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_has_cast_preference`
--

INSERT INTO `user_has_cast_preference` (`id`, `user_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(20, 20, 3, '2023-10-14 18:29:49', '2023-10-14 18:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_category_preference`
--

CREATE TABLE `user_has_category_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_has_category_preference`
--

INSERT INTO `user_has_category_preference` (`id`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(13, 18, 1, '2023-10-15 18:36:48', '2023-10-15 18:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_directors_preference`
--

CREATE TABLE `user_has_directors_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_has_directors_preference`
--

INSERT INTO `user_has_directors_preference` (`id`, `user_id`, `director_id`, `created_at`, `updated_at`) VALUES
(12, 18, 1, '2023-10-15 18:36:48', '2023-10-15 18:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_genre_preference`
--

CREATE TABLE `user_has_genre_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_language_preference`
--

CREATE TABLE `user_has_language_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_has_language_preference`
--

INSERT INTO `user_has_language_preference` (`id`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(8, 18, 1, '2023-10-15 18:36:48', '2023-10-15 18:36:48'),
(9, 18, 2, '2023-10-15 18:36:48', '2023-10-15 18:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_release_year_preference`
--

CREATE TABLE `user_has_release_year_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_tags_preference`
--

CREATE TABLE `user_has_tags_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_has_tags_preference`
--

INSERT INTO `user_has_tags_preference` (`id`, `user_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(12, 21, 1, '2023-10-15 17:50:51', '2023-10-15 17:50:51'),
(13, 21, 2, '2023-10-15 17:50:51', '2023-10-15 17:50:51'),
(14, 21, 3, '2023-10-15 17:50:51', '2023-10-15 17:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_writers_preference`
--

CREATE TABLE `user_has_writers_preference` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `writer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'sunil shetty', '2023-09-17 16:35:55', '2023-09-17 16:35:55'),
(2, 'salman khan', '2023-10-02 18:26:04', '2023-10-02 18:26:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_has_casts`
--
ALTER TABLE `movie_has_casts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `cast_id` (`cast_id`);

--
-- Indexes for table `movie_has_categories`
--
ALTER TABLE `movie_has_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `movie_has_director`
--
ALTER TABLE `movie_has_director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_has_genres`
--
ALTER TABLE `movie_has_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `movie_has_languages`
--
ALTER TABLE `movie_has_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `movie_has_tags`
--
ALTER TABLE `movie_has_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `movie_has_writers`
--
ALTER TABLE `movie_has_writers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `writer_id` (`writer_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_has_cast_preference`
--
ALTER TABLE `user_has_cast_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cast_id` (`cast_id`);

--
-- Indexes for table `user_has_category_preference`
--
ALTER TABLE `user_has_category_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user_has_directors_preference`
--
ALTER TABLE `user_has_directors_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_has_genre_preference`
--
ALTER TABLE `user_has_genre_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `user_has_language_preference`
--
ALTER TABLE `user_has_language_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `user_has_release_year_preference`
--
ALTER TABLE `user_has_release_year_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_has_tags_preference`
--
ALTER TABLE `user_has_tags_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `user_has_writers_preference`
--
ALTER TABLE `user_has_writers_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `movie_has_casts`
--
ALTER TABLE `movie_has_casts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `movie_has_categories`
--
ALTER TABLE `movie_has_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movie_has_director`
--
ALTER TABLE `movie_has_director`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie_has_genres`
--
ALTER TABLE `movie_has_genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movie_has_languages`
--
ALTER TABLE `movie_has_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movie_has_tags`
--
ALTER TABLE `movie_has_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie_has_writers`
--
ALTER TABLE `movie_has_writers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_has_cast_preference`
--
ALTER TABLE `user_has_cast_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_has_category_preference`
--
ALTER TABLE `user_has_category_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_has_directors_preference`
--
ALTER TABLE `user_has_directors_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_has_genre_preference`
--
ALTER TABLE `user_has_genre_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_has_language_preference`
--
ALTER TABLE `user_has_language_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_has_release_year_preference`
--
ALTER TABLE `user_has_release_year_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_has_tags_preference`
--
ALTER TABLE `user_has_tags_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_has_writers_preference`
--
ALTER TABLE `user_has_writers_preference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_has_casts`
--
ALTER TABLE `movie_has_casts`
  ADD CONSTRAINT `movie_has_casts_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_casts_ibfk_2` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`);

--
-- Constraints for table `movie_has_categories`
--
ALTER TABLE `movie_has_categories`
  ADD CONSTRAINT `movie_has_categories_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `movie_has_genres`
--
ALTER TABLE `movie_has_genres`
  ADD CONSTRAINT `movie_has_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `movie_has_languages`
--
ALTER TABLE `movie_has_languages`
  ADD CONSTRAINT `movie_has_languages_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_languages_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `movie_has_tags`
--
ALTER TABLE `movie_has_tags`
  ADD CONSTRAINT `movie_has_tags_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `movie_has_writers`
--
ALTER TABLE `movie_has_writers`
  ADD CONSTRAINT `movie_has_writers_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_has_writers_ibfk_2` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Constraints for table `user_has_cast_preference`
--
ALTER TABLE `user_has_cast_preference`
  ADD CONSTRAINT `user_has_cast_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_has_cast_preference_ibfk_2` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`);

--
-- Constraints for table `user_has_category_preference`
--
ALTER TABLE `user_has_category_preference`
  ADD CONSTRAINT `user_has_category_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_has_category_preference_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `user_has_genre_preference`
--
ALTER TABLE `user_has_genre_preference`
  ADD CONSTRAINT `user_has_genre_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_has_genre_preference_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `user_has_language_preference`
--
ALTER TABLE `user_has_language_preference`
  ADD CONSTRAINT `user_has_language_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_has_language_preference_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `user_has_release_year_preference`
--
ALTER TABLE `user_has_release_year_preference`
  ADD CONSTRAINT `user_has_release_year_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_has_tags_preference`
--
ALTER TABLE `user_has_tags_preference`
  ADD CONSTRAINT `user_has_tags_preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_has_tags_preference_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
