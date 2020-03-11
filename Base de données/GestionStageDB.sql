-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 19 mai 2019 à 22:37
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vinciinternshipthegoodone`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `idcompte` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `conventions`
--

CREATE TABLE `conventions` (
  `id` int(11) NOT NULL,
  `chemin` varchar(255) NOT NULL,
  `idStage` int(11) NOT NULL,
  `valide` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conventions`
--

INSERT INTO `conventions` (`id`, `chemin`, `idStage`, `valide`) VALUES
(1, 'je sais pas', 1, 'non'),
(2, 'je sais pas', 4, 'oui'),
(3, 'je sais pas', 2, 'oui'),
(4, 'je sais pas', 3, 'non');

-- --------------------------------------------------------

--
-- Structure de la table `encadrants`
--

CREATE TABLE `encadrants` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `idcompte` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `annee_scolaire` int(11) NOT NULL,
  `idcompte` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `annee_scolaire`, `idcompte`) VALUES
(9, 'Chibani', 'Mehdi', 4, NULL),
(10, 'Momen', 'Walid ', 4, NULL),
(11, 'Bachir Ali', 'Mohamed Amine', 4, NULL),
(12, 'Berrada', 'Nabil', 4, NULL),
(13, 'El Ghoubachi', 'Chaimae', 4, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id` int(11) NOT NULL,
  `entreprise_concernee` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `sujet` text NOT NULL,
  `date_debut` date DEFAULT NULL,
  `idEncadrant` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id`, `entreprise_concernee`, `periode`, `sujet`, `date_debut`, `idEncadrant`, `created_at`, `updated_at`) VALUES
