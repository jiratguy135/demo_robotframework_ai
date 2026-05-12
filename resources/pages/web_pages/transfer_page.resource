*** Settings ***
Resource    ${CURDIR}/../../import.resource

*** Keywords ***
Go to transfer page
    SeleniumLibrary.Click Element    xpath=//a[text()='Transfer Funds']
    SeleniumLibrary.Wait Until Page Contains    Transfer Funds    timeout=10s

Input transfer amount
    [Arguments]    ${amount}
    common.Input when ready    ${transfer_locators.amount_input}    ${amount}

Select from account
    [Arguments]    ${account_id}
    SeleniumLibrary.Wait Until Element Is Visible    ${transfer_locators.from_account_select}
    SeleniumLibrary.Select From List By Value    ${transfer_locators.from_account_select}    ${account_id}

Select to account
    [Arguments]    ${account_id}
    SeleniumLibrary.Wait Until Element Is Visible    ${transfer_locators.to_account_select}
    SeleniumLibrary.Select From List By Value    ${transfer_locators.to_account_select}    ${account_id}

Click transfer button
    common.Click when ready    ${transfer_locators.transfer_button}

Verify transfer success message
    SeleniumLibrary.Wait Until Element Is Visible    ${transfer_locators.transfer_complete_message}    timeout=10s
    SeleniumLibrary.Page Should Contain    Transfer Complete!
