*** Settings ***
Documentation       Cadastro de produtos
...         Sendo um administrador de catálogo
...         Quero cadastrar produtos
...         Para que eu possa disponibiliza-los na loja virtual

Resource    ../resources/actions.robot

Test Setup      Login Session
Test Teardown   Close Session

*** Test Cases ***
Disponibilizar produto
    Dado que eu tenho um novo produto     dk.json
    Quando eu faço o cadastro desse produto 
    Então devo ver este item no catálogo

Produto duplicado
    E que eu tenho um produto duplicado
    Quando eu faço o cadastro dessse produto
    Então devo ver a mensagem de alerta     Oops - Este produto já foi cadastrado!


