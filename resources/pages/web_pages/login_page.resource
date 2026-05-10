*** Settings ***
Resource    ${CURDIR}/../../import.resource

*** Keywords ***
Input Login Credentials
    [Arguments]    ${username}    ${password}
    BuiltIn.Run Keyword If    '${username}' != '${EMPTY}'    SeleniumLibrary.Input Text    ${txt_username}    ${username}
    BuiltIn.Run Keyword If    '${password}' != '${EMPTY}'    SeleniumLibrary.Input Text    ${txt_password}    ${password}

Click Login Button
    SeleniumLibrary.Click Element    ${btn_login}

Login To Parabank
    [Documentation]    Common keyword สำหรับการ Login ครบจบในคำสั่งเดียว
    [Arguments]    ${username}    ${password}
    login_page.Input Login Credentials    ${username}    ${password}
    login_page.Click Login Button

Verify Login Error Message
    [Arguments]    ${expected_error_message}
    SeleniumLibrary.Wait Until Page Contains    ${expected_error_message}    timeout=5s
