*** Settings ***

Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Sleep    3s
    Close Browser