-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 12 Mars 2019 à 11:34
-- Version du serveur :  5.7.22-0ubuntu0.17.10.1
-- Version de PHP :  7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e_corp`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `title`, `picture`) VALUES
(1, 'cpu', 'https://www.casimages.com/i/19012201454924520016087075.jpg.html'),
(2, 'gpu', 'https://www.casimages.com/i/19012201454924520016087074.jpg.html'),
(3, 'motherboard', 'https://www.casimages.com/i/19012201454924520016087076.jpg.html'),
(4, 'ram', 'https://www.casimages.com/i/19012201455024520016087077.jpg.html');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_specs`
--

CREATE TABLE `categorie_specs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categorie_specs`
--

INSERT INTO `categorie_specs` (`id`, `product_id`, `name`) VALUES
(1, 1, 'Principales caractéristiques'),
(2, 1, 'Architecture'),
(3, 1, 'Chipset graphique'),
(4, 1, 'Contrôleur mémoire'),
(5, 1, 'Technologies avancées'),
(6, 1, 'Conditionnement');

-- --------------------------------------------------------

--
-- Structure de la table `historic`
--

CREATE TABLE `historic` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `command_nbr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbr_product` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `info_user`
--

CREATE TABLE `info_user` (
  `id` int(11) NOT NULL,
  `society_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `info_user`
--

INSERT INTO `info_user` (`id`, `society_id`, `name`, `lastname`, `address`, `city`, `country`, `cellphone`) VALUES
(1, 1, 'dummmy', 'dummmy', 'dummmy', 'dummmy', 'dummmy', 'dummmy');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20190125084531'),
('20190126092633');

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sub_categories_product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `sub_categories_product_id`, `title`, `description`, `price`) VALUES
(1, 1, 'Intel Core i7 7700K (4,2 GHz)', 'Avec la 7ème génération de processeurs, Intel met à votre disposition une architecture ultra-moderne et puissante. Profitez d\'une plateforme technologique haute performance grâce à une finesse de gravure 14 nanomètres, une fréquence mémoire DDR4 revue à la hausse (2400 MHz) et une rapidité en mode turbo toujours plus élevée. Conçu pour une utilisation intensive, le processeur Intel Core i7 7700K offre à votre PC la meilleure expérience visuelle ainsi qu\'une vitesse d’exécution sans commune mesure.', 439.95),
(2, 1, 'Intel Core i7 7700K (4,2 GHz)', 'Avec la 7ème génération de processeurs, Intel met à votre disposition une architecture ultra-moderne et puissante. Profitez d\'une plateforme technologique haute performance grâce à une finesse de gravure 14 nanomètres, une fréquence mémoire DDR4 revue à la hausse (2400 MHz) et une rapidité en mode turbo toujours plus élevée. Conçu pour une utilisation intensive, le processeur Intel Core i7 7700K offre à votre PC la meilleure expérience visuelle ainsi qu\'une vitesse d’exécution sans commune mesure.', 439.95),
(3, 1, 'Intel Core i7 7700K (4,2 GHz)', 'Avec la 7ème génération de processeurs, Intel met à votre disposition une architecture ultra-moderne et puissante. Profitez d\'une plateforme technologique haute performance grâce à une finesse de gravure 14 nanomètres, une fréquence mémoire DDR4 revue à la hausse (2400 MHz) et une rapidité en mode turbo toujours plus élevée. Conçu pour une utilisation intensive, le processeur Intel Core i7 7700K offre à votre PC la meilleure expérience visuelle ainsi qu\'une vitesse d’exécution sans commune mesure.', 439.95);

-- --------------------------------------------------------

--
-- Structure de la table `society`
--

CREATE TABLE `society` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `society`
--

INSERT INTO `society` (`id`, `title`, `siret`, `address`, `city`, `country`, `description`) VALUES
(1, 'dummy', 'dummy', 'dummy', 'dummy', 'dummy', 'dummy');

-- --------------------------------------------------------

--
-- Structure de la table `specs`
--

CREATE TABLE `specs` (
  `id` int(11) NOT NULL,
  `categorie_specs_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `specs`
--

INSERT INTO `specs` (`id`, `categorie_specs_id`, `name`, `value`) VALUES
(1, 1, 'Modèle de processeur', 'Intel Core i7'),
(2, 1, 'Support du processeur', 'Intel 1151'),
(3, 1, 'Fréquence CPU	', '4.2 GHz'),
(4, 1, 'Fréquence en mode Turbo', '4.5 GHz'),
(5, 1, 'Fréquence du bus', 'DMI 8.0 GT/s'),
(6, 1, 'Nombre de core', '4'),
(7, 1, 'Nombre de Threads', '8'),
(8, 1, 'Plateforme (Proc.)', 'Intel Kaby Lake'),
(9, 2, 'Nom du core', 'Kaby Lake-S'),
(10, 2, 'Finesse de gravure', '0.014 Micron'),
(11, 2, 'TDP', '95W'),
(12, 2, 'Cache L3', '8 Mo'),
(13, 2, 'Compatibilité chipset carte mère', '[\'Intel Z170 Express\', \'Intel H170 Express\',\'Intel B150 Express\', \'Intel H110 Express\', \'Intel Q170 Express\', \'Intel Z270 Express\', \'Intel B250 Express\', \'Intel H270 Express\', \'Intel Q150 Express\']'),
(14, 3, 'Chipset graphique', 'Intel HD Graphics 630'),
(15, 4, 'Contrôleur mémoire', '[\'DDR3L (1.35V)\', \'DDR4\']'),
(16, 4, 'Type de contrôleur mémoire', 'Dual Channel'),
(17, 4, 'Fréquence(s) Mémoire', '[\'DDR4 2400 Mhz\', \'DDR3 1600 Mhz\']'),
(18, 5, 'Virtualisation', 'Intel Virtualization VT'),
(19, 5, 'Instructions 64 bits', 'Oui - EM64T'),
(20, 5, 'Instructions', '[\'AES-NI\', \'AVX\',\'AVX2\', \'MMX\', \'SSE\', \'SSE2\', \'SSE3\', \'SSSE3\', \'SSE4\', \'\'SSE4.2]'),
(21, 6, 'Utilisation type', 'Ordinateur de bureau'),
(22, 6, 'Gamer', 'Oui'),
(23, 6, 'Version Boîte', 'Oui'),
(24, 6, 'Ventilateur fourni', 'Non');

-- --------------------------------------------------------

--
-- Structure de la table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `title`) VALUES
(1, 1, 'i3'),
(2, 1, 'i5'),
(3, 1, 'i7'),
(4, 1, 'i9');

-- --------------------------------------------------------

--
-- Structure de la table `sub_categories_product`
--

CREATE TABLE `sub_categories_product` (
  `id` int(11) NOT NULL,
  `sub_categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `sub_categories_product`
--

INSERT INTO `sub_categories_product` (`id`, `sub_categorie_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `info_user_id`) VALUES
(1, 'putrequest@gmail.com', '[]', '$2y$13$43YbyQiG.cMlp7aW.4JsYe4HGr5OzQTRcRjWRdaQwolQrPh.eRiVG', NULL),
(2, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$IRR3p5Erag2GUi9bI8rHteFM5yvJODWspQpcTzyzLZ0ptBbG2GDsK', 1),
(4, 'test@gmail.com', '[\"ROLE_USER\"]', '$2y$13$L4di99CiVgXGQMMJUcdAbO30GQj5u0qwhTiAh1K6QJv3XJ655V.Uu', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_specs`
--
ALTER TABLE `categorie_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2FD731674584665A` (`product_id`);

--
-- Index pour la table `historic`
--
ALTER TABLE `historic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AD52EF56A76ED395` (`user_id`),
  ADD KEY `IDX_AD52EF564584665A` (`product_id`);

--
-- Index pour la table `info_user`
--
ALTER TABLE `info_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4F804C7E6389D24` (`society_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_16DB4F894584665A` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B3BA5A5A30E09E43` (`sub_categories_product_id`);

--
-- Index pour la table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DAAFDCB7F533587F` (`categorie_specs_id`);

--
-- Index pour la table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1638D5A5A21214B7` (`categories_id`);

--
-- Index pour la table `sub_categories_product`
--
ALTER TABLE `sub_categories_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BBDDC738ABA7A01B` (`sub_categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D64925ABFA0B` (`info_user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `categorie_specs`
--
ALTER TABLE `categorie_specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `historic`
--
ALTER TABLE `historic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `info_user`
--
ALTER TABLE `info_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `society`
--
ALTER TABLE `society`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `sub_categories_product`
--
ALTER TABLE `sub_categories_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `categorie_specs`
--
ALTER TABLE `categorie_specs`
  ADD CONSTRAINT `FK_2FD731674584665A` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `historic`
--
ALTER TABLE `historic`
  ADD CONSTRAINT `FK_AD52EF564584665A` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_AD52EF56A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `info_user`
--
ALTER TABLE `info_user`
  ADD CONSTRAINT `FK_D4F804C7E6389D24` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`);

--
-- Contraintes pour la table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `FK_16DB4F894584665A` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5A30E09E43` FOREIGN KEY (`sub_categories_product_id`) REFERENCES `sub_categories_product` (`id`);

--
-- Contraintes pour la table `specs`
--
ALTER TABLE `specs`
  ADD CONSTRAINT `FK_DAAFDCB7F533587F` FOREIGN KEY (`categorie_specs_id`) REFERENCES `categorie_specs` (`id`);

--
-- Contraintes pour la table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `FK_1638D5A5A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `sub_categories_product`
--
ALTER TABLE `sub_categories_product`
  ADD CONSTRAINT `FK_BBDDC738ABA7A01B` FOREIGN KEY (`sub_categorie_id`) REFERENCES `sub_categories` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64925ABFA0B` FOREIGN KEY (`info_user_id`) REFERENCES `info_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
