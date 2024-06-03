*** Variables ***
# Define test data variables
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

@{STANDARD_CUSTOMER}    standard_user    secret_sauce
@{LOCKED_OUT_CUSTOMER}    locked_out_user    secret_sauce
@{PROBLEM_CUSTOMER}    problem_user    secret_sauce
@{PERFORMANCE_GLITCH_CUSTOMER}    performance_glitch_user    secret_sauce
@{INVALID_CUSTOMER}    invalid_user    wrong_password

@{PRODUCTS_SET_1}    add-to-cart-sauce-labs-backpack    add-to-cart-sauce-labs-bike-light    add-to-cart-sauce-labs-bolt-t-shirt    add-to-cart-sauce-labs-onesie
@{PRODUCTS_SET_2}    add-to-cart-sauce-labs-onesie    add-to-cart-sauce-labs-bolt-t-shirt

@{CUSTOMER_INFO}    If    Finland    123456    #Consist of First name, Last name, Postal code

@{PRODUCTS_PRICE_LOW_TO_HIGH}    Sauce Labs Onesie    Sauce Labs Bike Light    Sauce Labs Bolt T-Shirt    Test.allTheThings() T-Shirt (Red)    Sauce Labs Backpack   Sauce Labs Fleece Jacket