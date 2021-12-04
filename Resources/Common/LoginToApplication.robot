*** Settings ***
Resource    ../../PO/LoginPagePO.robot
Resource    ../../PO/InventoryPagePO.robot
Variables    ../../TestInput/CommonURL1.py

*** Keywords ***
Login to application with valid credentails
    input text    ${usernameTextbox}    ${validLogInUserName}
    input text    ${passwordTextbox}    ${validLogInPassword}
    click button   ${loginButton}
    wait until element is visible    ${filterOption}