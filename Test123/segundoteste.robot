*** Settings ***
Documentation        Validação de trade.

Resource    ../Resources/Pages/base.resource

Test Setup       Iniciar Sessão
Test Teardown    Finalizar Teste

*** Test Cases ***
Negociando uma figurinha
    [Tags]    LG01
    Ir para pagina de login
    Realizar Login    papito@gmail.com    vaibrasil
    Então o Login foi realizado com sucesso
    Buscar figurinha    legend
    Selecionar figurinha    //img[contains(@alt,'Neymar Jr')]
    Falar com o usuario
    Então o contato foi feito com sucesso    Neymar Jr
    Sleep    2