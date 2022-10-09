*** Settings ***
Documentation        Validação do Login.

Resource    ../Resources/Pages/base.resource

Test Setup       Iniciar Sessão
Test Teardown    Finalizar Teste

*** Test Cases ***
Login com sucesso
    [Tags]    LG01
    Ir para pagina de login
    Realizar Login    papito@gmail.com    vaibrasil
    Então o Login foi realizado com sucesso

Credenciais incorretas (Login)
    [Tags]    LG02
    Ir para pagina de login
    Realizar Login    eunaosei@teste.com    vaibrasil
    Get Text    (//div[contains(.,'Credenciais inválidas, tente novamente!')])[6]

Credenciais incorretas (Login) COM TOSTER
    [Tags]    LG03
    Ir para pagina de login
    Realizar Login    eunaosei@teste.com    vaibrasil
    Wait For Elements State    (//div[contains(.,'Credenciais inválidas, tente novamente!')])[6]    visible    1    #dessa forma ele vai esperar esse elemento está visivel para validar o step

Credenciais incorretas (Senha)
    [Tags]    LG04
    Ir para pagina de login
    Realizar Login    papito@gmail.com    123
    Get Text    (//div[contains(.,'Credenciais inválidas, tente novamente!')])[6]

Credenciais incorretas (Senha) COM TOSTER
    [Tags]    LG05
    Ir para pagina de login
    Realizar Login    papito@gmail.com    123
    Wait For Elements State    (//div[contains(.,'Credenciais inválidas, tente novamente!')])[6]    visible    1

#Email no formato incorreto
    #[Tags]    LG04
    #Realizar Login    123    vaibrasil
    #Get Text    (//div[contains(.,'Credenciais inválidas, tente novamente!')])[6]