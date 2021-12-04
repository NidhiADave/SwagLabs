*** Settings ***
Library    SeleniumLibrary
Resource    ../PO/CheckoutPagePO.robot
Variables    ../TestInput/CommonURL1.py

*** Keywords ***
Click on checkout button
        click element    ${checkoutButton}

Enter details for checkout
        input text    ${firstNameTextBox}    ${firstName}
        input text    ${lastNameTextBox}    ${lastName}
        input text    ${zipcodeTextBox}    ${zipcode}

Verify that enterdetails are correct
       ${enteredFirstName} =    get element attribute    ${firstNameTextBox}    attribute=value
       log    ${enteredFirstName}
       should be equal as strings     ${enteredFirstName}    ${firstName}
       ${enteredLastName} =    get element attribute    ${lastNameTextBox}    attribute=value
       should be equal as strings    ${enteredLastName}    ${lastName}
       ${enteredZipcode} =    get element attribute    ${zipcodeTextBox}    attribute=value
       should be equal as strings    ${enteredZipcode}    ${zipcode}


Click on continue button
    click element    ${continueButton}

Verify that selected item is displayed
     ${itemnameText} =    get text    ${itemName}
     should be equal as strings    ${itemselected}    ${itemnameText}

Click on finish button
      click element    ${finishButton}

Verify order confirmation email
       should be equal as strings    ${confirmationText}    ${confirmationtext}