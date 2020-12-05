-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 25 juin 2020 à 12:27
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `burger_code`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Burgers'),
(3, 'Snacks'),
(4, 'Salades'),
(5, 'Boissons'),
(6, 'Desserts');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'Menu Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon + Frites + Boisson', 8.9, 'm1.png', 1),
(2, 'Menu Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 9.5, 'm2.png', 1),
(3, 'Menu Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade + Frites + Boisson', 10.9, 'm3.png', 1),
(4, 'Menu Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise + Frites + Boisson', 9.9, 'm4.png', 1),
(5, 'Menu Fish', 'Sandwich: Poisson, Salade, Mayonnaise, Cornichon + Frites + Boisson', 10.9, 'm5.png', 1),
(6, 'Menu Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 11.9, 'm6.png', 1),
(7, 'Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon', 5.9, 'b1.png', 2),
(8, 'Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate', 6.5, 'b2.png', 2),
(9, 'Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade', 6.9, 'b3.png', 2),
(10, 'Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise', 5.9, 'b4.png', 2),
(11, 'Fish', 'Sandwich: Poisson PanÃ©, Salade, Mayonnaise, Cornichon', 6.5, 'b5.png', 2),
(12, 'Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate', 7.5, 'b6.png', 2),
(13, 'Frites', 'Pommes de terre frites', 3.9, 's1.png', 3),
(14, 'Onion Rings', 'Rondelles d\'oignon frits', 3.4, 's2.png', 3),
(15, 'Nuggets', 'Nuggets de poulet frits', 5.9, 's3.png', 3),
(16, 'Nuggets Fromage', 'Nuggets de fromage frits', 3.5, 's4.png', 3),
(17, 'Ailes de Poulet', 'Ailes de poulet Barbecue', 5.9, 's5.png', 3),
(18, 'CÃ©sar Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 8.9, 'sa1.png', 4),
(19, 'CÃ©sar Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 8.9, 'sa2.png', 4),
(20, 'Salade Light', 'Salade, Tomate, Concombre, MaÃ¯s et Vinaigre balsamique', 5.9, 'sa3.png', 4),
(21, 'Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la sauce de votre choix', 7.9, 'sa4.png', 4),
(22, 'Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la sauce de votre choix', 7.9, 'sa5.png', 4),
(23, 'Coca-Cola', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo1.png', 5),
(24, 'Coca-Cola Light', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo2.png', 5),
(25, 'Coca-Cola ZÃ©ro', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo3.png', 5),
(26, 'Fanta', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo4.png', 5),
(27, 'Sprite', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo5.png', 5),
(28, 'Nestea', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo6.png', 5),
(29, 'Fondant au chocolat', 'Au choix: Chocolat Blanc ou au lait', 4.9, 'd1.png', 6),
(30, 'Muffin', 'Au choix: Au fruits ou au chocolat', 2.9, 'd2.png', 6),
(31, 'Beignet', 'Au choix: Au chocolat ou Ã  la vanille', 2.9, 'd3.png', 6),
(32, 'Milkshake', 'Au choix: Fraise, Vanille ou Chocolat', 3.9, 'd4.png', 6),
(33, 'Sundae', 'Au choix: Fraise, Caramel ou Chocolat', 4.9, 'd5.png', 6);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id_item` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id_item`, `id_user`, `note`) VALUES
(33, 4, 4),
(15, 1, 6),
(30, 12, 2),
(11, 14, 1),
(33, 12, 4),
(31, 13, 8),
(10, 6, 10),
(26, 2, 3),
(18, 10, 6),
(32, 15, 1),
(22, 11, 9),
(29, 12, 9),
(5, 7, 8),
(17, 15, 5),
(1, 10, 1),
(20, 12, 10),
(11, 9, 5),
(17, 10, 6),
(23, 7, 4),
(33, 3, 5),
(24, 2, 10),
(23, 11, 3),
(22, 14, 4),
(33, 3, 8),
(14, 13, 1),
(20, 5, 10),
(2, 1, 1),
(14, 8, 4),
(26, 7, 10),
(30, 13, 10),
(4, 10, 9),
(16, 6, 7),
(25, 14, 6),
(14, 12, 9),
(15, 2, 8),
(18, 14, 8),
(4, 1, 10),
(5, 2, 8),
(4, 13, 5),
(19, 13, 10),
(22, 11, 10),
(1, 11, 7),
(18, 13, 1),
(6, 11, 7),
(31, 12, 6),
(30, 8, 7),
(3, 11, 9),
(31, 8, 2),
(26, 12, 2),
(29, 15, 5),
(23, 3, 5),
(10, 4, 3),
(6, 1, 10),
(7, 6, 3),
(33, 11, 5),
(32, 2, 1),
(10, 9, 2),
(10, 2, 1),
(15, 12, 5),
(20, 10, 4),
(25, 5, 8),
(27, 2, 10),
(22, 1, 3),
(4, 4, 8),
(14, 7, 2),
(17, 1, 3),
(33, 7, 10),
(26, 8, 9),
(14, 13, 6),
(8, 13, 5),
(26, 8, 10),
(28, 2, 3),
(21, 9, 4),
(11, 7, 3),
(15, 12, 7),
(15, 15, 3),
(27, 9, 4),
(32, 5, 1),
(20, 15, 5),
(10, 6, 6),
(18, 11, 3),
(13, 2, 8),
(9, 14, 2),
(4, 5, 4),
(17, 9, 9),
(1, 14, 1),
(27, 5, 7),
(11, 14, 4),
(18, 8, 6),
(4, 10, 8),
(16, 12, 2),
(14, 11, 5),
(7, 1, 3),
(1, 14, 2),
(3, 12, 2),
(5, 2, 2),
(17, 12, 7),
(9, 5, 1),
(25, 12, 8),
(30, 3, 4),
(6, 2, 1),
(1, 12, 1),
(28, 14, 1),
(15, 5, 5),
(13, 14, 8),
(29, 1, 6),
(24, 10, 8),
(22, 8, 4),
(29, 12, 1),
(20, 15, 8),
(18, 10, 6),
(29, 7, 9),
(4, 5, 9),
(10, 13, 3),
(3, 14, 4),
(27, 7, 5),
(20, 10, 1),
(4, 2, 8),
(26, 2, 4),
(33, 15, 7),
(10, 15, 3),
(13, 7, 3),
(27, 12, 1),
(7, 12, 7),
(22, 9, 9),
(13, 6, 9),
(32, 7, 10),
(8, 13, 2),
(20, 15, 4),
(16, 9, 2),
(2, 5, 6),
(24, 12, 10),
(33, 4, 7),
(9, 4, 5),
(29, 14, 3),
(5, 11, 9),
(6, 13, 9),
(11, 4, 10),
(10, 1, 10),
(12, 8, 3),
(3, 14, 9),
(25, 7, 3),
(13, 10, 9),
(11, 7, 4),
(22, 15, 4),
(27, 2, 10),
(20, 14, 4),
(17, 7, 1),
(31, 10, 5),
(5, 3, 7),
(32, 15, 9),
(5, 10, 6),
(23, 4, 4),
(9, 11, 7),
(27, 10, 7),
(29, 4, 1),
(2, 8, 10),
(20, 9, 4),
(17, 3, 7),
(24, 2, 3),
(19, 1, 10),
(4, 6, 5),
(27, 10, 3),
(1, 11, 7),
(33, 4, 6),
(31, 2, 1),
(2, 12, 5),
(18, 14, 2),
(33, 8, 8),
(28, 14, 10),
(30, 15, 3),
(12, 8, 8),
(22, 14, 7),
(21, 7, 10),
(9, 2, 5),
(31, 1, 3),
(15, 9, 10),
(2, 1, 5),
(32, 12, 2),
(21, 6, 8),
(16, 15, 2),
(19, 1, 10),
(9, 2, 8),
(33, 15, 7),
(9, 10, 6),
(3, 10, 1),
(18, 2, 3),
(6, 14, 2),
(8, 3, 10),
(7, 14, 3),
(23, 4, 1),
(11, 7, 5),
(3, 12, 1),
(7, 15, 8),
(8, 8, 9),
(31, 8, 5),
(9, 12, 7),
(19, 8, 5),
(16, 10, 9),
(4, 10, 8),
(24, 4, 2),
(29, 1, 1),
(24, 2, 3),
(6, 9, 2),
(14, 15, 9),
(28, 3, 4),
(32, 6, 8),
(24, 8, 4),
(30, 5, 3),
(30, 5, 8),
(9, 8, 8),
(4, 8, 6),
(32, 13, 8),
(30, 15, 2),
(28, 11, 9),
(9, 7, 6),
(6, 1, 9),
(7, 10, 10),
(27, 6, 5),
(6, 4, 5),
(4, 15, 7),
(11, 9, 10),
(14, 3, 6),
(11, 3, 4),
(9, 4, 5),
(25, 12, 8),
(29, 6, 7),
(6, 1, 7),
(25, 11, 5),
(32, 6, 3),
(31, 11, 1),
(13, 13, 9),
(28, 12, 7),
(18, 15, 7),
(21, 4, 4),
(24, 3, 3),
(33, 3, 6),
(23, 12, 8),
(7, 8, 6),
(32, 15, 8),
(4, 9, 4),
(25, 13, 10),
(3, 7, 5),
(24, 5, 7),
(8, 14, 1),
(29, 9, 4),
(14, 12, 6),
(4, 8, 2),
(20, 1, 1),
(33, 13, 9),
(33, 9, 1),
(1, 14, 10),
(9, 13, 9),
(17, 11, 10),
(5, 9, 9),
(5, 6, 4),
(29, 2, 9),
(25, 12, 6),
(27, 4, 3),
(22, 9, 6),
(2, 11, 7),
(17, 8, 5),
(3, 8, 2),
(20, 7, 2),
(8, 1, 5),
(16, 15, 5),
(1, 7, 9),
(17, 4, 6),
(21, 13, 4),
(33, 13, 9),
(12, 7, 9),
(13, 15, 4),
(13, 1, 7),
(22, 4, 1),
(18, 6, 7),
(14, 14, 4),
(8, 10, 10),
(25, 8, 9),
(20, 2, 10),
(31, 10, 6),
(21, 13, 1),
(10, 4, 9),
(32, 9, 6),
(4, 7, 1),
(3, 9, 5),
(31, 10, 4),
(24, 14, 3),
(31, 4, 8),
(5, 3, 7),
(32, 3, 7),
(33, 8, 6),
(3, 4, 5),
(33, 11, 5),
(20, 13, 1),
(20, 9, 2),
(33, 1, 9),
(15, 15, 3),
(3, 13, 8),
(4, 13, 4),
(18, 9, 8);

-- --------------------------------------------------------

--
-- Structure de la table `recomendation`
--

CREATE TABLE `recomendation` (
  `id_produit` int(11) NOT NULL,
  `rec` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recomendation`
--

INSERT INTO `recomendation` (`id_produit`, `rec`) VALUES
(1, '2,3,7,6,4,5'),
(2, '6,1,8,3,12,4'),
(3, '6,1,9,2,5,12'),
(4, '10,1,5,2,6,3'),
(5, '1,4,11,3,2,10'),
(6, '2,3,12,1,8,4'),
(7, '1,8,9,12,2,3'),
(8, '12,2,6,7,9,1'),
(9, '3,12,7,8,6,1'),
(10, '4,1,5,7,2,6'),
(11, '5,7,9,10,1,4'),
(12, '8,6,9,2,7,3'),
(13, '14,15,16,10,1,4'),
(14, '13,15,16,10,1,4'),
(15, '16,10,4,13,14,17'),
(16, '15,2,3,6,13,14'),
(17, '15,10,21,22,18,19'),
(18, '19,21,22,10,4,7'),
(19, '18,22,21,10,4,7'),
(20, '7,8,10,21,22,12'),
(21, '22,18,19,10,4,7'),
(22, '21,19,18,10,4,7'),
(23, '24,25,26,27,28,30'),
(24, '23,25,26,27,28,30'),
(25, '23,24,26,27,28,30'),
(26, '23,24,25,27,28,30'),
(27, '23,24,25,26,28,30'),
(28, '23,24,25,26,27,30'),
(29, '30,31,32,33,23,24'),
(30, '29,31,32,33,23,24'),
(31, '32,30,29,33,23,24'),
(32, '31,33,30,29,23,24'),
(33, '32,30,29,31,23,24');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `name` varchar(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `name`, `login`, `mdp`) VALUES
(1, 'Emily Gibbs', 'Aliquam.rutrum@vitaesodalesnisi.co.uk', 'RPC49DNN8GE'),
(2, 'Alan Farmer', 'rutrum.non@commodo.net', 'AOH40PML9AZ'),
(3, 'Desirae Pet', 'semper@Duiselementum.org', 'FRW35ZBI4YN'),
(4, 'Mannix Bird', 'mollis.vitae@lectus.org', 'EGC85PPY2XO'),
(5, 'Haviva Cobb', 'et.libero@IntegermollisInteger.org', 'GKW72TUU3ZB'),
(6, 'Matthew Rus', 'eu.erat@sodalesMaurisblandit.com', 'CAV61AAH8BJ'),
(7, 'Avram Green', 'Maecenas.malesuada@egestasAliquam.ca', 'VTI41VHQ2NO'),
(8, 'April Gaine', 'lorem@iaculislacuspede.org', 'GTX64POU5RA'),
(9, 'Graham Sant', 'sociis@dictumcursusNunc.com', 'IXP58PAF4SM'),
(10, 'Raphael Est', 'cursus.et.eros@diamloremauctor.ca', 'VYX82SME3OU'),
(11, 'Jerry Key', 'mollis@tellus.edu', 'XQK02MAO7QR'),
(12, 'Ferris Bush', 'non@semper.org', 'MQW93LQG8LY'),
(13, 'Elmo Mckay', 'est@posuerecubilia.co.uk', 'OWZ91FLC1FJ'),
(14, 'Sierra Gray', 'tristique.senectus@nequesed.org', 'WBD56FGS5QF'),
(15, 'Fitzgerald ', 'et@eu.edu', 'JKG18RMS6BS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `recomendation`
--
ALTER TABLE `recomendation`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `recomendation`
--
ALTER TABLE `recomendation`
  ADD CONSTRAINT `recomendation_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
