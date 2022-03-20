-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 20 mars 2022 à 22:52
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `iim_symfo_project2`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `description`) VALUES
(115, 'Mac', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(116, 'iPad', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(117, 'iPhone', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(118, 'Watch', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(119, 'AirPods', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(120, 'TV', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(121, 'HomePod', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(122, 'Accessories', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(123, 'AirTag', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description'),
(124, 'Polishing Cloth', '2adc3fcc1ca5a37b0ccddb7a5629034553204049.jpg', 'Description');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220319150829', '2022-03-19 15:08:37', 118),
('DoctrineMigrations\\Version20220319190728', '2022-03-19 19:07:39', 54),
('DoctrineMigrations\\Version20220320051846', '2022-03-20 05:18:55', 124);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `image`, `description`, `stock`) VALUES
(1601, 124, 'Product 1', 3787.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 1', 4015),
(1602, 119, 'Product 2', 7018.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 2', 1702),
(1603, 115, 'Product 3', 3181.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 3', 3956),
(1604, 122, 'Product 4', 1717.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 4', 6362),
(1605, 118, 'Product 5', 1453.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 5', 3224),
(1606, 118, 'Product 6', 7119.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 6', 3990),
(1607, 115, 'Product 7', 3700.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 7', 8832),
(1608, 116, 'Product 8', 3818.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 8', 9142),
(1609, 124, 'Product 9', 6539.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 9', 7791),
(1610, 116, 'Product 10', 7087, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 10', 4658),
(1611, 118, 'Product 11', 879.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 11', 9815),
(1612, 117, 'Product 12', 4779, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 12', 8230),
(1613, 122, 'Product 13', 8860.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 13', 9130),
(1614, 124, 'Product 14', 2386.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 14', 1436),
(1615, 122, 'Product 15', 2809.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 15', 6663),
(1616, 116, 'Product 16', 2726.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 16', 2199),
(1617, 122, 'Product 17', 7676, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 17', 1939),
(1618, 116, 'Product 18', 4152.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 18', 3263),
(1619, 123, 'Product 19', 7662.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 19', 4473),
(1620, 123, 'Product 20', 6595.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 20', 6063),
(1621, 119, 'Product 21', 1298.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 21', 566),
(1622, 124, 'Product 22', 4515.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 22', 5455),
(1623, 124, 'Product 23', 362.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 23', 1582),
(1624, 119, 'Product 24', 7000.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 24', 8457),
(1625, 120, 'Product 25', 6869.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 25', 8783),
(1626, 120, 'Product 26', 3887.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 26', 4749),
(1627, 119, 'Product 27', 8287.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 27', 3139),
(1628, 119, 'Product 28', 8764.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 28', 6609),
(1629, 117, 'Product 29', 6922.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 29', 3308),
(1630, 121, 'Product 30', 8603.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 30', 9301),
(1631, 124, 'Product 31', 7296.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 31', 6198),
(1632, 116, 'Product 32', 2037.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 32', 816),
(1633, 119, 'Product 33', 4370.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 33', 6482),
(1634, 121, 'Product 34', 5998.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 34', 8702),
(1635, 124, 'Product 35', 8813.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 35', 1334),
(1636, 115, 'Product 36', 1359.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 36', 508),
(1637, 115, 'Product 37', 9557.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 37', 7099),
(1638, 115, 'Product 38', 3389.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 38', 7090),
(1639, 119, 'Product 39', 6951.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 39', 8752),
(1640, 122, 'Product 40', 96, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 40', 2106),
(1641, 117, 'Product 41', 5502.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 41', 1852),
(1642, 120, 'Product 42', 2615.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 42', 2244),
(1643, 118, 'Product 43', 6083.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 43', 823),
(1644, 123, 'Product 44', 9737.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 44', 2578),
(1645, 119, 'Product 45', 889.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 45', 7282),
(1646, 117, 'Product 46', 3841.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 46', 3378),
(1647, 116, 'Product 47', 4146, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 47', 2696),
(1648, 123, 'Product 48', 5870.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 48', 2718),
(1649, 123, 'Product 49', 2246.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 49', 3780),
(1650, 119, 'Product 50', 3216.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 50', 5391),
(1651, 119, 'Product 51', 1665.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 51', 8167),
(1652, 115, 'Product 52', 863.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 52', 6024),
(1653, 117, 'Product 53', 267.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 53', 7200),
(1654, 123, 'Product 54', 668.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 54', 8227),
(1655, 115, 'Product 55', 4254, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 55', 812),
(1656, 119, 'Product 56', 5549.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 56', 6395),
(1657, 123, 'Product 57', 972.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 57', 3720),
(1658, 124, 'Product 58', 47.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 58', 2374),
(1659, 123, 'Product 59', 9501, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 59', 7189),
(1660, 116, 'Product 60', 7205.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 60', 629),
(1661, 123, 'Product 61', 9375.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 61', 4480),
(1662, 123, 'Product 62', 5299, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 62', 516),
(1663, 118, 'Product 63', 789.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 63', 5388),
(1664, 123, 'Product 64', 4962.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 64', 7846),
(1665, 119, 'Product 65', 1956.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 65', 7622),
(1666, 117, 'Product 66', 2249.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 66', 8633),
(1667, 122, 'Product 67', 1100.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 67', 8714),
(1668, 119, 'Product 68', 1874.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 68', 632),
(1669, 122, 'Product 69', 3014.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 69', 5553),
(1670, 117, 'Product 70', 4915.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 70', 3817),
(1671, 119, 'Product 71', 8465.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 71', 4632),
(1672, 119, 'Product 72', 5305.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 72', 7699),
(1673, 123, 'Product 73', 5267.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 73', 9460),
(1674, 123, 'Product 74', 205.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 74', 3030),
(1675, 124, 'Product 75', 5192.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 75', 8538),
(1676, 118, 'Product 76', 2612.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 76', 9086),
(1677, 119, 'Product 77', 7771.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 77', 3204),
(1678, 115, 'Product 78', 5939.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 78', 4058),
(1679, 120, 'Product 79', 5512, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 79', 8511),
(1680, 121, 'Product 80', 8345.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 80', 3712),
(1681, 120, 'Product 81', 7900.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 81', 2433),
(1682, 117, 'Product 82', 77.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 82', 9950),
(1683, 123, 'Product 83', 618.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 83', 7334),
(1684, 119, 'Product 84', 4225.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 84', 5320),
(1685, 119, 'Product 85', 9574.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 85', 2271),
(1686, 121, 'Product 86', 2335, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 86', 5266),
(1687, 122, 'Product 87', 4121, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 87', 1051),
(1688, 117, 'Product 88', 9130.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 88', 5825),
(1689, 115, 'Product 89', 5617.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 89', 4468),
(1690, 120, 'Product 90', 1917.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 90', 4220),
(1691, 120, 'Product 91', 3543.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 91', 1935),
(1692, 119, 'Product 92', 6916.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 92', 4929),
(1693, 119, 'Product 93', 2293.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 93', 5873),
(1694, 118, 'Product 94', 4839, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 94', 2035),
(1695, 122, 'Product 95', 1906.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 95', 7628),
(1696, 124, 'Product 96', 9977.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 96', 8108),
(1697, 124, 'Product 97', 6532, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 97', 2408),
(1698, 117, 'Product 98', 2984.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 98', 5301),
(1699, 120, 'Product 99', 9990.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 99', 9896),
(1700, 121, 'Product 100', 8207.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 100', 3044),
(1701, 117, 'Product 101', 4960.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 101', 3134),
(1702, 116, 'Product 102', 6978.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 102', 3543),
(1703, 116, 'Product 103', 6149.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 103', 2692),
(1704, 123, 'Product 104', 2927.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 104', 3308),
(1705, 118, 'Product 105', 5655.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 105', 4121),
(1706, 116, 'Product 106', 2507.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 106', 9740),
(1707, 124, 'Product 107', 7465.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 107', 8513),
(1708, 121, 'Product 108', 598.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 108', 3525),
(1709, 119, 'Product 109', 1091.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 109', 8520),
(1710, 124, 'Product 110', 2031.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 110', 8139),
(1711, 119, 'Product 111', 8667.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 111', 2386),
(1712, 122, 'Product 112', 5355.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 112', 4493),
(1713, 121, 'Product 113', 8292, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 113', 5033),
(1714, 120, 'Product 114', 8536.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 114', 4138),
(1715, 120, 'Product 115', 548, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 115', 6776),
(1716, 118, 'Product 116', 3768.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 116', 6311),
(1717, 118, 'Product 117', 6820.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 117', 1927),
(1718, 116, 'Product 118', 8979.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 118', 289),
(1719, 115, 'Product 119', 2242.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 119', 571),
(1720, 121, 'Product 120', 4940.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 120', 4632),
(1721, 115, 'Product 121', 8801.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 121', 2397),
(1722, 123, 'Product 122', 4989.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 122', 714),
(1723, 115, 'Product 123', 5053.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 123', 7214),
(1724, 116, 'Product 124', 5887.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 124', 3031),
(1725, 122, 'Product 125', 5336.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 125', 684),
(1726, 121, 'Product 126', 6228.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 126', 7889),
(1727, 118, 'Product 127', 9367.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 127', 1182),
(1728, 123, 'Product 128', 8254, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 128', 4455),
(1729, 119, 'Product 129', 2583.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 129', 4055),
(1730, 124, 'Product 130', 7760.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 130', 8),
(1731, 119, 'Product 131', 4376.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 131', 219),
(1732, 117, 'Product 132', 3139.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 132', 1160),
(1733, 124, 'Product 133', 688.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 133', 8268),
(1734, 116, 'Product 134', 1776.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 134', 139),
(1735, 122, 'Product 135', 2541.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 135', 8995),
(1736, 121, 'Product 136', 4584.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 136', 7402),
(1737, 120, 'Product 137', 2498.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 137', 475),
(1738, 121, 'Product 138', 478.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 138', 9241),
(1739, 124, 'Product 139', 3869.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 139', 4519),
(1740, 123, 'Product 140', 215.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 140', 7140),
(1741, 122, 'Product 141', 8746.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 141', 8735),
(1742, 122, 'Product 142', 3023.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 142', 6572),
(1743, 117, 'Product 143', 2958.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 143', 8416),
(1744, 117, 'Product 144', 2308.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 144', 98),
(1745, 120, 'Product 145', 5276.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 145', 6362),
(1746, 123, 'Product 146', 3912.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 146', 1000),
(1747, 119, 'Product 147', 4526.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 147', 6155),
(1748, 124, 'Product 148', 7401, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 148', 2195),
(1749, 117, 'Product 149', 4930.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 149', 2130),
(1750, 116, 'Product 150', 5722.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 150', 9824),
(1751, 115, 'Product 151', 8249.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 151', 246),
(1752, 123, 'Product 152', 6445.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 152', 1806),
(1753, 121, 'Product 153', 6179.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 153', 2060),
(1754, 120, 'Product 154', 5647.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 154', 8498),
(1755, 124, 'Product 155', 200.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 155', 1862),
(1756, 122, 'Product 156', 663.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 156', 7581),
(1757, 117, 'Product 157', 7618.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 157', 5756),
(1758, 118, 'Product 158', 187.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 158', 8367),
(1759, 116, 'Product 159', 3454.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 159', 1488),
(1760, 116, 'Product 160', 2745.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 160', 8855),
(1761, 124, 'Product 161', 3521.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 161', 9024),
(1762, 121, 'Product 162', 2296.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 162', 549),
(1763, 115, 'Product 163', 5474.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 163', 9552),
(1764, 118, 'Product 164', 1800.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 164', 5565),
(1765, 115, 'Product 165', 1394.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 165', 3110),
(1766, 116, 'Product 166', 5781.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 166', 1174),
(1767, 117, 'Product 167', 4547.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 167', 4179),
(1768, 120, 'Product 168', 8508.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 168', 1773),
(1769, 123, 'Product 169', 2165.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 169', 3994),
(1770, 118, 'Product 170', 7517.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 170', 2095),
(1771, 116, 'Product 171', 5454.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 171', 1142),
(1772, 120, 'Product 172', 6332, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 172', 7801),
(1773, 119, 'Product 173', 1443, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 173', 9296),
(1774, 116, 'Product 174', 6054.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 174', 8206),
(1775, 117, 'Product 175', 1915.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 175', 7135),
(1776, 121, 'Product 176', 4145.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 176', 5754),
(1777, 118, 'Product 177', 921.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 177', 4933),
(1778, 123, 'Product 178', 1090.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 178', 8926),
(1779, 122, 'Product 179', 8109.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 179', 4761),
(1780, 121, 'Product 180', 3271.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 180', 7768),
(1781, 124, 'Product 181', 8493.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 181', 5779),
(1782, 122, 'Product 182', 7649.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 182', 9998),
(1783, 121, 'Product 183', 8056.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 183', 16),
(1784, 120, 'Product 184', 3081.6, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 184', 2733),
(1785, 117, 'Product 185', 8715.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 185', 1380),
(1786, 123, 'Product 186', 4385.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 186', 9621),
(1787, 115, 'Product 187', 830.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 187', 7437),
(1788, 115, 'Product 188', 6923.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 188', 6697),
(1789, 124, 'Product 189', 1393.5, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 189', 7798),
(1790, 115, 'Product 190', 8943.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 190', 2056),
(1791, 117, 'Product 191', 1321.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 191', 9390),
(1792, 117, 'Product 192', 7434.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 192', 1282),
(1793, 122, 'Product 193', 6615.1, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 193', 5862),
(1794, 120, 'Product 194', 9725.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 194', 6198),
(1795, 115, 'Product 195', 4774.8, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 195', 1465),
(1796, 118, 'Product 196', 6929.2, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 196', 2818),
(1797, 116, 'Product 197', 2474.9, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 197', 6474),
(1798, 118, 'Product 198', 2359.7, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 198', 9294),
(1799, 118, 'Product 199', 8453.4, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 199', 5172),
(1800, 121, 'Product 200', 4343.3, '5d6f09670b9a9b953d3104cb768c33b5f79ef6e8.jpg', 'Description 200', 4262);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `picture`) VALUES
(153, 'user1@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$jDngW2tnwaywgImaVK5SFO8aa2wrPQMLYTF5ue5bQ9Br/qdnEexbu', NULL),
(154, 'user2@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$qxmO4IuMLHk5KbNNcTCttOI8s2hY1av4n51LffB9GFi7EMgRuw.Q2', NULL),
(155, 'user3@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$gHN/RikGGD522TnSStRke.BTgW/BH32O5hKzJkbkNkRCS5LJvs5hS', NULL),
(156, 'user4@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$j6LLqKj5gMPb042zi8z6qekjWdD2l3Dqq41s67R2X2ZXqHSkXFLPO', NULL),
(157, 'user5@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$wWMjcPj3MuYDcQIbnW8W5uTJEDHN2b6hnSgQDCrM4623.sLEFQtKi', NULL),
(158, 'user6@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$/.mBqb6Uwfk0jNnHDqczu./RPdSFOAHxplNCIGBTV3bXDgXiLMbJ.', NULL),
(159, 'user7@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$GP2ujw1fW3uns4q940SixeAlyQQnlgbQIleroGKN0y/BUnVxsnBmW', NULL),
(160, 'user8@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$O6pnxlETFD.I/DPZ9WFiDeENZC4dysKw8pISJqnrHpzqg8Peh87nm', NULL),
(161, 'user9@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$JnKs5pta7amHRBRliePiIeI5UvdsTWmORb7ZAAKQxQAeMAwhaSd.i', NULL),
(162, 'user10@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Bf1ml2.kjdkBclw9JYjJxumLUAiJsSLplO9xux81Ig.iP/BcQIycO', NULL),
(163, 'user11@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$7yIQ9KLielaNGaS9tEWwD.Mx6NRc5alskfUtA.JTGv4USaUO3uKxq', NULL),
(164, 'user12@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Abyo34u.N2GOdPY2IQtkI.XYgz4okNdY9Uqz/KmMtUOYrHv5g/sUC', NULL),
(165, 'user13@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$UlR4V7.OW6tSc8Axgw4quOsioL.63zJmh/lzovp3HAoSkuQX/LgcG', NULL),
(166, 'user14@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$vXcb.Ly153aiL6K2/NYin.z.tHcQAVAa5Xl.Gd5T9HbRp.KhuLhrG', NULL),
(167, 'user15@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$9beK0w4uM55NWrdWtzFU3uZPp.W0Usw6BqkzRY.IiC536A5HG/fpG', NULL),
(168, 'user16@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$2qDNDfilge4HeMM0zv7VxOpiexawaqsokbEbSQIG4OL.UbZXm.obG', NULL),
(169, 'user17@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Vz2O9D5xpcP/lNonfw5FpOgaCPf87H2VkAZY5qVHq54vMOOms3agG', NULL),
(170, 'user18@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$rBZByt6PU4hbG7J4vNO6queIGCygB7dopR.uYRlgGsBHgcR.NygUO', NULL),
(171, 'user19@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$rxqYYD2qzQaESB6xwwQTc.jD6B0DpsgeZTAMj3OKyubzfFcK5Mjqi', NULL),
(172, 'user20@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$DUDBKyoDZcQFivySoalSNOJaUBJoLsdKE2Y/GAeSI9sHBI/PLtMXS', NULL),
(173, 'user21@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$rJ3UfgrU/C/HJb3FYKt6EOm/2hlyWdh9V6EbUGbmybSMz6sqhn6dC', NULL),
(174, 'user22@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$gSMS8DM3N8g0DHtqtL3G8e3.oVcdW3Xp9V7QTIosaaVW1Ac15siE.', NULL),
(175, 'user23@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$A/BnTi2qnBFrRVUNBoBEEu.T10bBRTE.5kIlq84BAiGKaB5oBV/zW', NULL),
(176, 'user24@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$aq8OSdV8GtJCP.trozNq8.NbSG.xi2/zcsBS.kP5ZqYXBkigJoL8q', NULL),
(177, 'user25@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$S.zRWaqjKDOCGVTrrGhLW.GV3XSieovbOR0IRm2AmNWqHJEc/yZhS', NULL),
(178, 'user26@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$WGhy2AqUVt2Qf7kdgUa7vOEMmP3antzxfLU5IAS1B3ywEomP9RsiG', NULL),
(179, 'user27@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$jNfHgAXn7BfSTU/tsOplauApg3IPV9fm/fFOtDPVQ6ZgpBuQTGHhW', NULL),
(180, 'user28@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$fHHMqNUKSLbTTz0EeFOATOpmmM2AeUqoDYLajrRD1P01MjvwGjw.6', NULL),
(181, 'user29@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$PmGSlw2GzgG/Um9wgVzaGucvd48VV.CbZIFlLiIwCpGjr29Yno.Tq', NULL),
(182, 'user30@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$FkdeGpCnfJQ7JgWIHiowLu5wRGrhD4mbYxQZhsZLzMvpGj5vQEwsC', NULL),
(183, 'user31@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$0FIdWTUOJ6VxoirlM6t2Zu1R32RRDHYbGq.7M3zTVUuIi4fVhGIJS', NULL),
(184, 'user32@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$CmHZ9hVUAWP9GO3XJuYEUezP9k/lhE22OWWNE.X7M6eZ28u5mLRiG', NULL),
(185, 'user33@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$cH2S4U6cizwR2qS3Oo8XVO5MGymVR/y9lrEQwouWweMqDUv/qQvOe', NULL),
(186, 'user34@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$xHS9xj21nwkobe0xPSr96uZtbIuDmjYTkml8Z4N8fn4hFXj.5zAr2', NULL),
(187, 'user35@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$W0nppzkncVlQ/.gNaBkD.ev8WRP1MV11JKlc41yunoZCNCWOVibIS', NULL),
(188, 'user36@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$OqRE8dFcaGVYnKVdwKEZh.4ghr74JVned6jWhY4edWJqxWo3GP9wO', NULL),
(189, 'user37@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$mkh32thywmOgYUKsHmKc0e6uvk/4u6BjLvEic9exDFEB0C.eeQ2uq', NULL),
(190, 'user38@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$.XnntTlA5lwJMoqFe1SD0uXWoHUggslmwsL/sHAS4zdZH9wKXzNAO', NULL),
(191, 'user39@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$F58xDa6H2O5.O37Vt7GFQ.s8bY07WcWN70PCR/kgSVUXv/t5LsHjy', NULL),
(192, 'user40@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Nyu/nCs4NPNuJfqrT4tGmOeykEhWhqQWO28DvCmv9biYTLxAWNtN2', NULL),
(193, 'user41@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$gw8j6RSDSqaEVHxvBb8feeWuz0idHdJXGgVQ42kJVGHUltfbgYaOq', NULL),
(194, 'user42@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$1D0zQhz9x488hpfFMqX/P.aal2BwZM0meauRo./BzbEJG1xRGjbx6', NULL),
(195, 'user43@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$DLwFimQzufRwkekxIpmzk.wYXlE50j01y3R6LifOfGz2lqumAgEqC', NULL),
(196, 'user44@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$fK09PO5SLtbMcuwGshihAe2cnpU4mT.drYTbcLPbIpxL2ypKyNJYC', NULL),
(197, 'user45@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$1WBvRc9.WqpWmU3tehYdTOSifRSvBHeULFtVXA9/62rBGgfpkT4jS', NULL),
(198, 'user46@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$61xdTqZ667BhizzDKefgsOtJcvlWKzRtc.9EKiPlGLf/08n/Ok5ee', NULL),
(199, 'user47@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Shg1P9sjuY9.fcsceFD3DeopS47P6Z4CI.i32LyWxuDBOBjDHDgAm', NULL),
(200, 'user48@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$N.FESX1OaN9deMDzsHcKFer2ZrvA6ukliQs9bU6TEL/ZpWyzUwhJS', NULL),
(201, 'user49@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$bSanZub2zJFZRPI8b.fbTerI.UkAsEoyuXkoEWLmZ7D2AhygPBKZe', NULL),
(202, 'user50@gmail.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$XsxoiNhdfgnKxC.AVmUoeeM0b.Nm1ZUrZgSReCk9dZCbHSLYGFfsG', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1801;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
