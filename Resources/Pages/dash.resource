*** Settings ***
Documentation    Keywords da página de dashboard

Library    Browser
Resource   login.resource

*** Keywords ***

Então o Login foi realizado com sucesso
    Get Text    //strong[contains(.,'Aquela figurinha incrível a um clique de distância.')]
Buscar figurinha
    [Arguments]    ${nome_da_figurinha}
    Fill Text    //input[contains(@type,'text')]    ${nome_da_figurinha}
    Click    //button[@type='submit'][contains(.,'Buscar')]
Selecionar figurinha
    [Arguments]    ${figurinha}
    Click    ${figurinha}
Falar com o usuario
    Click    //button[@type='button'][contains(.,'Entrar em contato')]

Então o contato foi feito com sucesso
    [Arguments]    ${nome_da_figurinha_}
    ${Menssagem_esperada}    Set Variable    //p[@class='_9vd5'][contains(.,'Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${nome_da_figurinha_}, bora negociar?')]
    Switch Page    NEW
    Get Text    ${Menssagem_esperada}