*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE_URL}    https://www.saucedemo.com/     # URL of the login page
${USERNAME_FIELD}    id:user-name   # Locator for the username input field
${PASSWORD_FIELD}    id:password    # Locator for the password input field
${LOGIN_BUTTON}    id:login-button  # Locator for the login button
${ERROR_MESSAGE}    css:[data-test='error']     # Locator for the error message element

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}  # Input username into the username field
    Input Text    ${PASSWORD_FIELD}    ${password}  # Input password into the password field
    Click Button    ${LOGIN_BUTTON}     # Click the login button to submit the credentials

Get Error Message
    ${error_message}=    Get Text    ${ERROR_MESSAGE}   # Get the text of the error message element
    RETURN    ${error_message}  # Return the error message