(1, 'RNDFY', '2 mois', ' Analyse, Concéption et réalisation d\'une application mobile pour la vente produits pharmacetiques', '2019-04-02', NULL, '2019-05-10 14:53:50', '0000-00-00 00:00:00'),
(2, 'Credi Agricole', '2 mois', 'realisation d\'une application desktop pour la gestion des crédits', '2019-04-09', NULL, '2019-05-10 14:56:03', '0000-00-00 00:00:00'),
(3, 'SNRT', '1 mois', 'realisation d\'une application web pour la gestion des horaires des émissions', '2019-04-17', NULL, '2019-05-10 14:55:34', '0000-00-00 00:00:00'),
(4, 'Niger Telecom', '2 mois', 'adminstrations réseaux et protocoles', '2019-04-21', NULL, '2019-04-09 16:30:32', '0000-00-00 00:00:00'),
(5, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:31:44', '2019-04-09 14:31:44'),
(6, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:34:05', '2019-04-09 14:34:05'),
(7, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:36:11', '2019-04-09 14:36:11'),
(8, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:45:57', '2019-04-09 14:45:57'),
(9, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:50:08', '2019-04-09 14:50:08'),
(10, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:51:10', '2019-04-09 14:51:10'),
(11, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:52:44', '2019-04-09 14:52:44'),
(12, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 14:54:04', '2019-04-09 14:54:04'),
(13, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 15:03:31', '2019-04-09 15:03:31'),
(14, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 15:07:35', '2019-04-09 15:07:35'),
(15, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 15:12:58', '2019-04-09 15:12:58'),
(16, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 15:14:25', '2019-04-09 15:14:25'),
(17, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 15:16:42', '2019-04-09 15:16:42'),
(18, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 19:05:37', '2019-04-09 19:05:37'),
(19, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 19:06:19', '2019-04-09 19:06:19'),
(20, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 19:07:12', '2019-04-09 19:07:12'),
(21, 'BMCE', '1 mois', 'application web', '2019-02-05', NULL, '2019-04-09 19:08:27', '2019-04-09 19:08:27'),
(22, 'rndfy', '4 mois', 'je sais pas', '2019-05-05', NULL, '2019-05-13 00:23:37', '2019-05-13 00:23:37'),
(23, 'rndfy', '4 mois', 'je sais pas', '2019-05-05', NULL, '2019-05-13 00:26:00', '2019-05-13 00:26:00'),
(24, 'ziehstry', '4 mois', 'je sais pas', '2019-05-05', NULL, '2019-05-13 02:16:12', '2019-05-13 02:16:12'),
(25, 'rndfy', '4 mois', 'je sais pas', '2010-05-05', NULL, '2019-05-13 21:30:25', '2019-05-13 21:30:25'),
(26, 'rndfy', '4 mois', 'je sais pas', '2010-05-05', NULL, '2019-05-13 21:43:10', '2019-05-13 21:43:10'),
(27, 'rndfy', '4 mois', 'je sais pas', NULL, NULL, '2019-05-13 21:55:33', '2019-05-13 21:55:33'),
(28, 'rndfy', '4 mois', 'je sais pas', NULL, NULL, '2019-05-13 21:57:00', '2019-05-13 21:57:00'),
(29, 'zrjiygdnf', '2 mois', 'hgrsydhjxhg', NULL, NULL, '2019-05-13 22:00:26', '2019-05-13 22:00:26'),
(30, 'ehdskjtzjhsyj', '2 mois', 'kjdhwjhjdshjwxcsdijkgj', NULL, NULL, '2019-05-13 22:11:26', '2019-05-13 22:11:26'),
(31, 'ehdskjtzjhsyj', '2 mois', 'kjdhwjhjdshjwxcsdijkgj', NULL, NULL, '2019-05-13 22:11:41', '2019-05-13 22:11:41'),
(32, 'kvjsdkgkjsfkxsvd', '2 mois', 'dsfjgkrjsdfkxw', NULL, NULL, '2019-05-13 22:15:45', '2019-05-13 22:15:45'),
(33, 'kvjsdkgkjsfkxsvd', '2 mois', 'dsfjgkrjsdfkxw', NULL, NULL, '2019-05-13 22:15:45', '2019-05-13 22:15:45'),
(34, 'rdhxfucgv', 'kkj,jkj,jftcug', 'dthxuc ghgh', NULL, NULL, '2019-05-13 22:20:16', '2019-05-13 22:20:16'),
(35, 'BMCE', '2 mois et 15 jours', 'anlyse conception d\'une application mobile pour la gestion des credits', NULL, NULL, '2019-05-15 16:09:30', '2019-05-15 16:09:30'),
(36, 'algo consulting', '1 mois et 15 jours', 'devloppemnet d une application qui xoncerne la gestion des clients de l\'entreprie', NULL, NULL, '2019-05-16 00:19:08', '2019-05-16 00:19:08'),
(37, 'algo consulting', '1 mois et 15 jours', 'devloopement d\'une e-comerce pour des voiture\'s', NULL, NULL, '2019-05-16 00:26:30', '2019-05-16 00:26:30'),
(38, 'algo consulting', '1 mois et 15 jours', 'devloopement d\'une e-comerce pour des voiture\'s', NULL, NULL, '2019-05-16 00:26:30', '2019-05-16 00:26:30'),
(39, 'algoconsulting', '2 mois et 15 jours', 'le devloopement d\'une application mobile pour la gestion des clients de l\'entreprise', NULL, NULL, '2019-05-16 00:35:35', '2019-05-16 00:35:35'),
(40, 'algo co,sultion', '2 mois', 'le devllopement d\'une application mobile pour la gestion des credit d\'une banque', NULL, NULL, '2019-05-16 00:47:26', '2019-05-16 00:47:26'),
(41, 'algo co,sultion', '2 mois', 'le devllopement d\'une application mobile pour la gestion des credit d\'une banque', NULL, NULL, '2019-05-16 00:47:27', '2019-05-16 00:47:27'),
(42, 'algo consulting', '1 mois', 'le devllopement d\'une application mobile pour la gestion des credits d\'une banque', NULL, NULL, '2019-05-16 02:19:30', '2019-05-16 02:19:30'),
(43, 'algo consulting', '1 mois', 'la realisation d\'une application mobile pour la gestion credits d\'une banque', NULL, NULL, '2019-05-16 02:34:19', '2019-05-16 02:34:19');

-- --------------------------------------------------------

--
-- Structure de la table `stages_etudiants`
--

CREATE TABLE `stages_etudiants` (
  `idEtudaint` int(11) NOT NULL,
  `idStages` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stages_etudiants`
--

INSERT INTO `stages_etudiants` (`idEtudaint`, `idStages`, `created_at`, `updated_at`) VALUES
(11, 4, '2019-04-09 16:52:05', '0000-00-00 00:00:00'),
(10, 1, '2019-04-09 16:52:05', '0000-00-00 00:00:00'),
(9, 1, '2019-04-09 16:52:05', '0000-00-00 00:00:00'),
(12, 2, '2019-04-09 16:52:05', '0000-00-00 00:00:00'),
(13, 3, '2019-04-09 16:52:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcompte` (`idcompte`);

--
-- Index pour la table `conventions`
--
ALTER TABLE `conventions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idStage` (`idStage`);

--
-- Index pour la table `encadrants`
--
ALTER TABLE `encadrants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcompte` (`idcompte`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcompte` (`idcompte`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEncadrant` (`idEncadrant`);

--
-- Index pour la table `stages_etudiants`
--
ALTER TABLE `stages_etudiants`
  ADD KEY `idEtudaint` (`idEtudaint`),
  ADD KEY `idStages` (`idStages`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conventions`
--
ALTER TABLE `conventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `encadrants`
--
ALTER TABLE `encadrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`idcompte`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `conventions`
--
ALTER TABLE `conventions`
  ADD CONSTRAINT `conventions_ibfk_1` FOREIGN KEY (`idStage`) REFERENCES `stages` (`id`);

--
-- Contraintes pour la table `encadrants`
--
ALTER TABLE `encadrants`
  ADD CONSTRAINT `encadrants_ibfk_1` FOREIGN KEY (`idcompte`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ibfk_1` FOREIGN KEY (`idcompte`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`idEncadrant`) REFERENCES `encadrants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stages_etudiants`
--
ALTER TABLE `stages_etudiants`
  ADD CONSTRAINT `stages_etudiants_ibfk_1` FOREIGN KEY (`idEtudaint`) REFERENCES `etudiants` (`id`),
  ADD CONSTRAINT `stages_etudiants_ibfk_2` FOREIGN KEY (`idStages`) REFERENCES `stages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
