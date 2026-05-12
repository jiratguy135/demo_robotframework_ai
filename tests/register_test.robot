*** Settings ***
Resource         ${CURDIR}/../resources/import.resource
Test Setup       setup_teardown.Open parabank website
Test Teardown    setup_teardown.Close parabank website

*** Test Cases ***
TC01 - Register Success
    [Tags]    regression    positive
    SeleniumLibrary.Go To    https://parabank.parasoft.com/parabank/register.htm
    register_page.Input first name    ${Register.firstname}
    register_page.Input last name    ${Register.lastname}
    register_page.Input address    ${Register.address}
    register_page.Input city    ${Register.city}
    register_page.Input state    ${Register.state}
    register_page.Input zipcode    ${Register.zipcode}
    register_page.Input phone    ${Register.phonenumber}
    register_page.Input ssn    ${Register.ssn}
    register_page.Input username    ${Register.username}
    register_page.Input password    ${Register.password}
    register_page.Input confirm password    ${Register.confirmpassword}
    
    register_page.Click register button
    SeleniumLibrary.Wait Until Page Contains    Your account was created successfully. You are now logged in.    timeout=10s
