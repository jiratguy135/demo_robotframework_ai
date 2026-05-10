*** Settings ***
Resource         ${CURDIR}/../resources/import.resource
Test Setup       setup_teardown.Open parabank website
Test Teardown    setup_teardown.Close parabank website

*** Test Cases ***
TC01 - Login Success with Valid Credentials
    [Tags]    regression    positive
    login_page.Login To Parabank    john    demo
    SeleniumLibrary.Wait Until Page Contains    Accounts Overview    timeout=5s

TC02 - Login Failed with Invalid Username
    [Tags]    regression    negative
    login_page.Login To Parabank    invalid_user    demo
    login_page.Verify Login Error Message    The username and password could not be verified.

TC03 - Login Failed with Invalid Password
    [Tags]    regression    negative
    login_page.Login To Parabank    john    invalid_pass
    login_page.Verify Login Error Message    The username and password could not be verified.

TC04 - Login Failed with Empty Username
    [Tags]    regression    negative
    login_page.Login To Parabank    ${EMPTY}    demo
    login_page.Verify Login Error Message    Please enter a username and password.

TC05 - Login Failed with Empty Password
    [Tags]    regression    negative
    login_page.Login To Parabank    john    ${EMPTY}
    login_page.Verify Login Error Message    Please enter a username and password.ๅ
