// Mastermind.js
 
   function init() {
        nblignes = 9;      // le nombre maximum d'essais (-> de lignes)
		nbDeCouleurs = 6;  // le nombre total de couleurs
		couleurs = new Array("rg", "bl", "ja", "ve", "or", "cy"); // le tableau des classes des couleurs
		nc = -1;           // l'indice de la couleur dans le tableau couleurs. Rien par défaut.  
		code = [];         // la combinaison aléatoire
		proposition = [];  // la proposition du joueur
		lignAct = 1;       // la ligne active
		colonne = 0;       // le numéro de la colonne
		fno = 0;           // le nombre de fiches noires
		fbl = 0;           // le nombre de fiches blanches

        
		// initialisation du code et de la proposition
        for (var i = 0; i < 4; i++) {
			proposition[i] = new UneBoule(-1, false);
			code[i] = new UneBoule(Math.round(Math.random()*(nbDeCouleurs-1)+.1), false); 
		}
		// dessin du tableau de jeu
			var jeu = ""
			for (var i = 1; i <= nblignes; i++) {
				jeu = jeu + "<tr><td><div class='gc' onclick='colonne = 1;colore()'></div></td><td><div class='gc' onclick='colonne = 2;colore()'></div></td><td><div class='gc' onclick='colonne = 3;colore()'></div></td><td><div class='gc' onclick='colonne = 4;colore()'></div></td><td><div class='pc'></div><div class='pc'></div><div class='pc'></div><div class='pc'></div></td></tr>";
				document.getElementById("jeu").innerHTML = jeu;
			}
		//	Réinitialisation solution : bug 3
			var cell = document.querySelectorAll('#sol div');
			for (i=0;i<4;i++) {
				cell[i].setAttribute("class", "gc");
			}
		//	Réinitialisation choix couleur
				for (i=0;i<6;i++) {
					var cell = document.querySelectorAll('#control input');
					cell[i].setAttribute("checked", false); // déselection de chaque couleur
				}
		}

	function colore() { //colore une boule.
			if (nc<0) {
				alert("Vous devez d'abord sélectionner une couleur.");
				}
			else {
				var cell = document.querySelectorAll('#jeu div'); // on sélectionne les div enfants de la table id=jeu
				pos = (lignAct-1)*8+colonne-1;
				classe = "gc "+couleurs[nc];
				cell[pos].setAttribute("class", classe); // affectation de la classe de la couleur
				proposition[colonne-1].couleur = nc;     // affectation de la couleur à la proposition
				}
		}

	function effaceLigne() {  // efface une ligne et réinitialise la proposition	
			var lignes = document.querySelectorAll('#jeu tr'); // on sélectionne les tr enfants de la table id=jeu
			lignes[lignAct-1].innerHTML = "<tr><td><div class='gc' onclick='colonne = 1;colore()'></div></td><td><div class='gc' onclick='colonne = 2;colore()'></div></td><td><div class='gc' onclick='colonne = 3;colore()'></div></td><td><div class='gc' onclick='colonne = 4;colore()'></div></td><td><div class='pc'></div><div class='pc'></div><div class='pc'></div><div class='pc'></div></td></tr>";
			for (i=0;i<4;i++) {
			proposition[i].couleur= -1;
			proposition[i].etat=false;
			}
		}; 
       
 	function UneBoule(couleur, etat) { // les composants d'une proposition ou du code à trouver.
			this.couleur = couleur;
			this.etat = etat;
			}
        
	function verifier() {	// fonction de vérification de la ligne en cours
		//test si toutes les cases on été remplies
		vide=false;
		for (i =0 ; i<4;i++) {
			if (proposition[i].couleur < 0) {
				window.alert('Remplissez toutes les cases SVP !');
				i=4;
				vide=true;
			};
		};
		if (vide==false) {
			// initialise les fiches noires et blanches à 0
			// fno : bonne couleur bien placée / fbl : bonne couleur mal placée
			fno = 0;
			fbl = 0;
			// nombre de boules bien placées de bonne couleur
			for (i=0;i<4;i++) {
				//test si la boule solution et la boule proposition sont égal
				if (proposition[i].couleur==code[i].couleur) {
					//incrémente les fiches noires
					fno++;
					//blocage des boules pour ne plus les recomparer en mettant l'état a true
					code[i].etat=true;
					proposition[i].etat=true;
				};
			};
			//nombre de boules de bonnes couleurs  mal placées
			for (i=0;i<4;i++) {
				// uniquement si la boule n'a pas encore été testée
				if (proposition[i].etat==false) {
					for (j=0;j<4;j++) {
						// uniquement si cette boule de la solution n'a pas encore été testée
						if (code[j].etat==false && proposition[i].etat==false) {
							//test si la couleur de la proposition en cours est la meme que la solution
							if (proposition[i].couleur==code[j].couleur) {
								//incrémente les fiches blanches
								fbl++;
								//bloque pour comparaison la boule de solution et la boule de proposition
								code[j].etat=true;
								proposition[i].etat=true;
							};
						};
					};
				};
			};
				
			fiches();
			//test si il n'y a que des fiches rouges -> succès et alert de la victoire
			if (fno==4) { 
				solution();  //affiche la solution
				window.alert("Bravo, victoire en "+lignAct+" coups");
			}
			else if (lignAct == nblignes) {  //si non test si on est a la fin et que c'est perdu !
				solution(); //affiche la solution
				window.alert("Désolé, tu as perdu !");
			};
			//réinitialise les etats des propositions et des solutions pour la prochaine ligne
			for (var i=0;i<4;i++) {
				proposition[i].etat=false;
				proposition[i].couleur=-1; // bug numéro 1
				code[i].etat=false;
			};
			// Incrémentation de la ligne
			lignAct++;			
		}; 
	}


		
	function fiches() { // affichage du test : les fiches
		nf = fbl + fno;
		var cell = document.querySelectorAll('#jeu div');
		if (fno > 0) {  // on gère d'abord les fiches noires, s'il y en a
			i= 0; 
			while (i<fno) {
				pos = (lignAct-1)*8+4+i;    // Bug 2 
				cell[pos].setAttribute("class", "pc noir");
				i++;
			}
		}
		if (fbl > 0) { // puis les blanches, s'il y en a.
			i=fno;
			while (i<nf) { // tant qu'il reste des fiches à placer...
				pos = (lignAct-1)*8+4+i;  // Bug 2bis 
				cell[pos].setAttribute("class", "pc blanc");
				i++;
			}
		}
	}

				
	function solution() { //affichage de la solution
		var cell = document.querySelectorAll('#sol div'); // sélection de tous les div de la table id=sol
			for (i=0;i<4;i++) {
				classe = "gc "+couleurs[code[i].couleur];
			cell[i].setAttribute("class", classe); // affectation de la classe de la couleur
			}
	}

    function reset() {    // Réinitialisation
        init();
    }
