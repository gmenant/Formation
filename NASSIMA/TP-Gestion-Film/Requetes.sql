
SELECT nom,prenom FROM Personne
ORDER BY nom ORDER BY nom ASV,naissance DESC;

SELECT DISTINCT titre FROM Film;

SELECT DISTINCT titre FROM Film WHERE annee=2003;

SELECT DISTINCT id,titre,annee FROM Film WHERE annee>2010;

SELECT titre FROM Film WHERE titre LIKE "L%" AND titre LIKE "%r";

SELECT DISTINCT id,titre,annee FROM Film WHERE (annee>2013 OR annee<1997);

2 JOINTURES
01
SELECT DISTINCT titre, type, annee FROM Film INNER JOIN Genre ON Genre.ID=Film.idGenre ORDER BY annee;
02
SELECT DISTINCT titre, type FROM Film INNER JOIN Genre ON Genre.ID=Film.idGenre WHERE type='drame';
03
SELECT type, titre FROM Film INNER JOIN Genre ON Genre.ID=Film.idGenre INNER JOIN Personne ON Film.idRealisateur=Personne.id WHERE (nom='Scorsese' AND prenom='Martin')
04
SELECT nom, prenom FROM Personne INNER JOIN Joue ON Personne.id=Joue.idActeur INNER JOIN Film ON Film.id=Joue.idFilm WHERE titre='Le convoyeur' ORDER BY nom
05
SELECT nom, prenom FROM Personne INNER JOIN Joue ON Personne.id=Joue.idActeur INNER JOIN Film ON Film.id=Joue.idFilm INNER JOIN Genre ON Film.idGenre=Genre.id WHERE type='comedie'
06
SELECT DISTINCT nom, prenom, type FROM Personne INNER JOIN Joue ON Personne.id=Joue.idActeur INNER JOIN Film ON Film.id=Joue.idFilm INNER JOIN Genre ON Film.idGenre=Genre.id WHERE nom='Di Caprio'

3 OPERATEURS D AGREGATION

01
SELECT titre, annee FROM Film WHERE MIN(annee) AND MAX(annee)
02
SELECT titre, MIN(annee) FROM Film INNER JOIN Personne  ON Film.idRealisateur=Personne.id WHERE pays='France'
03
SELECT titre, AVG(nbSpectateurs) FROM Film GROUP BY titre ORDER BY nbSpectateurs DESC;
04
SELECT COUNT(type) FROM Genre;
05
SELECT COUNT(idRealisateur) FROM Film INNER JOIN  Personne ON Film.idRealisateur=Personne.id WHERE nom="Pecas" AND annee>'1980'
06
SELECT SUM(nbSpectateurs)*8 FROM Film INNER JOIN Personne ON Film.idRealisateur=Personne.id WHERE pays="france" AND annee='2010'

4 REGROUPEMENTS

01
SELECT pays,COUNT(idActeur) FROM Joue INNER JOIN Personne ON Personne.id=Joue.idActeur GROUP BY pays;
02
SELECT COUNT(id) FROM Film INNER JOIN Genre ON Film.idGenre=Genre.id GROUP BY type;
03
SELECT nom,prenom,AVG(salaire) AS salaireMoyen FROM Personne INNER JOIN Joue ON Joue.idActeur=Personne.id GROUP BY nom HAVING AVG(salaire)>400000;
04
SELECT COUNT(Film.id) FROM Film INNER JOIN Personne ON Personne.id=Film.idRealisateur WHERE pays='angleterre'
05
SELECT Personne.prenom, Personne.nom FROM Personne
INNER JOIN Joue ON Personne.id=Joue.idActeur
INNER JOIN Film ON Joue.idFilm=Film.id
INNER JOIN Genre ON Film.idGenre=Genre.id
GROUP BY Personne.nom HAVING COUNT(type="comique")<2
06
SELECT nom, prenom,type,AVG(nbSpectateurs) FROM Film
INNER JOIN Genre ON Film.idGenre=Genre.id
INNER JOIN Personne ON Personne.id=Film.idRealisateur
GROUP BY type,nom;
