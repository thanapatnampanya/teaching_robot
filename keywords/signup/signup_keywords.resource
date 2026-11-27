*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/domain.resource


*** Keywords ***
Sign Up
    [Arguments]     ${name}     ${email}        ${password}     ${country}
    Click Link        css:a[data-testid="goto-signup"]
    Wait Until Element Is Visible       css:button[data-testid="signup-submit"]
    Input Text      css:input[data-testid="signup-name"]        ${name}
    Input Text      css:input[data-testid="signup-email"]        ${email}
    Input Password      css:input[data-testid="signup-password"]        ${password}    
    Input Password      css:input[data-testid="signup-confirm"]     ${password} 
    Select From List By Label       css:select[data-testid="signup-country"]        ${country}    
    Select Radio Button     gender      Female
    Select Checkbox        css:input[data-testid="signup-agree"]
    Click Button        css:button[data-testid="signup-submit"]