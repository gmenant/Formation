CREATE DATABASE IF NOT EXISTS	cinema1 ;

USE cinema1;


CREATE TABLE IF NOT EXISTS SALLE_CINEMA (
	nom_salle		VARCHAR(15)	 NOT NULL   ,
	adresse			VARCHAR(30) 	NOT NULL,
    PRIMARY KEY (nom_salle));

INSERT INTO `SALLE_CINEMA` (`nom_salle`,`adresse`) VALUES
('Charlotte','9, rue de la Chablonniere'),
('Elodie', '8 allee des Cernes'),
( 'Rene', '1, allee des Myosotis'),
('Marie', '20, rue du Saule Michaud');

	
	
-- ----------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS FILM(
	visa	     INT(8)			    NOT NULL,
	titre    	 VARCHAR(50)		NOT NULL,
	realisateur	 VARCHAR(30)		NOT NULL,
    année_sortie INT(4)             NOT NULL,
	
	CONSTRAINT	pk1	PRIMARY KEY (visa));
	
	
INSERT INTO `FILM` (`visa`,`titre`,`realisateur`,`année_sortie`) VALUES
	
('35','Les Animaux fantastiques en 3D','David Yates','2016-11-16'),
('36','Alliés','Robert Zemeckis','2016-11-23'),
('37','Polina danser sa vie','Valérie Muller','2016-11-16'),
('38','Doctor Strange en 3D','Scott Derrickson ','2016-10-26');

	
	
	
	
-- ------------------------------------------------------------------------------------------------






CREATE TABLE IF NOT EXISTS SPECTATEUR(
	numero	       INT(8)			NOT	NULL,
	nom    	       VARCHAR(50)		NOT NULL,
	prenom	       VARCHAR(30)		NOT NULL,
    adress         VARCHAR(30)      NOT NULL,
	date_naissance date             NOT NULL,
	cat_prof       VARCHAR(20)		NOT NULL,
	
	PRIMARY KEY (numero));

INSERT INTO `SPECTATEUR` (`numero`,`nom`,`prenom`,`adress`,`date_naissance`,`cat_prof`) VALUES
('1','CHAUVEAU', 'Jacques', '18, av du général de Gaule', '1992-06-02','Boulanger'),
('2','BRANGER', 'Marie Line',  '33, rue Saint Michel', '1995-11-15','Secrétaire'),
('3','LEMOINE', 'Bertrand',  'Résidence les Charmilles', '1984-09-14','Médecin'),
('4','HINARD', 'Jean-Pierre', '27 ave7-11', '15 rue du Pont aux Anes','aissière'),
('5','DUBOIS', 'Mathieu', '1nue Victor Hugo','1999-06-27', 'étudiant'),
('6','PETIT', 'Evelyne', 'impasse des Violettes', '1996-06-02', 'sans-emploic');


-- ---------------------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PROJECTION(
	nom_salle	 VARCHAR(15)	    NOT	NULL,
	visa	     INT			    NOT	NULL,
	heure        INT			    NOT	NULL,
	FOREIGN KEY (nom_salle) REFERENCES SALLE_CINEMA(nom_salle), 
    FOREIGN KEY (visa) REFERENCES FILM (visa), 
    PRIMARY KEY (nom_salle,visa) );
	
INSERT INTO `PROJECTION` (`nom_salle`,`visa`, `heure`) VALUES
('Charlotte','35','14:15'),	
('Charlotte','36','19:00'),	
('Elodie','35','10:00'),	
('Marie','35','19:00'),	
('Charlotte','37','19:00'),	
('Charlotte','38','10:00');	
	
	
-- ------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS APPRECIATION
(
	numero	     INT(8)			NOT	NULL,
	visa	     INT(10)		NOT	NULL,
	impression   INT(1)			NOT	NULL,
	FOREIGN KEY (numero) REFERENCES SPECTATEUR(numero), 
    FOREIGN KEY (visa) REFERENCES FILM (visa), 
    PRIMARY KEY (numero,visa) );

INSERT INTO `APPRECIATION` (`numero`,`visa`,`impression`) VALUES
('1','35','1'),	
('1','36','1'),	
('2','35','1'),	
('3','35','1'),	
('1','37','0'),	
('1','38','1');	







