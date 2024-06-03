*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library    BuiltIn

Resource    ../pages/login_page.robot
Resource    ../pages/inventory_page.robot
Resource    ../pages/cart_page.robot
Resource    ../pages/checkout_page.robot
Resource    ../data/test_data.robot

*** Variables ***
${BROWSER}    Chrome   # Define the browser to be used for testing
${URL}    https://www.saucedemo.com/   # Define the URL of the application
${CHROMEDRIVER_PATH}    /path/to/chromedriver   # Define the path to the ChromeDriver executable

*** Test Cases ***
Customer Purchases Products
    # Set up the browser and login using standard customer credentials
    Setup Browser And Login    ${STANDARD_CUSTOMER}
    # Add products to the shopping cart
    Add Products To Cart    @{PRODUCTS_SET_1}
    Open Cart
    Proceed To Checkout
    Fill Checkout Info    @{CUSTOMER_INFO}
    Click Continue
    Click Finish
    # Get the thank you message
    ${thank_you_message}=    Get Thank You Message
    # Verify that the thank you message is displayed
    Should Be Equal    ${thank_you_message}    Thank you for your order!
    [Teardown]    Close Browser

Customer Sorts Product Items
    Setup Browser And Login    ${STANDARD_CUSTOMER}
    # Sort the products by price
    Sort Products    Price (low to high)
    # Get the list of sorted products
    ${sorted_product_list}=    Get Sorted Product List
    # Verify that the products are ordered according to the chosen sort method
    Lists Should Be Equal    ${sorted_product_list}    ${PRODUCTS_PRICE_LOW_TO_HIGH}
    [Teardown]    Close Browser

User Is Locked Out
    Setup Browser And Login    ${LOCKED_OUT_CUSTOMER}
    # Get the error message displayed
    ${error_message}=    Get Error Message
    # Verify that the error message indicates the user is locked out
    Should Contain    ${error_message}    Sorry, this user has been locked out.
    [Teardown]    Close Browser

*** Keywords ***
Setup Browser And Login
    [Arguments]    ${user_credentials}
    Open Browser    ${URL}    ${BROWSER}
    # Set global variables for username and password
    ${username}=    Set variable    ${user_credentials[0]}
    ${password}=    Set variable    ${user_credentials[1]}
    Login   ${username}     ${password}