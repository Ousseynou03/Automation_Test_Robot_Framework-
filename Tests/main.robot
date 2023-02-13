*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/PO/pageAccueil.robot
Resource  ../Resources/PO/pageProduit.robot
Resource  ../Resources/PO/panier.robot


Suite Setup  common.Begin Web Test   #le mot clé Begin Web Test va se lancer au début de chaque suite de test
Suite Teardown  common.End Web Test   #le mot clé End Web Test va se lancer vers la fin de chaque suite de test

*** Test Cases ***

Voir Produits disponibles
    pageAccueil.Charger la page Web
    pageAccueil.Chercher Site Web
    pageAccueil.Naviguer vers le site Amazon
    pageAccueil.Rechercher le produit

Choisir son produit
    pageProduit.Choisir un produit interessant
    pageProduit.Choisir taille cable
    pageProduit.Ajouter produit au panier

Proceder au paiement
    panier.Inspecter panier
    panier.Commander
