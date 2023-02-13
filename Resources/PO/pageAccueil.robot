*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem
Resource  ../variables.robot
*** Keywords ***
Charger la page Web
    Go To    ${URL}
    #Gérer le temps d'attente pour la réalisation d'un test

Chercher Site Web
#vider d'abord l'input de recheche de google avant d'envoyer un nouveau élément
    Clear Element Text    name=q

    #Ecrire le mot qu'on veut rechercher

    Input Text    name=q    amazon

    Mouse Down    xpath=/html/body/div[1]/div[2]

    Mouse Up    xpath=/html/body/div[1]/div[2]

    #Cliquer le bouton pour effectuer la recherche
    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]

    Wait Until Page Contains    Images

Naviguer vers le site Amazon

    Click Element    xpath=/html/body/div[7]/div/div[11]/div[1]/div[1]/div[2]/div/div/div/div/div/div[1]/a/div[1]/span

    Wait Until Page Contains    Orders
    #Sleep    3s

Rechercher le produit
    Clear Element Text    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[2]/div[1]/input
    
    Input Text    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[2]/div[1]/input    rj45 cable
    
    Click Element    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[3]/div/span/input
