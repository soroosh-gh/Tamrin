-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2023 at 11:30 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `author` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `genre` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `price` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `status` enum('out of stack','deleted','normal') COLLATE utf8_persian_ci NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id_book`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id_book`, `book_name`, `author`, `genre`, `description`, `price`, `status`) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'A classic novel set in the 1930s that explores racial injustice and loss of innocence.', '12.99', 'normal'),
(2, '1984', 'George Orwell', 'Dystopian Fiction', 'A thought-provoking novel depicting a totalitarian society and the power of government surveillance.', '9.99', 'normal'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Literary Fiction', 'A tale of wealth, love, and the American Dream set in the Roaring Twenties.', '10.99', 'normal'),
(4, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'An enchanting adventure following Bilbo Baggins on a quest to reclaim a treasure from a dragon.', '8.99', 'normal'),
(5, 'Pride and Prejudice', 'Jane Austen', 'Classic Literature', 'A timeless romance novel exploring societal norms, love, and misconceptions.', '7.99', 'normal'),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'An epic adventure following Bilbo Baggins as he embarks on a quest to reclaim a treasure.', '11.99', 'normal'),
(7, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'A classic novel depicting the decadence and disillusionment of the Jazz Age.', '12.99', 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Fname` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `user_Lname` varchar(120) COLLATE utf8_persian_ci NOT NULL,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  `send_time` datetime NOT NULL,
  `file_atch` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `user_Fname`, `user_Lname`, `content`, `send_time`, `file_atch`, `deleted`) VALUES
(2, 'soroosh', 'ghiasi', 'this is a test', '2023-10-31 08:27:11', '', 0),
(3, 'soroosh', 'ghiasi', 'this is a test', '2023-10-31 08:27:52', '', 0),
(4, 'soroo', 'ghiasi', 'this is atest', '2023-10-31 08:28:10', '', 0),
(5, 'soroosh', 'ghiasi', 'this is the second test', '2023-10-31 08:30:30', '', 0),
(6, 'soroosh', 'ghiasi', 'this is the second test', '2023-10-31 08:30:56', '', 0),
(7, 's', 'a', 'a', '2023-10-31 08:31:01', '', 0),
(8, 'A', 'AA', 'A', '2023-10-31 08:31:14', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Fname` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `user_Lname` varchar(120) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` enum('normal','deleted','banned') COLLATE utf8_persian_ci NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_Fname`, `user_Lname`, `username`, `password`, `type`, `status`) VALUES
(1, 'Soroosh', 'Ghiasi', 'Sgh12', 'sG8131', 0, 'deleted'),
(2, 'Reza', 'Shojaei', 'rexxa', '1235', 0, 'normal'),
(3, 'Hosein', 'AllahBakhsh', 'h660', '1265', 0, 'normal'),
(4, 'Parsa', 'Bagherie', 'Dire', '3245', 0, 'normal'),
(5, 'Mahan', 'Soltani', 'M5487', '98654', 0, 'normal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
