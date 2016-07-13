*** Settings ***
Library   Selenium2Library
Suite Setup    Goto login page
Suite Teardown    Close Browser
Test Teardown    Back to login page
Test Template    Login fail template
*** Variables ***
${LOGIN_URL}    http://localhost:7272/html/index.html
*** Testcases ***
Empty username    ${EMPTY}    mode
Empty password    demo    ${EMPTY}
Empty username and password    ${EMPTY}    ${EMPTY}
*** Keywords ***
Login fail template
    # Goto login page
    [Arguments]    ${user}    ${password}
    Input username   ${user}
    Input password   ${password}
    Submit
    Display error page

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
