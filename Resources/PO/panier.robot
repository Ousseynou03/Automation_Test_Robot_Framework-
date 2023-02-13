*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Inspecter panier

    Click Element    xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/a[4]/div[1]/span[1]
    Wait Until Page Contains    Shopping Cart

Commander
    Click Element    xpath=/html/body/div[1]/div[2]/div[3]/div[3]/div/div[1]/div[1]/div/form/div/div/span/span/span/input
    Wait Until Page Contains    Sign in
