-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 12 juil. 2023 à 20:22
-- Version du serveur : 10.4.8-MariaDB
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Base de données : `task manager`
--
CREATE DATABASE IF NOT EXISTS `task manager` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `task manager`;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `name`, `fname`, `mail`, `phone`, `username`, `password`) VALUES
(1, 'rayen', 'kanzari', 'itzmerayen@gmail.com', '26871987', 'rayeno', 'nigaslayer'),
(2, 'robeto', 'carlos', 'roberto@gmail.com', '11111111', 'carlosa', 'carlosa123'),
(3, 'qsdq', 'sd', 'qsd@', '32233232', 'zenji', 'qsdqsd'),
(4, 'sdf', 'sdf', 'sdf@gmail.com', '23232323', '7outa', 'sdfsdf');

-- --------------------------------------------------------

--
-- Structure de la table `priority`
--

CREATE TABLE `priority` (
  `prio` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `priority`
--

INSERT INTO `priority` (`prio`) VALUES
('high'),
('mid'),
('low');

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `tasknb` int(5) NOT NULL,
  `username` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taskname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `prioritylvl` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`tasknb`, `username`, `taskname`, `description`, `date`, `prioritylvl`) VALUES
(1, '0', 'a9ra', 'rivez algo ', '2023-07-23', 'high'),
(2, '0', 'a9ra', 'rivz algo ', '2023-07-23', 'high'),
(3, 'rayeno', 'film', 'tfrj fi film the dictator', '2023-07-22', 'high'),
(4, 'rayeno', 'qsd', 'qsd', '2023-03-23', 'mid'),
(5, 'rayeno', 'ehje', 'hehe', '2023-09-23', 'low');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD UNIQUE KEY `tasknb` (`tasknb`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `zenji`
--
CREATE DATABASE IF NOT EXISTS `zenji` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `zenji`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
