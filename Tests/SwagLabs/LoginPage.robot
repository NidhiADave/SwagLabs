*** Settings ***
Resource    ../../Resources/Common/TestSetUp.robot
Resource    ../../PO/LoginPagePO.robot
Test Setup    Launch broswer and naviagte to url
Test Teardown    Close all the broswer instance
Test Template    Verify login with invalid input

*** Test Cases ***
Verify login fails - empty inputs   ${EMPTY}    ${Empty}    Epic sadface: Username is required
Verify login fails - Inalid username    abc    secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify login fails - invalid password    standard_user    abc    Epic sadface: Username and password do not match any user in this service
Verify login fails - Locked user    locked_out_user  secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify login fails - Empty Password    standard_user    ${EMPTY}    Epic sadface: Password is required

*** Keywords ***
Verify login with invalid input
    [Arguments]    ${username}    ${password}    ${errorMessage}
    input text    ${usernameTextbox}    ${username}
    input text    ${passwordTextbox}    ${password}
    click button   ${loginButton}
    sleep    3s
    element should contain    ${errorButton}    ${errorMessage}

