*** Settings ***
Documentation       Este arquivo implementa abertura e fechamento do navegador

***Variables***
${base_url}     http://pixel-web:3000

*** Keywords ***
Open Session
    Open Chrome
    Set Selenium Implicit Wait  5
    Set Window Size     1280        800

Close Session
    Capture Page Screenshot
    Close Browser
    
Login Session
    Open Session
    Login With  lucianephn@yahoo.com.br     master@1234
   
Open Chrome
    Open Browser    ${base_url}/login    chrome   options=add_experimental_option('excludeSwitches', ['enable-logging'])