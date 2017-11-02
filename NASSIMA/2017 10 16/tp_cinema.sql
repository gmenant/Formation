#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: FILM
#------------------------------------------------------------

CREATE TABLE FILM(
        film_visa_expl Varchar (10) NOT NULL ,
        film_titre     Char (30) ,
        film_nom_real  Char (30) ,
        film_ads       Date ,
        PRIMARY KEY (film_visa_expl )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SALLE
#------------------------------------------------------------

CREATE TABLE SALLE(
        id_salle       Int NOT NULL ,
        sal_nom        Char (25) ,
        sal_adr        Char (25) ,
        sal_cp         Char (10) ,
        sal_ville      Char (25) ,
        horaire        Time ,
        date_du_jour   Datetime ,
        film_visa_expl Varchar (10) ,
        PRIMARY KEY (id_salle )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SPECTATEUR
#------------------------------------------------------------

CREATE TABLE SPECTATEUR(
        id_spectateur Int NOT NULL ,
        spec_nom      Char (25) ,
        spec_prenom   Char (25) ,
        spec_adre     Varchar (25) ,
        spec_cp       Varchar (10) ,
        spec_ville    Char (25) ,
        spec_cat      Char (30) ,
        spec_fidele   Bool ,
        PRIMARY KEY (id_spectateur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: vu
#------------------------------------------------------------

CREATE TABLE vu(
        appreciation   Char (25) ,
        id_spectateur  Int NOT NULL ,
        film_visa_expl Varchar (10) NOT NULL ,
        PRIMARY KEY (id_spectateur ,film_visa_expl )
)ENGINE=InnoDB;

ALTER TABLE SALLE ADD CONSTRAINT FK_SALLE_film_visa_expl FOREIGN KEY (film_visa_expl) REFERENCES FILM(film_visa_expl);
ALTER TABLE vu ADD CONSTRAINT FK_vu_id_spectateur FOREIGN KEY (id_spectateur) REFERENCES SPECTATEUR(id_spectateur);
ALTER TABLE vu ADD CONSTRAINT FK_vu_film_visa_expl FOREIGN KEY (film_visa_expl) REFERENCES FILM(film_visa_expl);
