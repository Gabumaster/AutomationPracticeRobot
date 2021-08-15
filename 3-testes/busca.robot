*** Settings ***
Resource    ../1-steps/busca_steps.robot

Test Setup    Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***

Realizar busca
    E pesquisa por produto "shoes"
    Então traz os resultados relacionado a pesquisa 
    