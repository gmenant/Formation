<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SI" texte="Version 1, Bob commence"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="r EST_DU_TYPE NOMBRE" code="1#NOMBRE#r"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//a est le nombre d'allumettes, r le nombre retiré, j le joueur" code="19#a est le nombre d'allumettes, r le nombre retiré, j le joueur"/>
        <item algoitem="a PREND_LA_VALEUR 13" code="5#a#13#pasliste"/>
        <item algoitem="j PREND_LA_VALEUR 1" code="5#j#1#pasliste"/>
        <item algoitem="TANT_QUE (a>1) FAIRE" code="15#a>1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="j PREND_LA_VALEUR -j+1" code="5#j#-j+1#pasliste"/>
            <item algoitem="r PREND_LA_VALEUR 0" code="5#r#0#pasliste"/>
            <item algoitem="SI (j==0) ALORS" code="6#j==0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="TANT_QUE (r>=a OU r&lt;=0) FAIRE" code="15#r>=a OU r&lt;=0">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="r PREND_LA_VALEUR floor(random()*3+1)" code="5#r#floor(random()*3+1)#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="a PREND_LA_VALEUR a-r" code="5#a#a-r#pasliste"/>
                <item algoitem="AFFICHER &quot;Bob a retiré &quot;" code="4#Bob a retiré #0"/>
                <item algoitem="AFFICHER r" code="3#r#0#pasliste"/>
                <item algoitem="AFFICHER &quot; allumette(s). &quot;" code="4# allumette(s). #1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;Combien d'allumettes voulez-vous retirer ? &quot;" code="4#Combien d'allumettes voulez-vous retirer ? #1"/>
                    <item algoitem="r PREND_LA_VALEUR 0" code="5#r#0#pasliste"/>
                    <item algoitem="TANT_QUE (r&lt;=0 ou r>3 ou r>=a) FAIRE" code="15#r&lt;=0 ou r>3 ou r>=a">
                        <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                        <item algoitem="LIRE r" code="2#r#pasliste"/>
                        <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                    </item>
                    <item algoitem="a PREND_LA_VALEUR a-r" code="5#a#a-r#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="AFFICHER &quot;Il reste &quot;" code="4#Il reste #0"/>
            <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
            <item algoitem="AFFICHER &quot; allumette(s).&quot;" code="4# allumette(s).#1"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (j==0) ALORS" code="6#j==0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Vous avez perdu ! &quot;" code="4#Vous avez perdu ! #1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Bob a perdu !&quot;" code="4#Bob a perdu !#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
