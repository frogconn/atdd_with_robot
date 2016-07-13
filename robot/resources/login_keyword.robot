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
