*** Settings ***
Library    SeleniumLibrary


Resource    ${CURDIR}/../data/variable.resource
Resource    ${CURDIR}/common/setup_teardown.resource

# Locators & Pages
Variables   ${CURDIR}/locators/web_locators/login_locator.yaml
Resource    ${CURDIR}/pages/web_pages/login_page.resource