1
SELECT idV FROM Vegetaux WHERE dateR IN (SELECT dateR FROM Retours WHERE dateR<1 mois) AND approuveR = (SELECT dateR FROM Retours WHERE approuveR = TRUE );
2
SELECT idV FROM Facture WHERE villeJ = (SELECT villeJ FROM Jardins WHERE villeF = (SELECT villeF FROM Fournisseurs));
3
SELECT idV,nomF FROM Vegetaux WHERE EXISTS approuveR (SELECT approuveR FROM Retour WHERE approuveR = TRUE ) 
GROUP BY idF IN (SELECT idF FROM Fournisseurs);

SELECT idV,nomC FROM Vegetaux WHERE EXISTS approuveR (SELECT approuveR FROM Retour WHERE approuveR = TRUE ) 
GROUP BY idC IN (SELECT idC FROM Clients);

SELECT idV,nomC FROM Vegetaux WHERE EXISTS approuveR (SELECT approuveR FROM Retour WHERE approuveR = TRUE ) 
GROUP BY idV;