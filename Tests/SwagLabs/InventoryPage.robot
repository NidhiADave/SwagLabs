*** Settings ***
Resource    ../../Resources/Common/TestSetUp.robot
Resource    ../../Resources/Common/LoginToApplication.robot
Resource    ../../FunctionLibrary/InventoryPageFunctionLib.robot
Resource    ../../FunctionLibrary/CheckoutPageFunctionLib.robot

*** Test Cases ***
[Test Setup]  run keywords    Launch broswer and naviagte to url    Login to application with valid credentails
#Testcase 1
Verify Inventory Page is displayed with details
    InventoryPageFunctionLib.Verify logo is displayed
    InventoryPageFunctionLib.Verify that shoopingcart icon is displayed
    InventoryPageFunctionLib.Verify that products are displayed

#Testcase 2
Verify that for each product add to cart button is displayed
    InventoryPageFunctionLib.Verify that for each product add to cart button is displayed

#Testcase 3
Add Sauce Labs Backpack into the cart and checkout
    InventoryPageFunctionLib.Add Sauce Labs Backpack into cart
    InventoryPageFunctionLib.Click on shopping cart icon

#Testcase 4
Checkout the item
    Click on checkout button
    Enter details for checkout
    Verify that enterdetails are correct
    Click on continue button
    Verify that selected item is displayed
    Click on finish button
    Verify order confirmation email

[teardown]    Close all the broswer instance

