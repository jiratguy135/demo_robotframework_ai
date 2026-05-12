*** Settings ***
Resource         ${CURDIR}/../resources/import.resource
Test Setup       setup_teardown.Open parabank website
Test Teardown    setup_teardown.Close parabank website

*** Test Cases ***
TC01 - Transfer Funds Successfully
    [Tags]    regression    positive
    
    # Pre-condition: User must be logged in
    login_page.Login To Parabank    ${Login.username}    ${Login.password}
    SeleniumLibrary.Wait Until Page Contains    Accounts Overview    timeout=10s
    
    # Step 1: Navigate to Transfer Funds page
    transfer_page.Go to transfer page
    
    # Wait for account list to load via API
    BuiltIn.Sleep    2s
    
    # Step 2: Input amount and submit
    transfer_page.Input transfer amount    100
    transfer_page.Click transfer button
    
    # Step 3: Verify success
    transfer_page.Verify transfer success message
