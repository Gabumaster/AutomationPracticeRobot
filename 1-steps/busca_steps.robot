*** Settings ***
Resource    ../2-pages/busca_pages.robot

*** Keywords ***
E pesquisa por produto "${produto}"
    SeleniumLibrary.Input Text    ${InputCampoBusca}     ${produto} 
    Click Button    ${ButtonPesquisa}
    Capture Page Screenshot
Então traz os resultados relacionado a pesquisa
    Wait Until Element Is Visible    ${ClassTituloBusca}
    Element Text Should Be    ${ClassTituloBusca}    "SHOES"
    Capture Page Screenshot