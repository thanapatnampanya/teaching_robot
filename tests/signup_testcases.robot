*** Settings ***
Library     SeleniumLibrary
Resource    ../keywords/login/login_keyword.resource
Resource    ../keywords/open_browser/open_browser_keyword.resource
Resource    ../keywords/signup/signup_keywords.resource
Variables   ../variables/login/signup_testdata.yaml


*** Test Cases ***
TC_01 Verify that user is able to sigup
    Open Browser Chrome to Login
    Skip Tour
    Sign Up     ${TC01.name}        ${TC01.email}       ${TC01.password}        ${TC01.country}
    Login       ${TC01.email}       ${TC01.password}