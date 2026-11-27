*** Settings ***
Library     SeleniumLibrary
Resource    ../keywords/login/login_keyword.resource
Resource    ../keywords/open_browser/open_browser_keyword.resource
Variables   ../variables/login/test_account.yaml


*** Test Cases ***
TC_01 Login with Valid Credentials
    Open Browser Chrome to Login       
    Skip Tour
    Login       ${TC_01.email}      ${TC_01.password}

TC_02 Login with Invalid Email
    Open Browser Chrome to Login       
    Skip Tour
    Login       ${TC_02.email}      ${TC_02.password}

TC_02 Login with Invalid Password
    Open Browser Chrome to Login       
    Skip Tour
    Login       ${TC_03.email}      ${TC_03.password}