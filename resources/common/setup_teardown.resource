*** Settings ***
Resource    ${CURDIR}/../import.resource


*** Keywords ***
Open parabank website
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}

Close parabank website
    SeleniumLibrary.Close All Browsers
