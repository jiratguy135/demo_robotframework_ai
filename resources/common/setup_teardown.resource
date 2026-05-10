*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}/../../data/variable.resource


*** Keywords ***
Open parabank website
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
