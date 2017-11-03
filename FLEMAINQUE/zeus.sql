-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Octobre 2015 à 14:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `zeus`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE IF NOT EXISTS `avoir` (
  `id_avoir` int(11) NOT NULL AUTO_INCREMENT,
  `montant` float DEFAULT NULL,
  `id_facture` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_avoir`),
  KEY `FK_avoir_id_facture` (`id_facture`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `avoir`
--

INSERT INTO `avoir` (`id_avoir`, `montant`, `id_facture`) VALUES
(1, 145, 854);

-- --------------------------------------------------------

--
-- Structure de la table `cartouche`
--

CREATE TABLE IF NOT EXISTS `cartouche` (
  `reference` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `type` varchar(25) NOT NULL,
  `prix_unitaire` float NOT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cartouche`
--

INSERT INTO `cartouche` (`reference`, `designation`, `type`, `prix_unitaire`) VALUES
('AF201-N', 'APSON C201 - Noir', 'Neuve', 175),
('B101-R', 'BRITHER 40 B - Noir', 'Recond. ', 87),
('B204-N', 'BRITHER 2040CL 1400 copies', 'Neuve', 87.2),
('B204-R', 'BRITHER 2040CL 1400 copies', 'Recond.', 62.2),
('B205-N', 'BRITHER 2040CL 2500 copies', 'Neuve', 111.4),
('B205-R', 'BRITHER 2040CL 2500 copies', 'Recond.', 84),
('B400-CZ-R', 'BRITHER 10CN - Cyan', 'Recond.', 65),
('B40L-N', 'BRITHER 40HL', 'Neuve', 45),
('B60HL-N', 'BRITHER 60HL', 'Recond.', 48),
('CXT1R-N', 'CINON 2500', 'Neuve', 120),
('CXT1R-R', 'CINON 2500', 'Recond.', 65),
('IQXer-N', 'Iwlet-Quapard Xer', 'Neuve', 132),
('SA14-R', 'SUMSANG GT 240', 'Recond.', 44);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(25) NOT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22458 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `adresse`, `code_postal`, `ville`, `telephone`) VALUES
(3, 'Grosse Boîte S.A.R.L.', '12 rue des Flambeurs', 75016, 'Paris', '01.45.67.89.01'),
(4, 'EURL Jeune Pousse', '272 Allée des Grands Hommes', 75012, 'Paris', '01.45.67.89.02'),
(22, 'Secret Air', '25 Avenue Charles de Gaulle', 92200, 'Neuilly/Seine', '01.98.76.54.32'),
(56, 'Bureautique S.A.', '12 rue de l''Ecrit Vain', 75010, 'Paris', '02.34.56.78.90');

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE IF NOT EXISTS `contrat` (
  `id_contrat` int(11) NOT NULL AUTO_INCREMENT,
  `date_contrat` date NOT NULL,
  `nom_contact` varchar(25) NOT NULL,
  `duree` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contrat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `contrat`
--

INSERT INTO `contrat` (`id_contrat`, `date_contrat`, `nom_contact`, `duree`, `id_client`) VALUES
(1, '2015-01-01', 'Jean Sayrien', 60, 3);

-- --------------------------------------------------------

--
-- Structure de la table `deduire`
--

CREATE TABLE IF NOT EXISTS `deduire` (
  `id_facture` int(11) NOT NULL,
  `id_avoir` int(11) NOT NULL,
  PRIMARY KEY (`id_facture`,`id_avoir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE IF NOT EXISTS `facture` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `date_fact` date DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `FK_facture_id_client` (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1025 ;

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`id_facture`, `date_fact`, `id_client`) VALUES
(854, '2015-01-02', 56),
(1024, '2015-03-12', 56);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_contrat`
--

CREATE TABLE IF NOT EXISTS `ligne_contrat` (
  `id_ligne` int(11) NOT NULL AUTO_INCREMENT,
  `quantite_mini` int(11) DEFAULT NULL,
  `prix_unitaire` float DEFAULT NULL,
  `reference` varchar(10) NOT NULL,
  `id_contrat` int(11) NOT NULL,
  PRIMARY KEY (`id_ligne`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `ligne_contrat`
--

INSERT INTO `ligne_contrat` (`id_ligne`, `quantite_mini`, `prix_unitaire`, `reference`, `id_contrat`) VALUES
(1, 5, 78.4, 'B204-N', 1),
(2, 8, 49.4, 'B204-R', 1),
(3, 5, 98.6, 'B205-N', 1),
(4, 8, 67.9, 'B205-R', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_facture`
--

CREATE TABLE IF NOT EXISTS `ligne_facture` (
  `quantite` int(11) DEFAULT NULL,
  `id_facture` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  PRIMARY KEY (`id_facture`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ligne_facture`
--

INSERT INTO `ligne_facture` (`quantite`, `id_facture`, `reference`) VALUES
(10, 854, 'AF201-N'),
(8, 1024, 'AF201-N'),
(2, 1024, 'B101-R'),
(4, 1024, 'B400-CZ-R');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD CONSTRAINT `FK_avoir_id_facture` FOREIGN KEY (`id_facture`) REFERENCES `facture` (`id_facture`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_facture_id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
