CREATE DATABASE cinema2;
use cinema2;

CREATE TABLE IF NOT EXISTS `spectateur` (
`numero` Int(8)NOT NULL PRIMARY KEY,
`nom` Text(25) NOT NULL,
`prenom` Text(15) NOT NULL,
`adress` Varchar(40)NOT NULL,
`cat_prof` Text(20)NOT NULL
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

CREATE TABLE IF NOT EXISTS `film`(
`VISA` Int(30) NOT NULL PRIMARY KEY,
`titre` Varchar(15) NOT NULL,
`realisateur` Varchar(15) NOT NULL,
`annee_sortie` Varchar(10)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `salle`(
`sal_num` Int(10) NOT NULL PRIMARY KEY,
`sal_nom` Varchar(30) NOT NULL,
`sal_adr` Varchar(15) NOT NULL,
`sal_cp` Varchar(15) NOT NULL,
`sal_ville` Text(25)
)ENGINE=InnoDB;

CREATE TABLE projection(
        FK_sal_num Int (10) NOT NULL,
        FK_VISA Int (30) NOT NULL,
        PRIMARY KEY (FK_sal_num,FK_VISA),
        FOREIGN KEY (FK_VISA) REFERENCES film(VISA),
        FOREIGN KEY (FK_sal_num) REFERENCES salle(sal_num)
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
