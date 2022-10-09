*** Settings ***
Documentation        Como pegar o HTML de uma página para analisar depois

Resource    Base.robot

#Suite Setup      Iniciar Sessão
Test Teardown    Finalizar Teste

*** Test Cases ***
Credenciais incorretas (Login)
    Iniciar Sessão
    Realizar Login    eunaosei@teste.com    vaibrasil
    Finalizar Teste
    ${TEMP}    Get Page Source
    Log        ${TEMP}


    #Depois de executado, pegar o HTML code no arquivo log (results), formatar no site https://codebeautify.org/htmlviewer e colar no arquivo "Temp.html", la podemos analisar o código com mais calma.