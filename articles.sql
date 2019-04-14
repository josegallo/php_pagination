-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2019 at 07:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `article` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `article`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
(2, 'Aliquam porta vitae mauris vitae sodales. Etiam vestibulum tellus orci, eget semper massa pretium id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(3, 'Nunc pulvinar neque odio, ut porttitor risus dapibus et. '),
(4, 'Integer non turpis sem. Nam sed posuere arcu.'),
(5, 'Mauris condimentum a ex ac maximus.'),
(6, 'Quisque non porta felis. Praesent et sem lobortis, blandit erat quis, rhoncus tellus.'),
(7, 'Praesent pellentesque nulla in diam fringilla ultrices'),
(8, 'Integer laoreet diam dolor, ac pharetra nibh ullamcorper et. Nullam pretium condimentum ante eu facilisis. '),
(9, 'Suspendisse potenti.'),
(10, 'Proin vestibulum erat nec molestie vestibulum. '),
(11, 'Fusce venenatis sollicitudin felis ut varius. Integer nisl mi, tristique at tellus et, porttitor ultricies urna'),
(12, 'Duis egestas suscipit enim, vitae iaculis mauris gravida sed. '),
(13, 'Fusce mollis diam eu nulla mollis aliquet. '),
(14, 'Quisque nec cursus urna. Duis placerat scelerisque viverra. '),
(15, 'Curabitur vitae auctor orci, at tempor nulla. Donec id accumsan quam. '),
(16, 'Aenean vestibulum velit interdum hendrerit eleifend. '),
(17, 'Donec id accumsan quam. Aenean rhoncus blandit faucibus.'),
(18, 'Interdum et malesuada fames ac ante ipsum primis in faucibus.'),
(19, 'Vivamus sem ante, tincidunt vel leo sit amet, congue iaculis nunc.'),
(20, 'Cras mattis leo nulla, in imperdiet eros commodo ut.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
