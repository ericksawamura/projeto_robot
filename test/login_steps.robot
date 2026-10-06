*** Settings ***
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser    browser=chrome


*** Test Cases ***
Successful Login
    I navigate to the login page
    I input correct credentials
    I click on the login button
    I am able view the home page

Unsuccessful Login - No credentials
    I navigate to the login page
    I input no credentials
    I click on the login button
    I am able to see the expected error message for no credentials

Unsuccessful Login - No Username
    I navigate to the login page
    I input only the password
    I click on the login button
    I am able to see the expected error message for no username

Unsuccessful Login - No Password
    I navigate to the login page
    I input only the username
    I click on the login button
    I am able to see the expected error message for no password

Unsuccessful Login - Wrong Credentials
    I navigate to the login page
    I input wrong credentials
    I click on the login button
    I am able to see the expected error message for wrong credentials