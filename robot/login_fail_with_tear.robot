*** Settings ***
Library   Selenium2Library
Suite Setup    Goto login page
Suite Teardown    Close Browser
Test Teardown    Back to login page
*** Variables ***
${LOGIN_URL}    http://localhost:7272/html/index.html
*** Testcases ***
invalid username and password
    Input username   demo1
    Input password   mode1
    Submit
    Display error page
invalid username
    # Goto login page
    Input username   demo1
    Input password   mode
    Submit
    Display error page
invalid username is empty
    # Goto login page
    Input username   ${EMPTY}
    Input password   mode
    Submit
    Display error page
*** Keywords ***
Goto login page
    Open Browser    ${LOGIN_URL}
Input username
    [Arguments]    ${user}
    Input Text    username_field    ${user}
Input password
    [Arguments]    ${password}
    Input Text    password_field    ${password}
Submit
    Submit Form    login_form
Display error page
    Wait Until Page Contains    Error Page
Back to login page
    Go Back
