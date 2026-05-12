*** Settings ***
Resource    ${CURDIR}/../import.resource

*** Keywords ***
Click when ready
    [Arguments]    ${locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMEOUT}
    SeleniumLibrary.Click Button    ${locator}

Input when ready
    [Arguments]    ${locator}    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMEOUT}
    SeleniumLibrary.Input Text    ${locator}    ${text}