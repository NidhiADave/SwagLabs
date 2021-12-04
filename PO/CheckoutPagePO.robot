*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${checkoutButton}    id:checkout
${firstNameTextBox}    id:first-name
${lastNameTextBox}    id:last-name
${zipcodeTextBox}    id:postal-code
${continueButton}    id:continue
${itemName}    class:inventory_item_name
${finishButton}    id:finish
${confirmationText}    class:complete-header