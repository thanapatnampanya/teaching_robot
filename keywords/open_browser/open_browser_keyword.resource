*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/domain.resource


*** Keywords ***
Open Browser Chrome to Login
    [Documentation]     Used to open Google Chrome
    Open Browser        ${LOGIN_PAGE}       chrome

Skip Tour
    [Documentation]     Closes the "Welcome" tour pop-up that covers the page on first visit
    Wait Until Element Is Visible       css:button[data-testid="tour-skip"]
    Click Button        css:button[data-testid="tour-skip"]
    Wait Until Element Is Not Visible       css:.tour-modal