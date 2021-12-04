*** Settings ***
Library    SeleniumLibrary
Variables    ../../TestInput/CommonURL1.py

*** Variables ***
${Browser}    chrome

*** Keywords ***
#This steps start the broswer instance with given URl,URL comes from property files
Launch broswer and naviagte to url
    Open Browser    ${projectLandingPageURL}    ${Browser}
    Maximize Browser Window
    sleep    3s

Close all the broswer instance
    Close All Browsers
