*** Settings ***
Library           SeleniumLibrary
Library           AutoRecorder

*** Variables ***
${LOGIN URL}      http://automationpractice.com/index.php
${BROWSER}        Chrome

*** Keywords ***
Abrir navegador
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Capture Page Screenshot

Fechar navegador
    Close Browser
