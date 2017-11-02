CREATE DATABASE cinema2;
use cinema2;

CREATE TABLE IF NOT EXISTS `spectateur` (
`numero` Int(8)NOT NULL PRIMARY KEY,
`nom` Text(25) NOT NULL,
`prenom` Text(15) NOT NULL,
`adress` Varchar(40)NOT NULL,
`cat_prof` Text(20)NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

CREATE TABLE IF NOT EXISTS `film`(
`VISA` Int(30) NOT NULL PRIMARY KEY,
`titre` Varchar(15) NOT NULL,
`realisateur` Varchar(15) NOT NULL,
`annee_sortie` Varchar(10)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `salle`(
`sal_nom` Varchar(30) NOT NULL PRIMARY KEY,
`sal_adr` Varchar(15) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE projection(
        FK_sal_nom Varchar (30) NOT NULL,
        FK_VISA Int (30) NOT NULL,
        PRIMARY KEY (FK_sal_nom,FK_VISA),
        FOREIGN KEY (FK_VISA) REFERENCES film(VISA),
        FOREIGN KEY (FK_sal_nom) REFERENCES salle(sal_nom)
)ENGINE=InnoDB;

CREATE TABLE appreciation(
        appreciation   Char (25) ,
        FK_numero  Int (10) NOT NULL,
        FK_VISA Int (10) NOT NULL,
        PRIMARY KEY (FK_numero,FK_VISA),
        FOREIGN KEY (FK_VISA) REFERENCES film(VISA),
        FOREIGN KEY (FK_numero) REFERENCES spectateur(numero)
)ENGINE=InnoDB;

INSERT INTO `film` (`VISA`, `titre`, `realisateur`, `annee_sortie`) VALUES
('3542154','Les animaux fantastiques','David Yates', '2016'),
('3362154','Alliés','Robert Zemeckis', '2016'),
('3545454','Polina va danser sa vie','Valérie Muller', '2016'),
('3548554','Doctor Strange','Scott Derrickson', '2016'),
('3465154','Star Wars','Georges Lucas', '2014'),
('3654254','Batman','Tim Burton', '1989'),
('3542187','Justice League','Zack Snyder', '2017'),
('3547194','Le sens de la fête','Eric Toledano', '2016'),
('3546554','Forrest Gump','Robert Zemeckis', '1994'),
('3132254','La ligne verte','Franc Darabon', '2000'),
('3522231','Your name','Makoto Shinkai', '2016'),
('3548754','Tu ne tueras point','Mel Gibson', '2016'),
('3985454','Django Unchained','Quentin Tarentino', '2013'),
('3213524','Le Parrain',' Francis Ford Coppola', '1972'),
('8756154','12 hommes en colère','Sidney Lumet', '1957');

INSERT INTO `spectateur` (`numero`, `nom`, `prenom`, `adress`,`cat_prof`) VALUES
('1','CHAUVEAU','Jacques','18 av du general de gaulle','Maçon'),
('2','BERGOUX','Etienne','60 rue Lambert','Maçon'),
('3','PULLET','Melina','4 place de l espoir','Maçon'),
('4','CAMPRE','Claudie','78 rue Alençon','prof'),
('5','KESSIM','Robert','81 av du general de gaulle','Maçon'),
('6','FOLINEAU','Joelle','18 av du general de gaulle','Maçon'),
('7','CHAUVINEAU','Jacques','18 av du general de gaulle','Maçon');


INSERT INTO `salle` (`sal_nom`, `sal_adr`) VALUES
('Charlotte','9 rue des boutiques'),
('Kevin','81 rue de la paix'),
('Antoine','54 avenue du marechal'),
('Etienne','21 rue de Lisbonne'),
('Sonia','2 place de l homme');

INSERT INTO `projection` (`FK_sal_nom`, `FK_VISA`) VALUES
('Charlotte','3132254'),
('Kevin','3547194'),
('Antoine','3213524'),
('Kevin','8756154'),
('Sonia','3362154');

INSERT INTO `projection` (`FK_numero`, `FK_VISA`) VALUES
('Charlotte','3132254'),
('Kevin','3547194'),
('Antoine','3213524'),
('Kevin','8756154'),
('Sonia','3362154');
