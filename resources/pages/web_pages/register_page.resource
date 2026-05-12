*** Settings ***
Resource    ${CURDIR}/../../import.resource

*** Keywords ***
Input first name
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.first_name}    ${text}

Input last name
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.last_name}    ${text}

Input address
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.address_street}    ${text}

Input city
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.address_city}    ${text}

Input state
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.address_state}    ${text}

Input zipcode
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.address_zipcode}    ${text}

Input phone
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.phone_number}    ${text}

Input ssn
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.ssn}    ${text}

Input username
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.username}    ${text}

Input password
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.password}    ${text}

Input confirm password
    [Arguments]    ${text}
    common.Input when ready    ${register_locators.repeated_password}    ${text}

Click register button
    common.Click when ready    ${register_locators.register_button}
