*** Settings ***
Library    SeleniumLibrary
Variables    ../../Resources/TestInput/CommonURL1.py

*** Variables ***
#${projectLandingPageURL}    "https://www.saucedemo.com/"


*** Keywords ***
Verify that current url is expected
    get title    should be equal as strings    "Swag Labs"

