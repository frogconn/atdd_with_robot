*** Settings ***
Library   Selenium2Library
Test Teardown    Close Browser
*** Variables ***
${login_url}    http://localhost:7272/html/index.html
*** Testcases ***
Valid username and password
    Goto login page
    Input username demo
    Input password mode
    Submit
    Display welcome page
    Logout
    should return login page    
*** Keywords ***
Goto login page
    Open Browser    ${login_url}
Input username demo
    Input Text    username_field    demo
Input password mode
    Input Text    password_field    mode
Submit
    Submit Form    login_form
Display welcome page
    Wait Until Page Contains    Login succeeded. Now you can
Logout
    Page Should Contain Link    logout
    Click Link    link=logout
should return login page
    Wait Until Page Contains    Login Page
