-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 01:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment2`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image_url`, `content`) VALUES
(3, 'presentation', 'https://www.cp24.com/polopoly_fs/1.6648024.1700155605!/httpImage/image.jpg_gen/derivatives/landscape_620/image.jpg', 'The Toronto area will be hit with rain and wet snow on Wednesday as temperatures drop once again in the region.\r\n\r\nThe cold and wet weather is expected to start on Wednesday and continue until Thursday. Environment Canada reported a high of 5 C on Wednesday and 3 C on Thursday.\r\n\r\n“More rain and stronger winds arrive for Wednesday. Then, enough cool air wraps into the back end of this string of systems to bring a change over to rain and wet snow Wednesday night,” CP24 Meteorologist Bill Coulter said on Monday.'),
(4, 'Scientists have just squeezed diamonds into something even harder', 'https://th.bing.com/th?id=ORMS.afea577593bd474408051c9cbb4b966f&pid=Wdp&w=612&h=304&qlt=90&c=1&rs=1', 'Diamond is one of the hardest materials known to man, but experts think it can be squashed into something even harder.\r\n\r\nThe precious stone is a naturally occurring substance made of carbon crystals. It is found in the Earth, with research even suggesting ‘fountains of diamonds’ could be sent shooting up to the surface as part of a major geological event.'),
(5, 'Things you didn\'t know were invented by Canadians', 'https://www.ctvnews.ca/polopoly_fs/1.6758191.1710245764!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg', 'Hawaiian pizza\r\n\r\nThe controversial pie was invented in 1962 by Greek-Canadian cook and businessman Sam Panopoulos, in Southwestern Ontario. (Jill Brady / Portland Press Herald)');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `header_background_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `header_background_image`) VALUES
(1, 'data:image/jpeg;base64,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');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `submission_date`) VALUES
(1, 'Yusuf', 'yusuf@gmail.com', 'This is a feedback', '2024-02-13 02:40:15'),
(2, 'test', 'test@gmail.com', 'this is a test message', '2024-02-13 03:56:38'),
(3, 'sawdfeghjklo;p', 'asdfgh@gfhjbk.com', 'fchvgjknm', '2024-03-22 16:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `our_story`
--

CREATE TABLE `our_story` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_story`
--

INSERT INTO `our_story` (`id`, `content`) VALUES
(1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aspernatur nisi qui ipsa nesciunt, non ipsam impedit magni possimus earum ab, praesentium molestias. Tenetur iusto a culpa corporis explicabo quia consequatur blanditiis ducimus. Excepturi, optio debitis minima nam odit veritatis numquam a, possimus recusandae cumque magnam modi');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `name`, `position`) VALUES
(1, 'Yusuf', 'Founder'),
(2, 'John', 'Content Writer'),
(3, 'Cindy', 'Content Moderator');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `video_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `video_url`) VALUES
(1, 'How To Build A Website in 2026', 'Description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/acBJsjCqgtM\" title=\"How To Build A Website in 2024\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(2, 'How to Make a Website in 10 mins - Simple & Easy', 'Description 2', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/YWA-xbsJrVg\" title=\"How to Make a Website in 10 mins - Simple &amp; Easy\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(4, 'This is a demo title', 'This is a demo description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/HSq5wntbkck\" title=\"How to Make an App [in 2023]\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_story`
--
ALTER TABLE `our_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_story`
--
ALTER TABLE `our_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
