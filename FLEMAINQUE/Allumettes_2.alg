<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Version 2 : l'adversaire choisi qui commence. " courant="TANT_QUE (j&lt;0 ou j>1) FAIRE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#r" algoitem="r EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#a#13#pasliste" algoitem="a PREND_LA_VALEUR 13"/>
        <item code="5#j#2#pasliste" algoitem="j PREND_LA_VALEUR 2"/>
        <item code="15#j&lt;0 ou j>1" algoitem="TANT_QUE (j&lt;0 ou j>1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Qui commence (0 : moi (Bob), 1 : vous) ? #0" algoitem="AFFICHER &quot;Qui commence (0 : moi (Bob), 1 : vous) ? &quot;"/>
            <item code="2#j#pasliste" algoitem="LIRE j"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#j#-j+1#pasliste" algoitem="j PREND_LA_VALEUR -j+1"/>
        <item code="15#a>1" algoitem="TANT_QUE (a>1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#j#-j+1#pasliste" algoitem="j PREND_LA_VALEUR -j+1"/>
            <item code="5#r#0#pasliste" algoitem="r PREND_LA_VALEUR 0"/>
            <item code="6#j==0" algoitem="SI (j==0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="15#r&lt;=0 ou r>3 ou r>=a" algoitem="TANT_QUE (r&lt;=0 ou r>3 ou r>=a) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#r#floor(random()*3+1)#pasliste" algoitem="r PREND_LA_VALEUR floor(random()*3+1)"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="5#a#a-r#pasliste" algoitem="a PREND_LA_VALEUR a-r"/>
                <item code="4#Bob a retiré #0" algoitem="AFFICHER &quot;Bob a retiré &quot;"/>
                <item code="3#r#0#pasliste" algoitem="AFFICHER r"/>
                <item code="4# allumette(s). #1" algoitem="AFFICHER &quot; allumette(s). &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#Combien d'allumettes voulez-vous retirer ? #1" algoitem="AFFICHER &quot;Combien d'allumettes voulez-vous retirer ? &quot;"/>
                    <item code="5#r#0#pasliste" algoitem="r PREND_LA_VALEUR 0"/>
                    <item code="15#r&lt;=0 ou r>3 ou r>=a" algoitem="TANT_QUE (r&lt;=0 ou r>3 ou r>=a) FAIRE">
                        <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                        <item code="2#r#pasliste" algoitem="LIRE r"/>
                        <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                    </item>
                    <item code="5#a#a-r#pasliste" algoitem="a PREND_LA_VALEUR a-r"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="4#Il reste #0" algoitem="AFFICHER &quot;Il reste &quot;"/>
            <item code="3#a#0#pasliste" algoitem="AFFICHER a"/>
            <item code="4# allumette(s).#1" algoitem="AFFICHER &quot; allumette(s).&quot;"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="6#j==0" algoitem="SI (j==0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Vous avez perdu ! #1" algoitem="AFFICHER &quot;Vous avez perdu ! &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Bob a perdu !#1" algoitem="AFFICHER &quot;Bob a perdu !&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
