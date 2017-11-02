1
INSERT INTO `sections`(`nom`, `Intitule`, `adresse1`,`CP`,`ville`)
VALUES ('VOLLEY-BALL','VOLLEY-BALL','16 place V.Hugo','18000','Bourges');

2
DELETE FROM sections WHERE Intitule='VOLLEY-BALL';

3
UPDATE sections SET nom='VOLLEY-BALL' WHERE nom='FOOTBALL';

4
INSERT INTO `adherents`(`nom`,`prenom`,`date_naiss`,`adresse1`,`ville`,`cp`,`section`)
VALUES ('GREY','Maxime','1984-02-06','19 avenue Victor Hugo','POITIERS', '86000', 'VOLLEY-BALL');

5
SELECT nom, prenom FROM adherents WHERE ville='TOURS';

6
UPDATE adherents SET ville='BOURGES',cp='18000' WHERE nom='Polite' AND prenom='Jean-Louis';
