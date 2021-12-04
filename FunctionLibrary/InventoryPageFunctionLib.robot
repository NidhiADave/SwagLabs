*** Settings ***
Library    RequestsLibrary
Resource    ../PO/InventoryPagePO.robot
Variables    ../TestInput/CommonURL1.py

*** Variables ***

*** Keywords ***
Verify logo is displayed
        element should be visible    ${appLogo}
Verify that shoopingcart icon is displayed
        element should be visible    ${ShoopingcardtIconOnInventoryPage}
Verify that products are displayed
        should not be empty    @{inventoryList}
Verify that for each product add to cart button is displayed
        ${productNumber}    set variable    0
        ${increment_counter}    set variable    1
        FOR    ${item}    IN    @{inventoryList}
            ${productNumberCount}=   Evaluate    ${productNumber} + ${increment_counter}
            element should be visible    ${addToCart}
            log many    "add to cart button is not displayed for product" +  ${productNumberCount}
        END
Add Sauce Labs Backpack into cart
        click element    ${addToSelectedProductButton}
Click on shopping cart icon
        click link    ${ShoopingcardtIconOnInventoryPage}
