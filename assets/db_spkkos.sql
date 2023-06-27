-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 02:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spkkos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bimbel`
--

CREATE TABLE `tb_bimbel` (
  `id_bimbel` int(11) NOT NULL,
  `nama_bimbel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_bimbel`
--

INSERT INTO `tb_bimbel` (`id_bimbel`, `nama_bimbel`) VALUES
(4, 'Kind Course '),
(5, 'American School Of Pare '),
(6, 'Cherry English School '),
(7, 'Brilliant English Course '),
(8, 'Test English Course '),
(9, 'Galaxy Institute '),
(10, 'RnB English Course '),
(11, 'Simpleco Simple English Language Course '),
(12, 'The Eagle English Course '),
(13, 'DECFN ( Dynamic English Course Flamboyan Nine ) '),
(14, 'English Academy Pare '),
(15, 'SOS Course and Training '),
(16, 'World English Kampung Inggris Pare '),
(17, 'INFINITY Kampung Inggris '),
(18, 'ACCESS | Kursus Bahasa Inggris '),
(19, 'Excellent Course Kampung Inggris Pare '),
(20, 'Mahir Bahasa Kampung Inggris Pare '),
(21, 'English Studio '),
(22, 'KelasInggris.Id '),
(23, 'Happy English Course 2 '),
(24, 'Kampung Inggris Garlint EC '),
(25, 'Nowadays English Pare '),
(26, 'Mr.BOB Pare '),
(27, 'Universal English '),
(28, 'Benraya English Course '),
(29, 'PEACE English Course '),
(30, 'Mr.Pepsi Upgrade English Course '),
(31, 'English Classic '),
(32, 'Global English Pare '),
(33, 'SAGA English Pare'),
(34, 'English Versity Pare '),
(35, 'Vit English Pare '),
(36, 'Language Center Pare '),
(37, 'Kelasinggris.id '),
(38, 'Titik Nol English Course '),
(39, 'Elfast English Course '),
(40, 'World English Kampung Inggris Pare '),
(41, 'Kind Course'),
(42, 'Brilliant English Course '),
(43, 'Test English Course '),
(44, 'Galaxy Institute '),
(45, 'RnB English Course '),
(46, 'Simpleco Simple English Language '),
(47, 'The Eagle English Course '),
(48, 'Test English Course '),
(49, 'TOEFL Prediction Course '),
(50, 'Interpeace '),
(51, 'Alfalfa English '),
(52, 'Elfast English Course '),
(53, 'Kursus Bahasa Jepang Sakura '),
(54, 'The Vegas Course '),
(55, 'Kampung Arab Al-Azhar Pare '),
(56, 'International Qur’an School '),
(57, 'Kursus Bahasa Arab Markaz Arabiyah '),
(58, 'World English Kampung Inggris Pare ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_hasil`
--

