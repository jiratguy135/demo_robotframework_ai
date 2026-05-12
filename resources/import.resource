*** Settings ***
Library    SeleniumLibrary


Resource    ${CURDIR}/../data/variable.resource
Resource    ${CURDIR}/common/setup_teardown.resource
Resource    ${CURDIR}/common/common.resource

# Locators & Pages
Variables   ${CURDIR}/locators/web_locators/login_locator.yaml
Variables   ${CURDIR}/locators/web_locators/register_locator.yaml
Variables   ${CURDIR}/locators/web_locators/transfer_locator.yaml
Variables    ${CURDIR}/../data/user.yaml

Resource    ${CURDIR}/pages/web_pages/login_page.resource
Resource    ${CURDIR}/pages/web_pages/register_page.resource
Resource    ${CURDIR}/pages/web_pages/transfer_page.resource