-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2026 at 10:09 PM
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
-- Database: `vijesti`
--
CREATE DATABASE IF NOT EXISTS `vijesti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vijesti`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Maja', 'Budija', 'mmjbbd', '$2y$10$X1N1EI8kg9rUfSV1oQ6q3e9TBwchrEM.LiR1rtkTBi7JrLYQmVV1G', 1),
(2, 'Ajam', 'Ajidub', 'ajam_ajidub', '$2y$10$x5UTBC5qNv.U0F1tjFQnpu7YYY6nBTUcMD7ndf2ELWKjrYqMk4sYy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `archive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `title`, `about`, `content`, `image`, `category`, `archive`) VALUES
(5, 'Biscuit heiress apologizes for Nazi comments', 'Verena Bahlsen faced a backlash after defending her firms use of forced labour during Nazi rule.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika1.JPG', 'kultura', 1),
(6, 'US snubs effort to tackle online extremism', 'The scheme aims to tackle terror content after the Christchurch attacks, but the US opts out.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika2.JPG', 'kultura', 1),
(7, 'Window cleaners rescued from swinging lift', 'The workers in Oklahoma City were trapped about 50-stories up as the lift began to swing out of control.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika3.jpg', 'kultura', 1),
(8, 'Alonso unhurt after Indy practice crash', 'Two-time Formula 1 world champion Fernando Alonso escapes unhurt after crashing into a wall during practice for the Indianapolis 500.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika4.JPG', 'sport', 1),
(9, 'Sharapova pulls out of French Open', 'Two-time French Open winner Maria Sharapova will miss this years event because of a shoulder injury.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika5.jpg', 'sport', 1),
(10, 'The top six summer transfer targets', 'BBC Sports David Ornstein looks at the top summer transfer targets for the Premieu Leagues top six clubs.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/slika6.jpg', 'sport', 1),
(11, 'Ben Stokes: England captain to play in Durhams County Championship clash with Northamptonshire from Friday', 'Ben Stokes will play for Durham in Fridays County Championship clash with Northamptonshire; watch the second Test of the England vs New Zealand series live on Sky Sports', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/skysports-ben-stokes-england_7270563.jpg', 'sport', 0),
(12, 'Disclosure Day to Office Romance: 10 of the best films to watch this June', 'From Spielbergs epic alien drama to J-Lo in an office romcom and the return of Toy Story, these are the films to watch at the cinema and stream at home this month.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/Capture.JPG', 'kultura', 0),
(13, 'London Museum Smithfield site to open in November', 'The London Museums new Smithfield Market home will open on 28 November, with Banksys piranhas, the UKs oldest hand-written document and part of the infamous Whitechapel fatberg all set to go on permanent display.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/Capture2.JPG', 'kultura', 0),
(14, 'Tuchels complaints lead to Fifa moving photographers', 'England head coach Thomas Tuchel has won a battle with Fifa to get photographers moved away from the bench during the national anthems.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a scelerisque quam. Donec suscipit ullamcorper diam, ac pretium tellus lacinia id. Aliquam luctus odio vel massa volutpat, sed placerat ipsum dictum. Duis risus turpis, congue ut odio non, feugiat tincidunt quam. Quisque mollis diam vel elementum posuere. Morbi in rutrum lectus, eu efficitur dolor. Aliquam in purus tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu mi ut ipsum dictum placerat in eu lectus. Cras rhoncus leo nec nibh placerat luctus sit amet id justo. Duis a sagittis lectus. Sed at rhoncus eros. Suspendisse dui velit, luctus at ligula ut, gravida pellentesque elit. Sed id varius quam, in imperdiet augue.\r\n\r\nMaecenas at condimentum libero. Ut nec urna arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus nec ante leo. Aenean vehicula fermentum arcu, id vulputate urna egestas vel. Mauris congue lacus ac congue laoreet. Fusce nisl arcu, ultrices at dignissim at, imperdiet vel orci. Nulla semper congue quam, non ullamcorper felis vulputate quis. Phasellus at augue leo.', 'images/Capture3.JPG', 'sport', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
