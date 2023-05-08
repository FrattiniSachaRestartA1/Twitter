-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 08 mai 2023 à 18:17
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `twitterdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE `tweets` (
  `id` int NOT NULL,
  `contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tweets`
--

INSERT INTO `tweets` (`id`, `contenu`, `date_creation`) VALUES
(4, 'Omg Chowh1 ne participe !\r\n', '2023-05-08 09:55:38'),
(5, 'Popcorn, j\'adore\r\n', '2023-05-08 09:55:48'),
(9, 'OMG', '2023-05-08 10:00:39'),
(27, 'Lomepal,incroyable !!\r\n', '2023-05-08 16:54:19'),
(28, 'J\'adore les citrons! \r\n', '2023-05-08 16:54:35'),
(29, ' FLASH | Voici le classement des 10 meilleures gastronomies selon CNN Travel :\r\nItalie\r\nChine\r\nFrance\r\nEspagne\r\nJapon\r\nInde\r\nGrèce\r\nThaïlande \r\nMexique\r\nUSA\r\n\r\nÊtes-vous d\'accord avec ce classement ?', '2023-05-08 16:57:00'),
(35, 'omg c\'est génial', '2023-05-08 17:46:29'),
(36, 'hohhoougogo\r\n', '2023-05-08 17:55:12'),
(37, 'Wow, Vive les citrons !!', '2023-05-08 18:04:43');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `pseudo`, `email`, `password`, `photo`) VALUES
(1, '', '', '', '', ''),
(2, 'test', 'teste', 'test@gmail.com', 'test', ''),
(3, 'Nicolas', 'Dupont', 'Nicolasdupont@gmail.fr', 'mdp', ''),
(4, 'Jean', 'Marie', 'Jeanmarie@gmail.fr', 'mdp', ''),
(5, 'Michel', 'Michemiche', 'Micheletmichel@gmail.com', 'mdp', ''),
(6, 'Citron', 'Elcitron', 'leprofcitron@gmail.com', 'mdp', ''),
(7, 'Chester', 'Chester', 'linkinpark@gmail.com', 'mdp', 'Affiche vierge bonne version.jpg'),
(8, 'f', 'f', 'f@gmail.com', 'f', ''),
(9, 'Chester', 'Chester', 'linkinpark@gmail.com', 'mdp', 'Affiche vierge bonne version.jpg'),
(10, 'Lecullier', 'Sachouuuu', 'sachafratt@gmail.com', 'mdp', ''),
(11, 'Lecullier', 'Sachouuuu', 'sachafratt@gmail.com', 'mdp', ''),
(12, 'Lecullier', 'ffvrfrg', 'gr@g.ail', 'mdp', ''),
(13, 'Frattini', 'teste', 'sachafratt@gmail.com', 'mdp', ''),
(14, 'Citron', 'leprofcitron', 'sachafratt@gmail.com', 'mdp', ''),
(15, 'Jean', 'Michel', 'Jeanmichel@gmail.com', 'Citron', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
