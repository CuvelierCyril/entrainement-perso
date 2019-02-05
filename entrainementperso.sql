-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 05 fév. 2019 à 16:45
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `entrainementperso`
--

-- --------------------------------------------------------

--
-- Structure de la table `profession`
--

CREATE TABLE `profession` (
  `id` int(11) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `p_armor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profession`
--

INSERT INTO `profession` (`id`, `p_name`, `p_armor`) VALUES
(1, 'guardien', 'lourd'),
(2, 'guerrier', 'lourd'),
(3, 'revenant', 'lourd'),
(4, 'rodeur', 'intermediaire'),
(5, 'ingenieur', 'intermediaire'),
(6, 'voleur', 'intermediaire'),
(7, 'elementaliste', 'leger'),
(8, 'envouteur', 'leger'),
(9, 'necromant', 'leger');

-- --------------------------------------------------------

--
-- Structure de la table `profession_weapons`
--

CREATE TABLE `profession_weapons` (
  `id_profession` int(11) NOT NULL,
  `id_weapons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profession_weapons`
--

INSERT INTO `profession_weapons` (`id_profession`, `id_weapons`) VALUES
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 1),
(2, 3),
(2, 4),
(2, 8),
(2, 9),
(2, 11),
(2, 12),
(2, 14),
(2, 16),
(3, 1),
(3, 3),
(3, 4),
(3, 12),
(3, 13),
(4, 1),
(4, 2),
(4, 4),
(4, 10),
(4, 9),
(4, 11),
(4, 15),
(4, 14),
(5, 5),
(5, 8),
(5, 16),
(6, 2),
(6, 5),
(6, 4),
(6, 15),
(7, 2),
(7, 6),
(7, 7),
(7, 13),
(8, 5),
(8, 6),
(8, 4),
(8, 7),
(8, 10),
(8, 11),
(8, 13),
(9, 1),
(9, 2),
(9, 6),
(9, 7),
(9, 9),
(9, 13);

-- --------------------------------------------------------

--
-- Structure de la table `spécialisations`
--

CREATE TABLE `spécialisations` (
  `id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `profession_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `spécialisations`
--

INSERT INTO `spécialisations` (`id`, `s_name`, `profession_id`) VALUES
(1, 'zele', 1),
(2, 'rayonnement', 1),
(3, 'bravoure', 1),
(4, 'honneur', 1),
(5, 'vertus', 1),
(6, 'force', 2),
(7, 'armes', 2),
(8, 'défense', 2),
(9, 'tactique', 2),
(10, 'discipline', 2),
(11, 'corruption', 3),
(12, 'punition', 3),
(13, 'redemption', 3),
(14, 'invocation', 3),
(15, 'devastation', 3),
(16, 'explosifs', 5),
(17, 'armes a feu', 5),
(18, 'inventions', 5),
(19, 'alchimie', 5),
(20, 'outils', 5),
(21, 'adresse au tir', 4),
(22, 'escarmouche', 4),
(23, 'survie', 4),
(24, 'domptage', 4),
(25, 'magie de la nature', 4),
(26, 'arts letaux', 6),
(27, 'coups critiques', 6),
(28, 'arts des ombres', 6),
(29, 'duplicite', 6),
(30, 'acrobatie', 6),
(31, 'feu', 7),
(32, 'eau', 7),
(33, 'terre', 7),
(34, 'air', 7),
(35, 'arcanes', 7),
(36, 'domination', 8),
(37, 'duel', 8),
(38, 'chaos', 8),
(39, 'inspiration', 8),
(40, 'illusion', 8),
(41, 'magie de la mort', 9),
(42, 'magie du sang', 9),
(43, 'mechancete', 9),
(44, 'moisson des ames', 9),
(45, 'malediction', 9);

-- --------------------------------------------------------

--
-- Structure de la table `weapons`
--

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL,
  `w_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `weapons`
--

INSERT INTO `weapons` (`id`, `w_name`) VALUES
(1, 'hache'),
(2, 'dague'),
(3, 'masse'),
(4, 'epee'),
(5, 'pistolet'),
(6, 'sceptre'),
(7, 'focus'),
(8, 'boulier'),
(9, 'cor de guerre'),
(10, 'torche'),
(11, 'esapdon'),
(12, 'marteau'),
(13, 'baton'),
(14, 'arc long'),
(15, 'arc court'),
(16, 'fusil');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profession_weapons`
--
ALTER TABLE `profession_weapons`
  ADD KEY `aaa` (`id_profession`),
  ADD KEY `bbb` (`id_weapons`);

--
-- Index pour la table `spécialisations`
--
ALTER TABLE `spécialisations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ccc` (`profession_id`);

--
-- Index pour la table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `profession`
--
ALTER TABLE `profession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `spécialisations`
--
ALTER TABLE `spécialisations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `profession_weapons`
--
ALTER TABLE `profession_weapons`
  ADD CONSTRAINT `aaa` FOREIGN KEY (`id_profession`) REFERENCES `profession` (`id`),
  ADD CONSTRAINT `bbb` FOREIGN KEY (`id_weapons`) REFERENCES `weapons` (`id`);

--
-- Contraintes pour la table `spécialisations`
--
ALTER TABLE `spécialisations`
  ADD CONSTRAINT `ccc` FOREIGN KEY (`profession_id`) REFERENCES `profession` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
