Test Case 2

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Edge
${URL}  https://stage.dashboard.onelocal.com/admin/settings/integrations/connected_accounts
${NEW_ACCOUNT_TYPE}  Website
${VALID_ACCOUNT_USERNAME}  valid_username
${VALID_ACCOUNT_PASSWORD}  valid_password
${INVALID_ACCOUNT_USERNAME}  invalid_username
${INVALID_ACCOUNT_PASSWORD}  invalid_password

*** Test Cases ***
Add New Account Successfully
    Open Browser  ${URL}  ${BROWSER}
    Click Element  id=add-new-account-button
    Select From List By Label  id=account-type  ${NEW_ACCOUNT_TYPE}
    Input Text  id=account-username  ${VALID_ACCOUNT_USERNAME}
    Input Password  id=account-password  ${VALID_ACCOUNT_PASSWORD}
    Click Button  id=submit-button
    Page Should Contain Element  id=new-account-display
    Close Browser

Add New Account With Invalid Credentials
    Open Browser  ${URL}  ${BROWSER}
    Click Element  id=add-new-account-button
    Select From List By Label  id=account-type  ${NEW_ACCOUNT_TYPE}
    Input Text  id=account-username  ${INVALID_ACCOUNT_USERNAME}
    Input Password  id=account-password  ${INVALID_ACCOUNT_PASSWORD}
    Click Button  id=submit-button
    Page Should Contain Text  Invalid account credentials
    Close Browser


*** Keywords ***
Page Should Contain Text
    [Arguments]    ${arg1}
    # TODO: implement keyword "Page Should Contain Text".
    Fail    Not Implemented

