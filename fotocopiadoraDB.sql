-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2020 at 05:33 PM
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
-- Database: `fotocopiadoraDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
(1, 'simple', 0.45),
(2, 'doble faz', 0.85),
(3, 'ampliacion', 1.5),
(4, 'color', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cant_simple` int(11) NOT NULL,
  `cant_doblefaz` int(11) NOT NULL,
  `cant_ampliacion` int(11) NOT NULL,
  `cant_color` int(11) NOT NULL,
  `recaudo_total` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `cant_simple`, `cant_doblefaz`, `cant_ampliacion`, `cant_color`, `recaudo_total`, `fecha`) VALUES
(2, 1, 0, 2, 13, 35.95, '2020-03-28'),
(3, 2, 3, 1, 4, 50, '2020-03-01'),
(5, 2, 3, 1, 4, 50, '2020-03-02'),
(6, 2, 3, 1, 4, 50, '2020-03-03'),
(7, 2, 3, 1, 4, 50, '2020-03-04'),
(8, 2, 3, 1, 4, 50, '2020-03-05'),
(9, 2, 3, 1, 4, 50, '2020-03-06'),
(10, 2, 3, 1, 4, 50, '2020-03-07'),
(11, 2, 3, 1, 4, 50, '2020-03-08'),
(12, 2, 3, 1, 4, 50, '2020-03-09'),
(13, 2, 3, 1, 4, 50, '2020-03-10'),
(14, 2, 3, 1, 4, 50, '2020-03-11'),
(15, 2, 3, 1, 4, 50, '2020-03-12'),
(16, 2, 3, 1, 4, 50, '2020-03-13'),
(17, 2, 3, 1, 4, 50, '2020-03-14'),
(18, 2, 3, 1, 4, 50, '2020-03-15'),
(19, 2, 3, 1, 4, 50, '2020-03-16'),
(20, 2, 3, 1, 4, 50, '2020-03-17'),
(21, 2, 3, 1, 4, 50, '2020-03-18'),
(22, 2, 3, 1, 4, 50, '2020-03-19'),
(23, 2, 3, 1, 4, 50, '2020-03-20'),
(24, 2, 3, 1, 4, 50, '2020-03-21'),
(25, 2, 3, 1, 4, 50, '2020-03-22'),
(26, 2, 3, 1, 4, 50, '2020-03-23'),
(27, 2, 3, 1, 4, 50, '2020-03-24'),
(28, 2, 3, 1, 4, 50, '2020-03-25'),
(29, 2, 3, 1, 4, 50, '2020-03-26'),
(30, 2, 3, 1, 4, 50, '2020-03-27'),
(31, 2, 3, 1, 4, 50, '2020-02-01'),
(32, 2, 3, 1, 4, 50, '2020-02-02'),
(33, 2, 3, 1, 4, 50, '2020-02-03'),
(34, 2, 3, 1, 4, 50, '2020-02-04'),
(35, 2, 3, 1, 4, 50, '2020-02-05'),
(36, 2, 3, 1, 4, 50, '2020-02-06'),
(37, 2, 3, 1, 4, 50, '2020-02-07'),
(38, 2, 3, 1, 4, 50, '2020-02-08'),
(39, 2, 3, 1, 4, 50, '2020-02-09'),
(40, 2, 3, 1, 4, 50, '2020-02-10'),
(41, 2, 3, 1, 4, 50, '2020-02-11'),
(42, 2, 3, 1, 4, 50, '2020-02-12'),
(43, 2, 3, 1, 4, 50, '2020-02-13'),
(44, 2, 3, 1, 4, 50, '2020-02-14'),
(45, 2, 3, 1, 4, 50, '2020-02-15'),
(46, 2, 3, 1, 4, 50, '2020-02-16'),
(47, 2, 3, 1, 4, 50, '2020-02-17'),
(48, 2, 3, 1, 4, 50, '2020-02-18'),
(49, 2, 3, 1, 4, 50, '2020-02-19'),
(50, 2, 3, 1, 4, 50, '2020-02-20'),
(51, 2, 3, 1, 4, 50, '2020-02-21'),
(52, 2, 3, 1, 4, 50, '2020-02-22'),
(53, 2, 3, 1, 4, 50, '2020-02-23'),
(54, 2, 3, 1, 4, 50, '2020-02-24'),
(55, 2, 3, 1, 4, 50, '2020-02-25'),
(56, 2, 3, 1, 4, 50, '2020-02-26'),
(57, 2, 3, 1, 4, 50, '2020-02-27'),
(58, 2, 3, 1, 4, 50, '2020-04-01'),
(59, 2, 3, 1, 4, 50, '2020-04-02'),
(60, 2, 3, 1, 4, 50, '2020-04-03'),
(61, 2, 3, 1, 4, 50, '2020-04-04'),
(62, 2, 3, 1, 4, 50, '2020-04-05'),
(63, 2, 3, 1, 4, 50, '2020-04-06'),
(64, 2, 3, 1, 4, 50, '2020-04-07'),
(65, 2, 3, 1, 4, 50, '2020-04-08'),
(66, 2, 3, 1, 4, 50, '2020-04-09'),
(67, 2, 3, 1, 4, 50, '2020-04-10'),
(68, 2, 3, 1, 4, 50, '2020-04-11'),
(69, 2, 3, 1, 4, 50, '2020-04-12'),
(70, 2, 3, 1, 4, 50, '2020-04-13'),
(71, 2, 3, 1, 4, 50, '2020-04-14'),
(72, 2, 3, 1, 4, 50, '2020-04-15'),
(73, 2, 3, 1, 4, 50, '2020-04-16'),
(74, 2, 3, 1, 4, 50, '2020-04-17'),
(75, 2, 3, 1, 4, 50, '2020-04-18'),
(76, 2, 3, 1, 4, 50, '2020-04-19'),
(77, 2, 3, 1, 4, 50, '2020-04-20'),
(78, 2, 3, 1, 4, 50, '2020-04-21'),
(79, 2, 3, 1, 4, 50, '2020-04-22'),
(80, 2, 3, 1, 4, 50, '2020-04-23'),
(81, 2, 3, 1, 4, 50, '2020-04-24'),
(82, 2, 3, 1, 4, 50, '2020-04-25'),
(83, 2, 3, 1, 4, 50, '2020-04-26'),
(84, 2, 3, 1, 4, 50, '2020-04-27'),
(85, 2, 3, 1, 4, 50, '2020-04-28'),
(86, 2, 3, 1, 4, 50, '2020-04-29'),
(87, 2, 3, 1, 4, 50, '2020-04-30'),
(88, 2, 3, 1, 4, 50, '2020-01-01'),
(89, 2, 3, 1, 4, 50, '2020-01-02'),
(90, 2, 3, 1, 4, 50, '2020-01-03'),
(91, 2, 3, 1, 4, 50, '2020-01-04'),
(92, 2, 3, 1, 4, 50, '2020-01-05'),
(93, 2, 3, 1, 4, 50, '2020-01-06'),
(94, 2, 3, 1, 4, 50, '2020-01-07'),
(95, 2, 3, 1, 4, 50, '2020-01-08'),
(96, 2, 3, 1, 4, 50, '2020-01-09'),
(97, 2, 3, 1, 4, 50, '2020-01-10'),
(98, 2, 3, 1, 4, 50, '2020-01-11'),
(99, 2, 3, 1, 4, 50, '2020-01-12'),
(100, 2, 3, 1, 4, 50, '2020-01-13'),
(101, 2, 3, 1, 4, 50, '2020-01-14'),
(102, 2, 3, 1, 4, 50, '2020-01-15'),
(103, 2, 3, 1, 4, 50, '2020-01-16'),
(104, 2, 3, 1, 4, 50, '2020-01-17'),
(105, 2, 3, 1, 4, 50, '2020-01-18'),
(106, 2, 3, 1, 4, 50, '2020-01-19'),
(107, 2, 3, 1, 4, 50, '2020-01-20'),
(108, 2, 3, 1, 4, 50, '2020-01-21'),
(109, 2, 3, 1, 4, 50, '2020-01-22'),
(110, 2, 3, 1, 4, 50, '2020-01-23'),
(111, 2, 3, 1, 4, 50, '2020-01-24'),
(112, 2, 3, 1, 4, 50, '2020-01-25'),
(113, 2, 3, 1, 4, 50, '2020-01-26'),
(114, 2, 3, 1, 4, 50, '2020-01-27'),
(115, 2, 3, 1, 4, 50, '2020-01-28'),
(116, 2, 3, 1, 4, 50, '2020-01-29'),
(117, 2, 3, 1, 4, 50, '2020-01-30'),
(118, 2, 3, 1, 4, 50, '2020-01-31'),
(119, 2, 3, 1, 4, 50, '2019-12-01'),
(120, 2, 3, 1, 4, 50, '2019-12-02'),
(121, 2, 3, 1, 4, 50, '2019-12-03'),
(122, 2, 3, 1, 4, 50, '2019-12-04'),
(123, 2, 3, 1, 4, 50, '2019-12-05'),
(124, 2, 3, 1, 4, 50, '2019-12-06'),
(125, 2, 3, 1, 4, 50, '2019-12-07'),
(126, 2, 3, 1, 4, 50, '2019-12-08'),
(127, 2, 3, 1, 4, 50, '2019-12-09'),
(128, 2, 3, 1, 4, 50, '2019-12-10'),
(129, 2, 3, 1, 4, 50, '2019-12-11'),
(130, 2, 3, 1, 4, 50, '2019-12-12'),
(131, 2, 3, 1, 4, 50, '2019-12-13'),
(132, 2, 3, 1, 4, 50, '2019-12-14'),
(133, 2, 3, 1, 4, 50, '2019-12-15'),
(134, 2, 3, 1, 4, 50, '2019-12-16'),
(135, 2, 3, 1, 4, 50, '2019-12-17'),
(136, 2, 3, 1, 4, 50, '2019-12-18'),
(137, 2, 3, 1, 4, 50, '2019-12-19'),
(138, 2, 3, 1, 4, 50, '2019-12-20'),
(139, 2, 3, 1, 4, 50, '2019-12-21'),
(140, 2, 3, 1, 4, 50, '2019-12-22'),
(141, 2, 3, 1, 4, 50, '2019-12-23'),
(142, 2, 3, 1, 4, 50, '2019-12-24'),
(143, 2, 3, 1, 4, 50, '2019-12-25'),
(144, 2, 3, 1, 4, 50, '2019-12-26'),
(145, 2, 3, 1, 4, 50, '2019-12-27'),
(146, 2, 3, 1, 4, 50, '2019-12-28'),
(147, 2, 3, 1, 4, 50, '2019-12-29'),
(148, 2, 3, 1, 4, 50, '2019-12-30'),
(149, 2, 3, 1, 4, 50, '2019-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
