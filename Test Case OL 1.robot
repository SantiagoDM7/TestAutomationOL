Test Case 1

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Edge
${URL}  https://stage.dashboard.onelocal.com/admin
${VALID_USERNAME}  user
${VALID_PASSWORD}  qatask
${INVALID_USERNAME}  invalid_user
${INVALID_PASSWORD}  invalid_password

*** Test Cases ***
Login With Valid Credentials
    Open Browser  ${URL}  ${BROWSER}
    Input Text  id=Username  ${VALID_USERNAME}
    Input Password  id=Password  ${VALID_PASSWORD}
    Click Button  id=login-button
    Page Should Contain Element  id=dashboard-page
    Page Should Contain Text  ${VALID_USERNAME}
    Close Browser

Login With Invalid Credentials
    Open Browser  ${URL}  ${BROWSER}
    Input Text  id=username  ${INVALID_USERNAME}
    Input Password  id=password  ${INVALID_PASSWORD}
    Click Button  id=login-button
    Page Should Contain Text  Invalid username or password
    Close Browser


*** Keywords ***
Page Should Contain Text
    [Arguments]    ${arg1}
    # TODO: implement keyword "Page Should Contain Text".
    Fail    Not Implemented

