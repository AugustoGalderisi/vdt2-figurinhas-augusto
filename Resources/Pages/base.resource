*** Settings ***
Documentation    Keywords globais

Library    Browser
Resource    login.resource
Resource    dash.resource
# Aqui é utilizado o conceito de herança, o arquivo Base herda todas as carateristas dos arquivos dash e login.
# Os arquivos dash e  login foram criados visando utilizar o conceito de encapsulamento.

*** Keywords ***

Iniciar Sessão
    New Browser    chromium    false    slowMo=0:00:01
Finalizar Teste
    Take Screenshot
