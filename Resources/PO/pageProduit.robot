*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Choisir un produit interessant
    Click Link    xpath=/html/body/div[1]/div[2]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div/div/div/div[2]/div/div/div[1]/h2/a
    Wait Until Page Contains    Add to Cart


Choisir taille cable
    Click Button    xpath=/html/body/div[1]/div[2]/div[9]/div[6]/div[4]/div[32]/div[1]/div/form/div[1]/ul/li[2]/span/div/span/span/span/button
    Wait Until Page Contains    Add to Cart



Ajouter produit au panier
    Click Element    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart
