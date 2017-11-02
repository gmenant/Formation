-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Sam 15 Octobre 2016 à 08:49
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bourges`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `nom` varchar(35) NOT NULL COMMENT 'Nom de l''adhérent',
  `prenom` varchar(35) NOT NULL COMMENT 'Prénom',
  `date_naiss` date NOT NULL,
  `adresse1` varchar(40) NOT NULL,
  `adresse2` varchar(40) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `responsable_legal` varchar(35) NOT NULL,
  `tel_dom` varchar(20) NOT NULL,
  `tel_trav` varchar(20) NOT NULL,
  `tel_portable` varchar(20) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `profession` varchar(35) NOT NULL,
  `section` varchar(20) NOT NULL,
  `fonction_club` varchar(20) NOT NULL,
  `fonction_section` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `numero` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Numéro d''adhérent',
  `date_adhesion` date NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `nom` (`nom`),
  KEY `prenom` (`prenom`),
  KEY `date_naiss` (`date_naiss`),
  KEY `cp` (`cp`),
  KEY `ville` (`ville`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`nom`, `prenom`, `date_naiss`, `adresse1`, `adresse2`, `cp`, `ville`, `responsable_legal`, `tel_dom`, `tel_trav`, `tel_portable`, `sexe`, `profession`, `section`, `fonction_club`, `fonction_section`, `email`, `numero`, `date_adhesion`) VALUES
('CHAUVEAU', 'Jacques', '1992-06-02', '18, av du général de Gaule', '', '18000', 'BOURGES', '', '04 05 08 06 09', '', '06 02 05 08 06', 'M', 'Boulanger', 'FOOTBALL', '', 'ttt', 'j.chauveau@gmail.com', 1, '0000-00-00'),
('BRANGER', 'Marie Line', '1995-11-15', '33, rue Saint Michel', '', '18000', 'BOURGES', 'CASTAGNIER Claude', '', '', '06 96 98 97 87', 'F', '', 'BASKET', '', 'ttt', '', 2, '0000-00-00'),
('LEMOINE', 'Bertrand', '1984-09-14', 'Résidence les Charmilles', 'Bat. C 2ème étage', '18000', 'BOURGES', '', '04 06 09 98 99', '01 02 89 89 89', '06 04 05 55 55', 'M', 'Médecin', 'FOOTNALL', 'Secrétaire', 'ttt', 'bertrand.lemoine@orange.fr', 3, '0000-00-00'),
('HINARD', 'Jean-Pierre', '1995-02-23', '27 avenue Victor Hugo', '', '18800', 'BAUGY', '', '', '', '06 99 88 77 11', 'M', 'étudiant', 'HANDBALL', '', '', 'jphinard@hotmail.fr', 4, '0000-00-00'),
('PETIT', 'Evelyne', '1996-07-11', '15 rue du Pont aux Anes', '', '18950', 'LEVET', 'CHARLES', '04 06 99 83 21', '', '', 'F', '', 'HANDBALL', '', '', '', 5, '0000-00-00'),
('DUBOIS', 'Mathieu', '1999-06-27', '16 impasse des Violettes', '', '18000', 'BOURGES', '', '04 58 59 56 69', '', '', 'M', '', 'BASKET', '', 'ttt', '', 6, '0000-00-00'),
('VERNON', 'Olivier', '1987-11-03', '16 rue des remparts', '', '18800', 'GRON', '', '02 48 49 72 25', '', '06 08 99 99 99', 'M', 'Ingénieur', 'BASKET', 'Président', '', 'olivier.vernon@gmail.com', 7, '2000-03-14'),
('KIRCHNER', 'Mélanie', '1998-12-16', '14 av Paul Doumer', '', '18200', 'Saint-Amand-Montrond', 'André DEBATIS', '0248656565', '0248698741', '', 'F', '', 'BASKET', '', '', 'mkirchner@hotmail.fr', 8, '2007-09-04'),
('FAGE', 'Charlotte', '1994-06-03', '9, rue de la Chablonniere', '', '37000', 'TOURS', '', '04 05 08 06 10', '', '06 02 05 18 06', 'M', 'armurier', 'BASKET', '', '', '', 13, '0000-00-00'),
('DEMOIRE', 'Dominique', '1994-10-02', '7, rue Georges Guynemer', '', '18000', 'BOURGES', '', '', '', '06 96 98 97 87', 'F', '', 'BASKET', '', 'ttt', '', 14, '0000-00-00'),
('CHAMBLY', 'Elodie', '1995-01-31', '8 allee des Cernes', 'Bat. C 2`eme etage', '37000', 'TOURS', '', '04 12 12 98 99', '01 02 88 89 89', '06 04 05 44 55', 'M', 'informaticien', 'FOOTBALL', '', '', '', 15, '0000-00-00'),
('CARMINET', 'Eric', '1995-06-01', 'Les Bougainvilliers', '', '18800', 'BAUGY', '', '', '', '06 99 88 77 88', 'M', 'etudiant', 'HANDBALL', '', '', '', 16, '0000-00-00'),
('CHABRAUD', 'Gaetan', '1995-09-30', '9, allee des Tulipes', '', '18950', 'LEVET', '', '03 01 02 05 04', '', '', 'F', '', 'HANDBALL', '', '', '', 17, '0000-00-00'),
('DELANGE', 'Herve', '1996-01-29', '108, rue de la Sanoterie', '', '18000', 'BOURGES', '', '03 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 18, '0000-00-00'),
('DUMONT', 'Jacques', '1996-05-29', '15, rue Jacques Prevert', '', '37000', 'TOURS', '', '02 03 02 02 02', '', '', 'M', '', 'BASKET', '', '', '', 19, '0000-00-01'),
('ETIENNE', 'Jean-Claude', '1996-09-27', '12 bis, rue Saint-Michel', '', '18000', 'BOURGES', '', '02 03 03 03 03', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 20, '0000-00-02'),
('POLITE', 'Jean-Louis', '1997-01-26', '15, impasse de la Ragotiere', '', '37000', 'TOURS', '', '03 03 02 02 02', '', '', 'M', '', 'HANDBALL', '', '', '', 21, '0000-00-03'),
('VAUDRON', 'Jean-Marie', '1997-05-27', '9, rue Henri Dunant', '', '18800', 'BAUGY', '', '03 03 03 03 03', '', '', '', '', 'BASKET', '', '', '', 22, '0000-00-04'),
('HAGUET', 'Lionel', '1997-09-25', 'La poiteviniere', '', '18950', 'LEVET', '', '04 03 02 02 02', '', '', 'M', '', 'FOOTBALL', '', '', '', 23, '0000-00-05'),
('MIRINTRE', 'Nicolas', '1998-01-24', 'La Portenorde', '', '37000', 'TOURS', '', '04 03 03 03 03', '', '', 'M', '', 'HANDBALL', '', '', '', 24, '0000-00-06'),
('MARCEL', 'Nicole', '1998-05-25', '12, rue de la Closeraie du Clos Vaumont', '', '18000', 'BOURGES', '', '05 03 02 02 02', '', '', 'F', '', 'BASKET', '', 'ttt', '', 25, '0000-00-07'),
('PAPIN', 'Philippe', '1998-09-23', '6, rue des Prunelliers', '', '37000', 'TOURS', 'ETIENNE', '05 03 03 03 03', '', '', 'M', '', 'FOOTBALL', '', '', '', 26, '0000-00-08'),
('CHARLEROIS', 'Philippe', '1999-01-22', '33 bis, rue Saint-Michel', '', '18800', 'BAUGY', '', '06 03 02 02 02', '', '', 'M', '', 'HANDBALL', '', '', '', 27, '0000-00-09'),
('PINAULT', 'Rene', '1999-05-23', '1, allee des Myosotis', '', '18950', 'LEVET', '', '06 03 03 03 03', '', '', 'M', '', 'BASKET', '', '', '', 28, '0000-00-10'),
('PINAULT', 'Sebastien', '1999-09-21', '20, rue du Saule Michaud', '', '37000', 'TOURS', '', '07 03 02 02 02', '', '', 'M', '', 'FOOTBALL', '', '', '', 29, '0000-00-11'),
('CARONNE', 'Thierry', '2000-01-20', '5, impasse Rivoli', '', '18000', 'BOURGES', '', '07 03 03 03 03', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 30, '0000-00-12'),
('GRITTON', 'Thierry', '2000-05-20', '2, rue de Pourtales', '', '37000', 'TOURS', '', '08 03 02 02 02', '', '', 'M', '', 'FOOTBALL', '', '', '', 31, '0000-00-13'),
('ROBIN', 'Vincent', '2000-09-18', '5, rue de la Malardiere', '', '18800', 'BAUGY', '', '08 03 03 03 03', '', '', 'M', '', 'HANDBALL', '', '', '', 32, '0000-00-14'),
('CHROUTO', 'Denis', '1994-06-03', '6 ALDUE LAUERENCE BERLUCHEN', '', '37000', 'TOURS', '', '04 05 08 06 10', '', '06 02 05 18 06', 'M', 'armurier', 'BASKET', '', '', '', 100, '0000-00-00'),
('CERETAS-NOYOR', 'DENIS', '1991-04-02', '15 CLOS DES GIRARDIEERES', '', '18000', 'BOURGES', '', '', '', '06 96 98 97 87', 'F', '', 'BASKET', '', 'ttt', '', 101, '0000-00-00'),
('CROUGNEAN', 'DIDIER', '1982-02-25', '16 CLOS DES GIRARDIEERES', 'Bat. C 2`eme etage', '37000', 'TOURS', '', '04 12 12 98 99', '01 02 88 89 89', '06 04 05 44 55', 'M', 'informaticien', 'FOOTBALL', '', '', '', 102, '0000-00-00'),
('DENNEVANT', 'Dominique', '1983-02-02', '7 rue de Bournais', '', '18800', 'BAUGY', '', '', '', '06 99 88 77 88', 'M', 'etudiant', 'HANDBALL', '', '', '', 103, '0000-00-00'),
('DUMENTIOR', 'Dylan', '1992-02-07', '7 rue de Bournais', '', '18950', 'LEVET', '', '03 01 02 05 04', '', '', 'F', '', 'HANDBALL', '', '', '', 104, '0000-00-00'),
('FAVEREAN', 'Eddy', '1952-01-01', '7 rue de Bournais', '', '18000', 'BOURGES', '', '03 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 105, '0000-00-00'),
('FEBVERE', 'ELIOT', '1952-04-09', '32 RUE G.  APOLLINAIERE', '', '37000', 'TOURS', '', '03 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 106, '0000-00-00'),
('FORRAY', 'Emen', '1952-07-17', '40 RUE JUDUS ROMAINS', '', '18000', 'BOURGES', '', '04 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 107, '0000-00-00'),
('FORGET', 'EMMERAN', '1952-10-24', '40 RUE JUDUS ROMAINS', '', '37000', 'TOURS', '', '04 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 108, '0000-00-00'),
('FOURMANX', 'Enzo', '1953-01-31', '1, RUE MILHAUD', '', '18800', 'BAUGY', '', '05 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 109, '0000-00-00'),
('GANDICHEN', 'Enzo', '1953-05-10', '28 RUE DE LA CASTELDURIE', '', '18950', 'LEVET', '', '05 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 110, '0000-00-00'),
('GANTIOR', 'ERIC', '1953-08-17', '2 ALDUE CAMILDU PISSARO', '', '18000', 'BOURGES', '', '06 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 111, '0000-00-00'),
('GIOVANNETTI', 'Eric', '1953-11-24', '38 PLACE RABELAIS', '', '37000', 'TOURS', '', '06 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 112, '0000-00-00'),
('GEREPILLOUX', 'Fabien', '1954-03-03', '1 RUE PORT FEU HUGEN', '', '18000', 'BOURGES', '', '07 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 113, '0000-00-00'),
('GUORMENPERES', 'FLAVIEN', '1954-06-10', '2 allee des lilas', '', '37000', 'TOURS', '', '07 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 114, '0000-00-00'),
('GUORMENPERES', 'Florentin', '1954-09-17', '2 ALDUE DES SORBIERS', '', '18800', 'BAUGY', '', '08 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 115, '0000-00-00'),
('GUIBLAS', 'JULIEN', '1954-12-25', '33 CHEMIN DES ACACIAS', '', '18950', 'LEVET', '', '08 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 116, '0000-00-00'),
('GUIGNEN', 'Francis', '1955-04-03', '9 Allee des tulipes', '', '18000', 'BOURGES', '', '03 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 117, '0000-00-00'),
('HARDIEN', 'Franck', '1955-07-11', '9 Allee des tulipes', '', '18950', 'LEVET', '', '09 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 118, '0000-00-00'),
('JAIME', 'FRANCK', '1955-10-18', '8 Rue CHRISTOPHE COLOMB', '', '18000', 'BOURGES', '', '10 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 119, '0000-00-00'),
('JALANDAS', 'Francois', '1956-01-25', '39 RUE JEAN MARIE BOIVIN', '', '37000', 'TOURS', '', '10 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 120, '0000-00-00'),
('JENGET', 'FREDERIC', '1956-05-03', '18 RUE DES GOUGETS', '', '18000', 'BOURGES', 'DUPONT', '11 05 04 06 08', '', '', 'M', 'boulanger', 'FOOTBALL', '', 'ttt', '', 121, '0000-00-00'),
('JULIENNE', 'FEREderic', '1956-08-10', '36 rue MAIGERES', '', '37000', 'TOURS', '', '11 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 122, '0000-00-00'),
('KANFFBERG', 'GaSTiel', '1956-11-17', '36 rue MAIGERES', '', '18800', 'BAUGY', '', '12 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 123, '0000-00-00'),
('LAFDUURIEL', 'Gael', '1957-02-24', '4 RUE DES CERISIERS', '', '18950', 'LEVET', '', '12 05 05 06 07', '', '', 'M', 'patissier', 'FOOTBALL', '', '', '', 124, '0000-00-00'),
('DUBASTARD', 'GAETAN', '1957-06-03', '14 RUE JEAN MANCEAU', '', '18000', 'BOURGES', '', '13 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 125, '0000-00-00'),
('DUPERTE', 'Germain', '1957-09-10', '12 RUE GERECOURT', '', '37000', 'TOURS', '', '13 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 126, '0000-00-00'),
('DULARGE', 'Germain', '1957-12-18', '17 Allee des Vignes', '', '18000', 'BOURGES', '', '14 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 127, '0000-00-00'),
('LOUOUEN', 'Gustave', '1958-03-27', '43 allee du Clos Luce', '', '37000', 'TOURS', '', '14 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 128, '0000-00-00'),
('MICHEL', 'JEAN BAPTISTE', '1958-07-04', '4 CHEMIN DU CLAIRAULT', '', '18800', 'BAUGY', '', '15 05 04 06 08', '', '', 'M', 'fENctiENnaiERE', 'BASKET', '', '', '', 129, '0000-00-00'),
('MARTAS', 'Jean Louis', '1958-10-11', '119 RUE DE GRAND COUR', '', '18950', 'LEVET', '', '15 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 130, '0000-00-00'),
('MENARD', 'JEAN MARIE', '1959-01-18', '10 ALLEE ST VINCENT', '', '18000', 'BOURGES', '', '16 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 131, '0000-00-00'),
('MOASANT', 'Jean Regis', '1959-04-27', '9 allee des Jonquilles', '', '18950', 'LEVET', '', '16 05 05 06 07', '', '', 'M', 'postier', 'BASKET', '', '', '', 132, '0000-00-00'),
('PAILLUSSEN', 'JEAN-LOUIS', '1959-08-04', '9 allee des Jonquilles', '', '18000', 'BOURGES', '', '17 05 04 06 08', '', '', 'M', 'medecin', 'FOOTBALL', '', 'ttt', '', 133, '0000-00-00'),
('PAYEN', 'JEAN-PIERRE', '1959-11-11', '13 RUE DU VIEUX BOURG', '', '37000', 'TOURS', '', '17 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 134, '0000-00-00'),
('PEAND', 'Jean-Pierre', '1960-02-18', '4 rue marcel lENguet', '', '18000', 'BOURGES', '', '18 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 135, '0000-00-00'),
('POREN', 'Jean-Yves', '1960-05-27', '55 rue St Michel', '', '37000', 'TOURS', '', '18 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 136, '0000-00-00'),
('PORRAS', 'JEEREMY', '1960-09-03', '149 rue de Cange', '', '18800', 'BAUGY', '', '19 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', '', '', 137, '0000-00-00'),
('PIASSEN', 'Jerome', '1960-12-11', '208 RUE DE CORMERY', '', '18950', 'LEVET', '', '19 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 138, '0000-00-00'),
('POPLAS', 'Jerome', '1961-03-20', '36 rue des Vanneaux', '', '18000', 'BOURGES', 'JULIENNE', '20 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 139, '0000-00-00'),
('PROUTEAN', 'John', '1961-06-27', '1 rue FortillieERE', '', '37000', 'TOURS', '', '20 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 140, '0000-00-00'),
('RATIOR', 'Julien', '1961-10-04', '60 AV DU GAL DE GAULLE', '', '18000', 'BOURGES', '', '21 05 04 06 08', '', '', 'M', 'infirmieERE', 'BASKET', '', 'ttt', '', 141, '0000-00-00'),
('RATTIOR', 'Julien', '1962-01-11', '5 rue de la Choquette', '', '37000', 'TOURS', '', '21 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 142, '0000-00-00'),
('RISTEAN', 'Julien', '1962-04-20', '11 RUE LUCIANO PAVAROTTI', '', '18800', 'BAUGY', '', '22 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 143, '0000-00-00'),
('RIFFANT', 'KARINE', '1962-07-28', '34 RUE  ROMAINS', '', '18950', 'LEVET', '', '22 05 05 06 07', '', '', 'F', '', 'BASKET', '', '', '', 144, '0000-00-00'),
('ROSSIGNOL', 'Killian', '1962-11-04', '34 RUE ROMAINS', '', '18000', 'BOURGES', '', '23 05 04 06 08', '', '', 'M', '', 'JUDO', '', 'ttt', '', 145, '0000-00-00'),
('SOUVENT', 'Loic', '1963-02-11', '1 rue Regine Pernoud', '', '18950', 'LEVET', '', '23 05 05 06 07', '', '', 'M', 'agent de police', 'HANDBALL', '', '', '', 146, '0000-00-00'),
('THIBANT', 'Loic', '1963-05-21', '16 RUE DES SAUDUS', '', '18000', 'BOURGES', '', '24 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 147, '0000-00-00'),
('TORERES', 'Louis', '1963-08-28', '16 BIS RUE DU MAL JOFFRE', '', '37000', 'TOURS', 'DURANT', '24 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 148, '0000-00-00'),
('TOURASE', 'Paul', '1963-12-05', '12 chemin de tue loup', '', '18000', 'BOURGES', '', '25 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 149, '0000-00-00'),
('TOURASE', 'LOUIS', '1964-03-13', '53 rue J.Marie BOIVIN', '', '37000', 'TOURS', '', '25 05 05 06 07', '', '', 'M', 'employe', 'BASKET', '', '', '', 150, '0000-00-00'),
('TOURNELDU', 'Luka', '1964-06-20', '6 ALLEE ST VINCENT', '', '18800', 'BAUGY', '', '26 05 04 06 08', '', '', 'F', '', 'FOOTBALL', '', '', '', 151, '0000-00-00'),
('TRIBOULOT', 'Mansour', '1964-09-27', '6 ALLEE ST VINCENT', '', '18950', 'LEVET', 'VERLEN', '26 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 152, '0000-00-00'),
('VANG', 'Martin', '1965-01-04', '45 rue du Val Joli', '', '18000', 'BOURGES', '', '27 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 153, '0000-00-00'),
('VESAS', 'MARTIN', '1965-04-13', '2 ALLEE ANDERE DU NOTERE', '', '37000', 'TOURS', '', '27 05 05 06 07', '', '', 'M', 'marin', 'HANDBALL', '', '', '', 154, '0000-00-00'),
('VASCENT', 'Mathieu', '1965-07-21', 'RUE DES GOUGETS', '', '18000', 'BOURGES', '', '28 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 155, '0000-00-00'),
('ANTOASE', 'Mathieu', '1965-10-28', '44 RUE GAMBETTA', '', '37000', 'TOURS', '', '28 05 05 06 07', '', '', 'M', '', 'JUDO', '', '', '', 156, '0000-00-00'),
('ANDAS', 'Mathis', '1966-02-04', '26 RUE DE CORMERY', '', '18800', 'BAUGY', '', '29 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', '', '', 157, '0000-00-00'),
('ANGOR', 'Mathis', '1966-05-14', '1 Place G d''Estree', '', '18950', 'LEVET', '', '29 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 158, '0000-00-00'),
('BARDET', 'MAXENCE', '1966-08-21', '19 RUE DU NOUVEAU BOIS', '', '18000', 'BOURGES', '', '30 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 159, '0000-00-00'),
('BARGES', 'Maxime', '1966-11-28', '8 RUE DU PETIT CUPIDEN', '3e étage', '18950', 'LEVET', '', '30 05 05 06 07', '', '', 'M', 'gendarme', 'FOOTBALL', '', '', '', 160, '0000-00-00'),
('BARGE', 'Meriadec', '1967-03-07', '16 Place RichemENt', '', '18000', 'BOURGES', '', '31 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 161, '0000-00-00'),
('BANDOAS', 'Michel', '1967-06-14', '48 RUE DU LUDE', '', '37000', 'TOURS', 'PERENAN', '31 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 162, '0000-00-00'),
('BEANPORAS', 'Michel-Ange', '1967-09-21', '34 RUE DES GIRAUDIEERES', '', '18000', 'BOURGES', '', '32 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 163, '0000-00-00'),
('BEIGNEUX', 'Nicolas', '1967-12-29', '34 RUE DES GIRAUDIEERES', '', '37000', 'TOURS', '', '32 05 05 06 07', '', '', 'M', 'cornac', 'HANDBALL', '', '', '', 164, '0000-00-00'),
('BORTAS', 'Olivier', '1968-04-06', '3 Rue des Noisetiers', '', '18800', 'BAUGY', '', '33 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 165, '0000-00-00'),
('BORTOERELDU', 'Pascal', '1968-07-14', '14 ALLEE DES MURIERS', '', '18950', 'LEVET', '', '33 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 166, '0000-00-00'),
('BDUUSEN', 'Patrice', '1968-10-21', '3 rue AlfEREd Gallais', '', '18000', 'BOURGES', '', '34 05 04 06 08', '', '', 'M', 'gardien', 'BASKET', '', 'ttt', '', 167, '0000-00-00'),
('BODDAORT', 'PATRICK', '1969-01-28', '30 RUE DU MOULIN POTIER', '', '37000', 'TOURS', '', '34 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 168, '0000-00-00'),
('BORDEBUERE', 'Patrick', '1969-05-07', '30 RUE DU MOULIN POTIER', '', '18000', 'BOURGES', '', '35 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 169, '0000-00-00'),
('BOUAJAJ', 'PATRICK', '1969-08-14', '11 RUE DU GENERAL DE GAULDU', '', '37000', 'TOURS', '', '35 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 170, '0000-00-00'),
('BOUILLOT', 'Paul', '1969-11-21', '67 rue St Francois', '', '18800', 'BAUGY', '', '36 05 04 06 08', '', '', 'M', '', 'JUDO', '', '', '', 171, '0000-00-00'),
('BOUNOUANE', 'Ryan', '1970-02-28', '16Route de Bordeaux', '', '18950', 'LEVET', 'GIRANT', '36 05 05 06 07', '', '', 'M', 'marin', 'FOOTBALL', '', '', '', 172, '0000-00-00'),
('BOURGEOOU', 'Philippe', '1970-06-07', '11 rue Marcel LENguet', '', '18000', 'BOURGES', '', '37 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 173, '0000-00-00'),
('BOUREREAN', 'Philippe', '1970-09-14', '16 rue de la Houssaye', '', '18950', 'LEVET', '', '37 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 174, '0000-00-00'),
('STETEN', 'Radoine', '1970-12-22', '20 rue Michel Canuet', '', '18000', 'BOURGES', 'ROBIN', '38 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 175, '0000-00-00'),
('STUNET', 'EREGIS', '1971-03-31', '52 QUAI CARNOT', '', '37000', 'TOURS', '', '38 05 05 06 07', '', '', 'M', 'employe', 'HANDBALL', '', '', '', 176, '0000-00-00'),
('BUSNEL', 'Regis', '1971-07-08', '17 RUE DE LA STANCHOIERE', '', '18000', 'BOURGES', '', '39 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 177, '0000-00-00'),
('CARUANA', 'Remi', '1971-10-15', '8 SQUARE MANTEGNA', '', '37000', 'TOURS', '', '39 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 178, '0000-00-00'),
('CHABIRAND', 'Richard', '1972-01-22', '55 AV HENRI ADAM', '', '18800', 'BAUGY', '', '40 05 04 06 08', '', '', 'M', '', 'BASKET', '', '', '', 179, '0000-00-00'),
('CHARROU', 'ROBERT', '1972-04-30', '34 rue de Rosnay', '', '18950', 'LEVET', '', '40 05 05 06 07', '', '', 'M', 'fENctiENnaiERE', 'BASKET', '', '', '', 180, '0000-00-00'),
('CHANVEAN', 'Arthur', '1972-08-07', '9 BIS RUE DE ROCHEPINARD', '', '18000', 'BOURGES', '', '41 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 181, '0000-00-00'),
('CHAVET', 'Ricardo', '1972-11-14', '3 ALDUE DES JENQUILDUS', '', '37000', 'TOURS', '', '41 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 182, '0000-00-00'),
('CHENEAN', 'Sebastien', '1973-02-21', '18 Rue des AULNES', '', '18000', 'BOURGES', '', '42 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 183, '0000-00-00'),
('CHEVALIOR', 'Sebastien', '1973-05-31', '16 rue de MENtbaSEN', '', '37000', 'TOURS', '', '42 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 184, '0000-00-00'),
('LIBERT', 'François', '1973-09-07', '191 RUE AUGUSTE CHEVALLIER', '', '18800', 'BAUGY', '', '43 05 04 06 08', '', '', 'M', 'cadERE', 'HANDBALL', '', '', '', 185, '0000-00-00'),
('CHEVEREAN', 'Serge', '1973-12-15', '30 rue Marie LauEREncin', '', '18950', 'LEVET', '', '43 05 05 06 07', '', '', 'M', '', 'BASKET', '', '', '', 186, '0000-00-00'),
('CLOUCHE', 'Stephane', '1974-03-24', '20 RUE JUDUS ROMAINS', '', '18000', 'BOURGES', '', '44 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', 'ttt', '', 187, '0000-00-00'),
('GAGNOR', 'Sylvain', '1974-07-01', '2 Rue Marie LauEREncin', '', '18950', 'LEVET', '', '44 05 05 06 07', '', '', 'M', 'commercial', 'HANDBALL', '', '', '', 188, '0000-00-00'),
('GALLAND', 'Theo', '1974-10-08', '10 RUE DES CERISIERS', '', '18000', 'BOURGES', '', '45 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 189, '0000-00-00'),
('GASSELAS', 'Theo', '1975-01-15', '14 RUE DE DUYRITS', '', '37000', 'TOURS', '', '45 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 190, '0000-00-00'),
('GEAY', 'Theo', '1975-04-24', '24 RUE DU PETIT BOIS', '', '18000', 'BOURGES', '', '46 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 191, '0000-00-00'),
('GIRANDEN', 'Theo', '1975-08-01', '16 rue des Granges', '', '37000', 'TOURS', '', '46 05 05 06 07', '', '', 'M', 'policier', 'JUDO', '', '', '', 192, '0000-00-00'),
('GIRANT', 'THIBAUD', '1975-11-08', '10 Rue Pierre Mendes France', '', '18800', 'BAUGY', '', '47 05 04 06 08', '', '', 'M', '', 'FOOTBALL', '', '', '', 193, '0000-00-00'),
('GUORY', 'Thibault', '1976-02-15', '1 Allee des fauvettes', '', '18950', 'LEVET', '', '47 05 05 06 07', '', '', 'M', '', 'HANDBALL', '', '', '', 194, '0000-00-00'),
('HABANT', 'Thierry', '1976-05-24', '1 ALDUE DES FAUVETTES', '', '18000', 'BOURGES', '', '48 05 04 06 08', '', '', 'M', '', 'BASKET', '', 'ttt', '', 195, '0000-00-00'),
('ASNOCENT ', 'Thomas', '1976-08-31', '24 MAIL DE VENCAY', '', '37000', 'TOURS', '', '48 05 05 06 07', '', '', 'M', '', 'FOOTBALL', '', '', '', 196, '0000-00-00'),
('JANDARD', 'Thomas', '1976-12-08', '18 RUE JUDUS ROMAINS', '', '18000', 'BOURGES', '', '49 05 04 06 08', '', '', 'M', '', 'HANDBALL', '', 'ttt', '', 197, '0000-00-00'),
('KORNANOU', 'Tommy', '1977-03-17', '1 rue Des AFN', '', '37000', 'TOURS', '', '49 05 05 06 07', '', '', 'M', '', 'JUDO', '', '', '', 198, '0000-00-00'),
('KROUSIAN', 'Valentin', '1977-06-24', '12 rue Beregovoy', '', '18800', 'BAUGY', '', '50 05 04 06 08', '', '', 'M', 'instituteur', 'FOOTBALL', '', '', '', 199, '0000-00-00'),
('DUMAS', 'Paul', '1964-02-12', '3 rue des Aiguilles', 'bat B', '38000', 'GRENOBLE', '', '', '', '', '', '', 'BASKET', '', '', '', 200, '0000-00-00'),
('DUVAL', 'Pierre', '2000-06-03', '6 allée des écuries', 'BAT C', '86000', 'POITIERS', '', '', '', '', '', '', 'FOOTBALL', '', '', '', 201, '0000-00-00'),
('MARGEOT', 'Paul', '1999-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 204, '0000-00-00'),
('BOUCHER', 'Jean', '2012-02-02', '5 rue Victor Hugo', 'bat G2', '13000', 'MARSEILLE', '', '', '', '', '', '', 'FOOTBALL', '', '', '', 205, '0000-00-00'),
('DEVREAUX', 'Philippe', '1980-05-05', 'Les Potinières', '', '37300', 'SAINT-CYR', '', '', '', '', '', '', 'BASKET', '', '', '', 206, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `nom` varchar(10) NOT NULL,
  `Intitule` varchar(20) NOT NULL,
  `adresse1` varchar(40) NOT NULL,
  `adresse2` varchar(40) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `president_numero` int(11) unsigned NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`nom`),
  KEY `cp` (`cp`,`ville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sections`
--

INSERT INTO `sections` (`nom`, `Intitule`, `adresse1`, `adresse2`, `cp`, `ville`, `president_numero`, `tel`, `email`) VALUES
('BASKET', 'BASKET-BALL', '10 rue Jules Romains', '', '18000', 'BOURGES', 0, '0248495051', ''),
('FOOTBALL', 'FOOTBALL', '12 rue des platanes', '', '18000', 'BOURGES', 0, '02 48 49 50 51', ''),
('HANDBALL', 'HANDBALL', '2 place V. Hugo', '', '18000', 'BOURGES', 0, '06 06 06 07 08', ''),
('JUDO', 'JUDO', '65 av du Général de Gaulle', '', '18000', 'BOURGES', 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
