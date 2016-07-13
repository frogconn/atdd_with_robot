*** Settings ***
Library   Selenium2Library
Resource   resources/login_keyword.robot
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
