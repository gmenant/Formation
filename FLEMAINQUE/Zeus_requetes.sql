INSERT INTO contrat(`date_contrat`, `duree`,`nom_contact`,`id_client`)
VALUES('2014-1-9','90','Elsa Muzebien','22');

INSERT INTO ligne_contrat(`quantite_mini`,`prix_unitaire`,`reference`,`id_contrat`)
VALUES('8','41','B60HL-N','2'),
('3','114','IQXer-N','2');

INSERT INTO facture(`id_facture`,`date_fact`,`id_client`)
VALUES('15','2014-12-10','22');

INSERT INTO ligne_facture(`quantite`,`id_facture`,`reference`)
VALUES('12','15','B60HL-N'),
('2','15','IQXer-N');
