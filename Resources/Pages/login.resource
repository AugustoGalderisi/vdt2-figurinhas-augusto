*** Settings ***
Documentation    Keywords da página de login

Library    Browser

*** Variables ***
${URL}    https://trade-sticker-dev.vercel.app/

*** Keywords ***

Ir para pagina de login
    New Page    ${URL}  
Dado que preencho os campos
    [Arguments]    ${Login}    ${Senha}

    Fill Text    //input[contains(@name,'email')]       ${Login}
    Fill Text    //input[contains(@name,'password')]    ${Senha}
E clico no botão "Entrar"
    Click    //button[@class='button'][contains(.,'Entrar')]
E marco a opção "Lembrar meus dados"
    Check Checkbox    //input[contains(@name,'remember')]

Realizar Login
    [Arguments]    ${Login}    ${Senha}

    Dado que preencho os campos    ${Login}    ${Senha}
    E clico no botão "Entrar"
    #E marco a opção "Lembrar meus dados"