CREATE TABLE `tb_detail_hasil` (
  `id_detail_hasil` int(11) NOT NULL,
  `id_hasil` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `bobot_hasil` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_hasil`
--

INSERT INTO `tb_detail_hasil` (`id_detail_hasil`, `id_hasil`, `id_kriteria`, `bobot_hasil`) VALUES
(6, 1, 1, 0.05),
(7, 1, 2, 0.04),
(8, 1, 3, 0.2),
(9, 1, 4, 3),
(10, 1, 5, 0.15),
(11, 2, 1, 0.1),
(12, 2, 2, 0.04),
(13, 2, 3, 0.2),
(14, 2, 4, 3),
(15, 2, 5, 0.15),
(16, 3, 1, 0.15),
(17, 3, 2, 5),
(18, 3, 3, 0.15),
(19, 3, 4, 3),
(20, 3, 5, 0.1),
(21, 4, 1, 0.2),
(22, 4, 2, 5),
(23, 4, 3, 0.2),
(24, 4, 4, 3),
(25, 4, 5, 0.05),
(26, 5, 1, 0.05),
(27, 5, 2, 5),
(28, 5, 3, 0.2),
(29, 5, 4, 3),
(30, 5, 5, 0.1),
(31, 6, 1, 0.2),
(32, 6, 2, 0.04),
(33, 6, 3, 0.15),
(34, 6, 4, 3),
(35, 6, 5, 0.15),
(36, 7, 1, 0.15),
(37, 7, 2, 5),
(38, 7, 3, 0.15),
(39, 7, 4, 3),
(40, 7, 5, 0.1),
(41, 8, 1, 0.2),
(42, 8, 2, 5),
(43, 8, 3, 0.2),
(44, 8, 4, 3),
(45, 8, 5, 0.05),
(46, 9, 1, 0.05),
(47, 9, 2, 5),
(48, 9, 3, 0.2),
(49, 9, 4, 3),
(50, 9, 5, 0.1),
(51, 10, 1, 0.05),
(52, 10, 2, 0.04),
(53, 10, 3, 0.2),
(54, 10, 4, 3),
(55, 10, 5, 0.15),
(56, 11, 1, 0.15),
(57, 11, 2, 0.04),
(58, 11, 3, 0.15),
(59, 11, 4, 3),
(60, 11, 5, 0.15),
(61, 12, 1, 0.05),
(62, 12, 2, 0.04),
(63, 12, 3, 4),
(64, 12, 4, 3),
(65, 12, 5, 0.15),
(66, 13, 1, 0.05),
(67, 13, 2, 0.04),
(68, 13, 3, 0.2),
(69, 13, 4, 3),
(70, 13, 5, 0.15),
(71, 14, 1, 0.05),
(72, 14, 2, 0.04),
(73, 14, 3, 4),
(74, 14, 4, 3),
(75, 14, 5, 0.15),
(76, 15, 1, 0.05),
(77, 15, 2, 0.04),
(78, 15, 3, 4),
(79, 15, 4, 3),
(80, 15, 5, 0.15),
(81, 16, 1, 0.05),
(82, 16, 2, 0.04),
(83, 16, 3, 4),
(84, 16, 4, 3),
(85, 16, 5, 0.15),
(86, 17, 1, 0.05),
(87, 17, 2, 0.04),
(88, 17, 3, 4),
(89, 17, 4, 3),
(90, 17, 5, 0.15),
(91, 18, 1, 0.05),
(92, 18, 2, 0.04),
(93, 18, 3, 0.2),
(94, 18, 4, 3),
(95, 18, 5, 0.15),
(96, 19, 1, 0.05),
(97, 19, 2, 0.04),
(98, 19, 3, 4),
(99, 19, 4, 3),
(100, 19, 5, 0.15),
(101, 20, 1, 0.05),
(102, 20, 2, 0.04),
(103, 20, 3, 0.2),
(104, 20, 4, 3),
(105, 20, 5, 0.15),
(106, 21, 1, 0.1),
(107, 21, 2, 0.04),
(108, 21, 3, 0.2),
(109, 21, 4, 3),
(110, 21, 5, 0.15),
(111, 22, 1, 0.1),
(112, 22, 2, 0.04),
(113, 22, 3, 0.2),
(114, 22, 4, 3),
(115, 22, 5, 0.15),
(116, 23, 1, 0.2),
(117, 23, 2, 0.04),
(118, 23, 3, 0.15),
(119, 23, 4, 3),
(120, 23, 5, 0.15),
(121, 24, 1, 0.2),
(122, 24, 2, 0.04),
(123, 24, 3, 0.15),
(124, 24, 4, 3),
(125, 24, 5, 0.15),
(126, 25, 1, 0.2),
(127, 25, 2, 0.04),
(128, 25, 3, 0.15),
(129, 25, 4, 3),
(130, 25, 5, 0.15),
(131, 26, 1, 0.05),
(132, 26, 2, 0.04),
(133, 26, 3, 4),
(134, 26, 4, 3),
(135, 26, 5, 0.15),
(136, 27, 1, 0.05),
(137, 27, 2, 0.04),
(138, 27, 3, 4),
(139, 27, 4, 3),
(140, 27, 5, 0.15),
(141, 28, 1, 0.15),
(142, 28, 2, 0.04),
(143, 28, 3, 0.2),
(144, 28, 4, 3),
(145, 28, 5, 0.15),
(146, 29, 1, 0.15),
(147, 29, 2, 0.04),
(148, 29, 3, 0.15),
(149, 29, 4, 3),
(150, 29, 5, 0.15),
(151, 30, 1, 0.1),
(152, 30, 2, 0.04),
(153, 30, 3, 0.2),
(154, 30, 4, 3),
(155, 30, 5, 0.15),
(156, 31, 1, 0.05),
(157, 31, 2, 0.04),
(158, 31, 3, 4),
(159, 31, 4, 3),
(160, 31, 5, 0.15),
(161, 32, 1, 0.15),
(162, 32, 2, 0.04),
(163, 32, 3, 0.2),
(164, 32, 4, 3),
(165, 32, 5, 0.15),
(166, 33, 1, 0.1),
(167, 33, 2, 0.04),
(168, 33, 3, 0.2),
(169, 33, 4, 3),
(170, 33, 5, 0.15),
(171, 34, 1, 0.15),
(172, 34, 2, 0.04),
(173, 34, 3, 0.15),
(174, 34, 4, 3),
(175, 34, 5, 0.15),
(176, 35, 1, 0.1),
(177, 35, 2, 0.04),
(178, 35, 3, 4),
(179, 35, 4, 3),
(180, 35, 5, 0.15),
(181, 36, 1, 0.05),
(182, 36, 2, 0.04),
(183, 36, 3, 4),
(184, 36, 4, 3),
(185, 36, 5, 0.15),
(186, 37, 1, 0.05),
(187, 37, 2, 0.04),
(188, 37, 3, 4),
(189, 37, 4, 3),
(190, 37, 5, 0.15),
(191, 38, 1, 0.05),
(192, 38, 2, 0.04),
(193, 38, 3, 4),
(194, 38, 4, 3),
(195, 38, 5, 0.15),
(196, 39, 1, 0.1),
(197, 39, 2, 0.04),
(198, 39, 3, 0.2),
(199, 39, 4, 3),
(200, 39, 5, 0.15),
(201, 40, 1, 0.15),
(202, 40, 2, 0.04),
(203, 40, 3, 0.2),
(204, 40, 4, 3),
(205, 40, 5, 0.15),
(206, 41, 1, 0.05),
(207, 41, 2, 0.04),
(208, 41, 3, 4),
(209, 41, 4, 3),
(210, 41, 5, 0.15),
(211, 42, 1, 0.05),
(212, 42, 2, 0.04),
(213, 42, 3, 4),
(214, 42, 4, 3),
(215, 42, 5, 0.15),
(216, 43, 1, 0.05),
(217, 43, 2, 0.04),
(218, 43, 3, 4),
(219, 43, 4, 3),
(220, 43, 5, 0.15),
(221, 44, 1, 0.15),
(222, 44, 2, 0.04),
(223, 44, 3, 0.2),
(224, 44, 4, 3),
(225, 44, 5, 0.15),
(226, 45, 1, 0.1),
(227, 45, 2, 0.04),
(228, 45, 3, 0.2),
(229, 45, 4, 3),
(230, 45, 5, 0.15),
(231, 46, 1, 0.1),
(232, 46, 2, 0.04),
(233, 46, 3, 4),
(234, 46, 4, 3),
(235, 46, 5, 0.15),
(236, 47, 1, 0.1),
(237, 47, 2, 0.04),
(238, 47, 3, 4),
(239, 47, 4, 3),
(240, 47, 5, 0.15),
(241, 48, 1, 0.05),
(242, 48, 2, 0.04),
(243, 48, 3, 4),
(244, 48, 4, 3),
(245, 48, 5, 0.15),
(246, 49, 1, 0.2),
(247, 49, 2, 0.04),
(248, 49, 3, 0.15),
(249, 49, 4, 3),
(250, 49, 5, 0.15),
(251, 50, 1, 0.15),
(252, 50, 2, 0.04),
(253, 50, 3, 0.15),
(254, 50, 4, 3),
(255, 50, 5, 0.15),
(256, 51, 1, 0.15),
(257, 51, 2, 0.04),
(258, 51, 3, 0.15),
(259, 51, 4, 3),
(260, 51, 5, 0.15),
(261, 52, 1, 0.15),
(262, 52, 2, 0.04),
(263, 52, 3, 0.2),
(264, 52, 4, 3),
(265, 52, 5, 0.15),
(266, 53, 1, 0.15),
(267, 53, 2, 0.04),
(268, 53, 3, 0.2),
(269, 53, 4, 3),
(270, 53, 5, 0.15),
(271, 54, 1, 0.1),
(272, 54, 2, 0.04),
(273, 54, 3, 0.2),
(274, 54, 4, 3),
(275, 54, 5, 0.15),
(276, 55, 1, 0.1),
(277, 55, 2, 0.04),
(278, 55, 3, 0.2),
(279, 55, 4, 3),
(280, 55, 5, 0.15),
(281, 56, 1, 0.1),
(282, 56, 2, 0.04),
(283, 56, 3, 0.2),
(284, 56, 4, 3),
(285, 56, 5, 0.15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_kos`
--

CREATE TABLE `tb_detail_kos` (
  `id_detail_kos` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `id_kos` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_kos`
--

INSERT INTO `tb_detail_kos` (`id_detail_kos`, `id_kriteria`, `id_kos`, `value`) VALUES
(1, 1, 1, 575000),
(2, 1, 2, 450000),
(3, 1, 3, 300000),
(4, 1, 4, 600000),
(5, 1, 5, 375000),
(6, 1, 6, 1000000),
(7, 1, 7, 550000),
(8, 1, 8, 3100000),
(9, 1, 9, 1500000),
(10, 1, 10, 1800000),
(11, 1, 11, 2700000),
(12, 1, 12, 600000),
(13, 1, 13, 800000),
(14, 1, 14, 600000),
(15, 1, 15, 450000),
(16, 1, 16, 500000),
(17, 1, 17, 300000),
(18, 1, 18, 300000),
(19, 1, 19, 300000),
(20, 1, 20, 600000),
(21, 1, 21, 800000),
(22, 1, 22, 400000),
(23, 1, 23, 350000),
(24, 1, 24, 450000),
(25, 1, 25, 650000),
(26, 1, 26, 400000),
(27, 1, 27, 450000),
(28, 1, 28, 350000),
(29, 1, 29, 500000),
(30, 1, 30, 800000),
(31, 1, 31, 650000),
(32, 1, 32, 750000),
(33, 1, 33, 450000),
(34, 1, 34, 400000),
(35, 1, 35, 550000),
(36, 1, 36, 550000),
(37, 1, 37, 600000),
(38, 1, 38, 400000),
(39, 1, 39, 450000),
(40, 1, 40, 500000),
(41, 1, 41, 500000),
(42, 1, 42, 750000),
(43, 1, 43, 300000),
(44, 1, 44, 350000),
(45, 1, 45, 350000),
(46, 1, 46, 400000),
(47, 1, 47, 400000),
(48, 1, 48, 450000),
(49, 1, 49, 500000),
(50, 1, 50, 500000),
(51, 3, 1, 4),
(52, 3, 2, 4),
(53, 3, 3, 3),
(54, 3, 4, 4),
(55, 3, 5, 3),
(56, 3, 6, 5),
(57, 3, 7, 4),
(58, 3, 8, 5),
(59, 3, 9, 5),
(60, 3, 10, 5),
(61, 3, 11, 5),
(62, 3, 12, 4),
(63, 3, 13, 5),
(64, 3, 14, 4),
(65, 3, 15, 4),
(66, 3, 16, 4),
(67, 3, 17, 3),
(68, 3, 18, 3),
(69, 3, 19, 3),
(70, 3, 20, 5),
(71, 3, 21, 5),
(72, 3, 22, 4),
(73, 3, 23, 3),
(74, 3, 24, 4),
(75, 3, 25, 5),
(76, 3, 26, 4),
(77, 3, 27, 4),
(78, 3, 28, 3),
(79, 3, 29, 5),
(80, 3, 30, 5),
(81, 3, 31, 5),
(82, 3, 32, 5),
(83, 3, 33, 4),
(84, 3, 34, 4),
(85, 3, 35, 5),
(86, 3, 36, 5),
(87, 3, 37, 5),
(88, 3, 38, 4),
(89, 3, 39, 4),
(90, 3, 40, 5),
(91, 3, 41, 5),
(92, 3, 42, 5),
(93, 3, 43, 3),
(94, 3, 44, 3),
(95, 3, 45, 3),
(96, 3, 46, 4),
(97, 3, 47, 4),
(98, 3, 48, 4),
(99, 3, 49, 4),
(100, 3, 50, 4),
(101, 4, 1, 0.01),
(102, 4, 2, 0.01),
(103, 4, 3, 0.07),
(104, 4, 4, 0.4),
(105, 4, 5, 0.01),
(106, 4, 6, 0.06),
(107, 4, 7, 0.04),
(108, 4, 8, 0.01),
(109, 4, 9, 0.06),
(110, 4, 10, 0.01),
(111, 4, 11, 0.3),
(112, 4, 12, 0.05),
(113, 4, 13, 0.4),
(114, 4, 14, 0.35),
(115, 4, 15, 0.02),
(116, 4, 16, 0.2),
(117, 4, 17, 0.03),
(118, 4, 18, 0.01),
(119, 4, 19, 0.05),
(120, 4, 20, 0.05),
(121, 4, 21, 0.1),
(122, 4, 22, 0.11),
(123, 4, 23, 0.1),
(124, 4, 24, 0.1),
(125, 4, 25, 0.03),
(126, 4, 26, 0.15),
(127, 4, 27, 0.05),
(128, 4, 28, 0.1),
(129, 4, 29, 0.2),
(130, 4, 30, 0.22),
(131, 4, 31, 0.21),
(132, 4, 32, 0.3),
(133, 4, 33, 0.15),
(134, 4, 34, 0.05),
(135, 4, 35, 0.05),
(136, 4, 36, 0.05),
(137, 4, 37, 0.02),
(138, 4, 38, 0.01),
(139, 4, 39, 0.01),
(140, 4, 40, 0.02),
(141, 4, 41, 0.06),
(142, 4, 42, 0.08),
(143, 4, 43, 0.2),
(144, 4, 44, 0.23),
(145, 4, 45, 0.15),
(146, 4, 46, 0.16),
(147, 4, 47, 0.1),
(148, 4, 48, 0.1),
(149, 4, 49, 0.35),
(150, 4, 50, 0.4),
(151, 5, 1, 3),
(152, 5, 2, 3),
(153, 5, 3, 3),
(154, 5, 4, 3),
(155, 5, 5, 3),
(156, 5, 6, 3),
(157, 5, 7, 3),
(158, 5, 8, 3),
(159, 5, 9, 3),
(160, 5, 10, 3),
(161, 5, 11, 3),
(162, 5, 12, 3),
(163, 5, 13, 3),
(164, 5, 14, 3),
(165, 5, 15, 3),
(166, 5, 16, 3),
(167, 5, 17, 3),
(168, 5, 18, 3),
(169, 5, 19, 3),
(170, 5, 20, 3),
(171, 5, 21, 3),
(172, 5, 22, 3),
(173, 5, 23, 3),
(174, 5, 24, 3),
(175, 5, 25, 3),
(176, 5, 26, 3),
(177, 5, 27, 3),
(178, 5, 28, 3),
(179, 5, 29, 3),
(180, 5, 30, 3),
(181, 5, 31, 3),
(182, 5, 32, 3),
(183, 5, 33, 3),
(184, 5, 34, 3),
(185, 5, 35, 3),
(186, 5, 36, 3),
(187, 5, 37, 3),
(188, 5, 38, 3),
(189, 5, 39, 3),
(190, 5, 40, 3),
(191, 5, 41, 3),
(192, 5, 42, 3),
(193, 5, 43, 3),
(194, 5, 44, 3),
(195, 5, 45, 3),
(196, 5, 46, 3),
(197, 5, 47, 3),
(198, 5, 48, 3),
(199, 5, 49, 3),
(200, 5, 50, 3),
(251, 2, 1, 48.5295),
(252, 2, 2, 48.5295),
(253, 2, 3, 48.5295),
(254, 2, 4, 48.5295),
(255, 2, 5, 48.5295),
(256, 2, 6, 48.5295),
(257, 2, 7, 48.5295),
(258, 2, 8, 48.5295),
(259, 2, 9, 48.5295),
(260, 2, 10, 48.5295),
(261, 2, 11, 48.5295),
(262, 2, 12, 48.5295),
(263, 2, 13, 48.5295),
(264, 2, 14, 48.5295),
(265, 2, 15, 48.5295),
(266, 2, 16, 48.5295),
(267, 2, 17, 48.5295),
(268, 2, 18, 48.5295),
(269, 2, 19, 48.5295),
(270, 2, 20, 48.5295),
(271, 2, 21, 48.5295),
(272, 2, 22, 48.5295),
(273, 2, 23, 48.5295),
(274, 2, 24, 48.5295),
(275, 2, 25, 48.5295),
(276, 2, 26, 48.5295),
(277, 2, 27, 48.5295),
(278, 2, 28, 48.5295),
(279, 2, 29, 48.5295),
(280, 2, 30, 48.5295),
(281, 2, 31, 48.5295),
(282, 2, 32, 48.5295),
(283, 2, 33, 48.5295),
(284, 2, 34, 48.5295),
(285, 2, 35, 48.5295),
(286, 2, 36, 48.5295),
(287, 2, 37, 48.5295),
(288, 2, 38, 48.5295),
(289, 2, 39, 48.5295),
(290, 2, 40, 48.5295),
(291, 2, 41, 48.5295),
(292, 2, 42, 48.5295),
(293, 2, 43, 48.5295),
(294, 2, 44, 48.5295),
(295, 2, 45, 48.5295),
(296, 2, 46, 48.5295),
(297, 2, 47, 48.5295),
(298, 2, 48, 48.5295),
(299, 2, 49, 48.5295),
(300, 2, 50, 48.5295);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_kriteria`
--

CREATE TABLE `tb_detail_kriteria` (
  `id_detail_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `min_value` float DEFAULT NULL,
  `max_value` float DEFAULT NULL,
  `bobot_detail_kriteria` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_kriteria`
--

INSERT INTO `tb_detail_kriteria` (`id_detail_kriteria`, `id_kriteria`, `min_value`, `max_value`, `bobot_detail_kriteria`) VALUES
(1, 1, 0, 200000, 5),
(2, 1, 201000, 300000, 4),
(3, 1, 301000, 400000, 3),
(4, 1, 401000, 500000, 2),
(5, 1, 501000, 5000000, 1),
(6, 2, 0, 4, 5),
(7, 2, 4.1, 8, 4),
(8, 2, 8.1, 12, 3),
(9, 2, 12.1, 16, 2),
(10, 2, 16.1, 100, 1),
(11, 3, 1, 1, 1),
(12, 3, 2, 2, 2),
(13, 3, 3, 3, 3),
(14, 3, 4, 4, 4),
(15, 3, 5, 5, 5),
(16, 4, 0, 4, 5),
(17, 4, 4.1, 8, 4),
(18, 4, 8.1, 12, 3),
(19, 4, 12.1, 16, 2),
(20, 4, 16.1, 200, 1),
(21, 5, 1, 1, 1),
(22, 5, 2, 2, 2),
(23, 5, 3, 3, 3),
(24, 5, 4, 4, 4),
(25, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`id_fasilitas`, `nama_fasilitas`) VALUES
(3, 'Rumah Makan Dua Dua '),
(4, 'Masjid Taqwa Pare '),
(5, 'RS Toelongredjo '),
(6, 'Masjid Agung An Nur Pare '),
(7, 'RSU Amelia '),
(8, 'RSIA Kasih Bunda '),
(9, 'Kedai Be Happy Pare '),
(10, 'Masjid Al-Furqon '),
(11, 'Rsud Kabupaten Kediri '),
(12, 'Spazio Lava Resto '),
(13, 'Mushola Al-Istianah '),
(14, 'B-Mile Dental Care '),
(15, 'Cempaka Street Food '),
(16, 'Mushola Al-Ghani '),
(17, 'Laboratorium Klinik Prima '),
(18, 'RM Padang Sayang Bundo'),
(19, 'Masjid Bani Hasyim '),
(20, 'RSUD Kabupaten Kediri ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_kos` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status_hasil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id_hasil`, `id_kos`, `id_user`, `status_hasil`) VALUES
(1, 1, 3, 'ok'),
(2, 2, 3, 'ok'),
(3, 1, 4, 'ok'),
(4, 2, 4, 'ok'),
(5, 3, 4, 'ok'),
(6, 3, 3, 'ok'),
(7, 1, NULL, 'ok'),
(8, 2, NULL, 'ok'),
(9, 3, NULL, 'ok'),
(10, 4, 3, 'ok'),
(11, 5, 3, 'ok'),
(12, 6, 3, 'ok'),
(13, 7, 3, 'ok'),
(14, 8, 3, 'ok'),
(15, 9, 3, 'ok'),
(16, 10, 3, 'ok'),
(17, 11, 3, 'ok'),
(18, 12, 3, 'ok'),
(19, 13, 3, 'ok'),
(20, 14, 3, 'ok'),
(21, 15, 3, 'ok'),
(22, 16, 3, 'ok'),
(23, 17, 3, 'ok'),
(24, 18, 3, 'ok'),
(25, 19, 3, 'ok'),
(26, 20, 3, 'ok'),
(27, 21, 3, 'ok'),
(28, 22, 3, 'ok'),
(29, 23, 3, 'ok'),
(30, 24, 3, 'ok'),
(31, 25, 3, 'ok'),
(32, 26, 3, 'ok'),
(33, 27, 3, 'ok'),
(34, 28, 3, 'ok'),
(35, 29, 3, 'ok'),
(36, 30, 3, 'ok'),
(37, 31, 3, 'ok'),
(38, 32, 3, 'ok'),
(39, 33, 3, 'ok'),
(40, 34, 3, 'ok'),
(41, 35, 3, 'ok'),
(42, 36, 3, 'ok'),
(43, 37, 3, 'ok'),
(44, 38, 3, 'ok'),
(45, 39, 3, 'ok'),
(46, 40, 3, 'ok'),
(47, 41, 3, 'ok'),
(48, 42, 3, 'ok'),
(49, 43, 3, 'ok'),
(50, 44, 3, 'ok'),
(51, 45, 3, 'ok'),
(52, 46, 3, 'ok'),
(53, 47, 3, 'ok'),
(54, 48, 3, 'ok'),
(55, 49, 3, 'ok'),
(56, 50, 3, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jarak_bimbel`
--

CREATE TABLE `tb_jarak_bimbel` (
  `id_jarak_bimbel` int(11) NOT NULL,
  `id_bimbel` int(11) DEFAULT NULL,
  `id_kos` int(11) DEFAULT NULL,
  `jarak` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jarak_bimbel`
--

INSERT INTO `tb_jarak_bimbel` (`id_jarak_bimbel`, `id_bimbel`, `id_kos`, `jarak`) VALUES
(75, 4, 1, 0.22);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jarak_fasilitas`
--

CREATE TABLE `tb_jarak_fasilitas` (
  `id_jarak_fasilitas` int(11) NOT NULL,
  `id_fasilitas` int(11) DEFAULT NULL,
  `id_kos` int(11) DEFAULT NULL,
  `jarak` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kos`
--

CREATE TABLE `tb_kos` (
  `id_kos` int(11) NOT NULL,
  `nama_kos` varchar(255) DEFAULT NULL,
  `lat_kos` varchar(255) DEFAULT NULL,
  `long_kos` varchar(255) DEFAULT NULL,
  `alamat_kos` text NOT NULL,
  `foto_kos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kos`
--

INSERT INTO `tb_kos` (`id_kos`, `nama_kos`, `lat_kos`, `long_kos`, `alamat_kos`, `foto_kos`) VALUES
(1, 'Kost Duta House', '112.1700736', '-7.7523201', '                            Jl.Puring,  Mulyosari,  Tulungrejo, Kec.Pare, Kabupate Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Duta_House_05062023.jpg'),
(2, 'Kost Khasanah', '112.1700736', '-7.7523201', '                            Jl.Brawijaya No.127, Mangunrejo, Tulungrejo, Kec.Pare, Kabupate Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Khasanah_05062023.jpg'),
(3, 'Sunrise Homestay', '112.1700736', '-7.7523201', '                            Jl. Anyelir No.20A, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Sunrise_Homestay_05062023.jpg'),
(4, 'Kost Mimi', '112.1700736', '-7.7523201', '                            Jl. Flamboyan No.16b, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Mimi_05062023.jpg'),
(5, 'Kost Griya Bu Mulyani', '112.1700736', '-7.7523201', '                            Jl. Merbabu 10, Plongko, Pare, Kec. Pare, Kabupaten Kediri, Jawa Timur 64211                        ', 'Docs_Kost_Griya_Bu_Mulyani_05062023.jpg'),
(6, 'Homestay VIP Kampung Inggris', '112.1700736', '-7.7523201', '                            Jl. Dahlia No.24, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Homestay_VIP_Kampung_Inggris_05062023.jpg'),
(7, 'Kost Baletentrem', '112.1700736', '-7.7523201', '                            Jl. DR. Wahidin Sudiro Husodo No.23, Pelem, Kec. Pare, Kabupaten Kediri, Jawa Timur 64213                        ', 'Docs_Kost_Baletentrem_05062023.jpg'),
(8, 'Kost Baren House Executive', '112.1700736', '-7.7523201', '                            Jl Veteran No 4, RT.6/RW.29, Tegalsari, Kec. Pare, Kabupaten Kediri, Jawa Timur 64213                        ', 'Docs_Kost_Baren_House_Executive_05062023.jpg'),
(9, 'Kost Arselino Royal Homestay', '112.1700736', '-7.7523201', '                            Jl.Kemuning No.33, RT.003/RW.011, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Arselino_Royal_Homestay_05062023.jpg'),
(10, 'Kost Aboen Winarto VIP', '112.1700736', '-7.7523201', '                            Jl.Kemuning No.100, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Aboen_Winarto_VIP_05062023.jpg'),
(11, 'Kost Saga Kampung Inggris', '112.1700736', '-7.7523201', '                            Jl. Kantil, RT.5/RW.15, Tegalsari, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Saga_Kampung_Inggris_05062023.jpg'),
(12, 'Kost Wisma Pengayom', '112.1700736', '-7.7523201', '                            Jl. Raden Ajeng Kartini No.22, Ngeblek, Pelem, Kec. Pare, Kabupaten Kediri, Jawa Timur 64213                        ', 'Docs_Kost_Wisma_Pengayom_05062023.jpg'),
(13, 'Kost AB Pare Kediri', '112.1700736', '-7.7523201', '                            Jl.Kemuning No.35b, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_AB_Pare_Kediri_05062023.jpg'),
(14, 'Kost Jaya Wijaya Pare Kediri', '112.1700736', '-7.7523201', '                            Jl. Jaya Wijaya No.12, Perdana, Pare, Kec. Pare, Kabupaten Kediri, Jawa Timur 64211                        ', 'Docs_Kost_Jaya_Wijaya_Pare_Kediri_05062023.jpg'),
(15, 'Kost Griya Utami', '112.1700736', '-7.7523201', '                            Jl. Tentara Genie Pelajar No.7, Plongko, Pare, Kec. Pare, Kabupaten Kediri, Jawa Timur 64211                        ', 'Docs_Kost_Griya_Utami_05062023.jpg'),
(16, 'Nur Azizah House', '112.1700736', '-7.7523201', '                            Jl.Puring,  Mulyosari,  Tulungrejo, Kec.Pare, Kabupate Kediri, Jawa Timur 64212                        ', 'Docs_Nur_Azizah_House_05062023.jpg'),
(17, 'Kost ISH', '112.1700736', '-7.7523201', '                            Jl.Brawijaya No.100, Mangunrejo, Tulungrejo, Kec.Pare, Kabupate Kediri, Jawa Timur 64212                        ', 'Docs_Kost_ISH_05062023.jpg'),
(18, 'Kost Assalam', '112.1700736', '-7.7523201', '                            Jl. Anyelir No.15A, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Assalam_05062023.jpg'),
(19, 'Trijaya Kost', '112.1700736', '-7.7523201', '                            Jl. Anyelir, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Trijaya_Kost_05062023.jpg'),
(20, 'Kost Aldy House', '112.1700736', '-7.7523201', '                            Jl. Flamboyan No.13, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Aldy_House_05062023.jpg'),
(21, 'Kost Family House', '112.1700736', '-7.7523201', '                            Jl. Flamboyan No.5, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Family_House_05062023.jpg'),
(22, 'Syanjaya Homestay', '112.1700736', '-7.7523201', '                            Jl. Dahlia, Mangunrejo, Tulungrejo, Kec.Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Syanjaya_Homestay_05062023.jpg'),
(23, 'Aladin Kost', '112.1700736', '-7.7523201', '                            Jl. Dahlia, Mangunrejo, Tulungrejo, Kec.Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Aladin_Kost_05062023.jpg'),
(24, 'Homestay Nusa Indah', '112.1700736', '-7.7523201', '                            Jl. Glagah, Mulyoasri, Tulungrejo, Kec.Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Homestay_Nusa_Indah_05062023.jpg'),
(25, 'Nabawi Homestay', '112.1700736', '-7.7523201', '                            Jl.Flamboyan No.113, Mulyoasri, Tulungrejo, Kec.Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Nabawi_Homestay_05062023.jpg'),
(26, 'Kost Astina House Pare', '112.1700736', '-7.7523201', '                            Jl. Glagah No.4B, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Astina_House_Pare_05062023.jpg'),
(27, 'Homey Kost Kampung inggris', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.132 D, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Homey_Kost_Kampung_inggris_05062023.jpg'),
(28, 'Kost Alrizky', '112.1700736', '-7.7523201', '                            Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Alrizky_05062023.jpg'),
(29, 'Homestay & Kos Herwanti', '112.1700736', '-7.7523201', '                            Jl. Dahlia No.09, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Homestay_Kos_Herwanti_05062023.jpg'),
(30, 'Haven Villa', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.40, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Haven_Villa_05062023.jpg'),
(31, 'Nyaman Homestay Syariah', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.43b, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 60256                        ', 'Docs_Nyaman_Homestay_Syariah_05062023.jpg'),
(32, 'Kost Rainbow', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.55, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Rainbow_05062023.jpg'),
(33, 'Kost Dilla House', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.67, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Dilla_House_05062023.jpg'),
(34, 'Hamdalah House', '112.1700736', '-7.7523201', '                            Jl. Anyelir No.62A, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Hamdalah_House_05062023.jpg'),
(35, 'Kost Rizky House', '112.1700736', '-7.7523201', '                            Jl.Kemuning No.124, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Rizky_House_05062023.jpg'),
(36, ' Kost Joyo House', '112.1700736', '-7.7523201', '                            Jl. Aselia,Rt 10 Rw 14, Tegalsari, Tegalsari, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs__Kost_Joyo_House_05062023.jpg'),
(37, 'Evy Kost', '112.1700736', '-7.7523201', '                            Jl. Aselia,Rt 10 Rw 14, Tegalsari, Tegalsari, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Evy_Kost_05062023.jpg'),
(38, 'Cempaka House', '112.1700736', '-7.7523201', '                            Jl. Cemp. No.15, Tegalsari, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Cempaka_House_05062023.jpg'),
(39, 'Kost FAAZT', '112.1700736', '-7.7523201', '                            Jl. Krisan, Tegalsari, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_FAAZT_05062023.jpg'),
(40, 'Amarta Boarding House', '112.1700736', '-7.7523201', '                            Jl. Pancawarna No.8, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Amarta_Boarding_House_05062023.jpg'),
(41, 'Blitz Boarding House', '112.1700736', '-7.7523201', '                            Jl. Pancawarna RT/RW 21/10,No.12, Mulyoasri, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Blitz_Boarding_House_05062023.jpg'),
(42, 'Kost Flamboyan House', '112.1700736', '-7.7523201', '                            Jl. Flamboyan No.135, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Flamboyan_House_05062023.jpg'),
(43, 'Kost Ibu Umi', '112.1700736', '-7.7523201', '                            Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Ibu_Umi_05062023.jpg'),
(44, 'Kost M2M House', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.119, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_M2M_House_05062023.jpg'),
(45, 'Kost Azzami House', '112.1700736', '-7.7523201', '                            Jl. Brawijaya No.117, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64216                        ', 'Docs_Kost_Azzami_House_05062023.jpg'),
(46, 'Alfil Homestay Pare', '112.1700736', '-7.7523201', '                            Jl. Anggrek No.26, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Alfil_Homestay_Pare_05062023.jpg'),
(47, 'Kost Kaltim House', '112.1700736', '-7.7523201', '                            Jl. Anggrek No.31, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Kaltim_House_05062023.jpg'),
(48, 'Kost Dhata House', '112.1700736', '-7.7523201', '                            Jl.Kemuning No.6C, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Dhata_House_05062023.jpg'),
(49, 'Rahayu Kosan', '112.1700736', '-7.7523201', '                            Jl. Kemuning No 20 RT 03 RW 11 Tulungrejo, Mangunrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Rahayu_Kosan_05062023.jpg'),
(50, 'Kost Enca House', '112.1700736', '-7.7523201', '                            Jl. Sakura No.11B, Puhrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212                        ', 'Docs_Kost_Enca_House_05062023.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot_kriteria`) VALUES
(1, 'harga', 'Harga Tempat Kos', 4),
(2, 'lokasi', 'Lokasi Tempat Kos', 5),
(3, 'fasilitas_kos', 'Kelengkapan Fasilitas Kos', 4),
(4, 'bimbel', 'Jarak Lembaga Fasilitas Terdekat', 3),
(5, 'fasilitas', 'Jumlah Fasilitas Umum', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level_user` varchar(255) DEFAULT NULL,
  `lat_user` varchar(255) DEFAULT NULL,
  `long_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`, `lat_user`, `long_user`) VALUES
(1, 'Al Ghifari', 'admin', '202cb962ac59075b964b07152d234b70', 'admin', '0', '0'),
(3, 'Yolan Meldi Saputra', 'yolan', '202cb962ac59075b964b07152d234b70', 'pengguna', '112.600846', '-7.936691'),
(4, 'Ghifa', 'ghifa', '250cf8b51c773f3f8dc8b4be867a9a02', 'pengguna', '112.600846', '-7.936691');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bimbel`
--
ALTER TABLE `tb_bimbel`
  ADD PRIMARY KEY (`id_bimbel`);

--
-- Indexes for table `tb_detail_hasil`
--
ALTER TABLE `tb_detail_hasil`
  ADD PRIMARY KEY (`id_detail_hasil`);

--
-- Indexes for table `tb_detail_kos`
--
ALTER TABLE `tb_detail_kos`
  ADD PRIMARY KEY (`id_detail_kos`);

--
-- Indexes for table `tb_detail_kriteria`
--
ALTER TABLE `tb_detail_kriteria`
  ADD PRIMARY KEY (`id_detail_kriteria`);

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_jarak_bimbel`
--
ALTER TABLE `tb_jarak_bimbel`
  ADD PRIMARY KEY (`id_jarak_bimbel`);

--
-- Indexes for table `tb_jarak_fasilitas`
--
ALTER TABLE `tb_jarak_fasilitas`
  ADD PRIMARY KEY (`id_jarak_fasilitas`);

--
-- Indexes for table `tb_kos`
--
ALTER TABLE `tb_kos`
  ADD PRIMARY KEY (`id_kos`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bimbel`
--
ALTER TABLE `tb_bimbel`
  MODIFY `id_bimbel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tb_detail_hasil`
--
ALTER TABLE `tb_detail_hasil`
  MODIFY `id_detail_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tb_detail_kos`
--
ALTER TABLE `tb_detail_kos`
  MODIFY `id_detail_kos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `tb_detail_kriteria`
--
ALTER TABLE `tb_detail_kriteria`
  MODIFY `id_detail_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_jarak_bimbel`
--
ALTER TABLE `tb_jarak_bimbel`
  MODIFY `id_jarak_bimbel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_jarak_fasilitas`
--
ALTER TABLE `tb_jarak_fasilitas`
  MODIFY `id_jarak_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kos`
--
ALTER TABLE `tb_kos`
  MODIFY `id_kos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
