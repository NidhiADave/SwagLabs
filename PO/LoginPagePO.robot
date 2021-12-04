*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${usernameTextbox}    id:user-name
${passwordTextbox}    id:password
${loginButton}    id:login-button
${errorButton}    xpath://*[@id="login_button_container"]//h3

*** Keywords ***

