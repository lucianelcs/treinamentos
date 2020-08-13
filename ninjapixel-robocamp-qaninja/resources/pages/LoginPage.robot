*** Settings ***
Documentation       Este arquivo implementa funçõese elementos da pagina de login

*** Keywords ***
Login With
    [Arguments]     ${email}    ${pass}

    Input Text      id:emailId  ${email}
    Input Text      id:passId   ${pass}
    Click element   class:btn