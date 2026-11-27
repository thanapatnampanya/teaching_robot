*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Login
    [Documentation]     Used to login
    [Arguments]     ${email}        ${password}
    Input Text      css:input[data-testid="login-email"]        ${email}
    Input Password      css:input[data-testid="login-password"]     ${password}
    Click Button        css:button[data-testid="login-submit"]