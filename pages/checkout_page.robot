*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${THANK_YOU_MESSAGE}    css:.complete-header    #CSS selector for the thank you message

*** Keywords ***
Fill Checkout Info
    [Arguments]    @{customer_info}
    # Fill in the checkout information
    ${first_name}=  Set variable    ${customer_info[0]}
    ${last_name}=   Set variable    ${customer_info[1]}
    ${postal_code}=   Set variable    ${customer_info[2]}
    Input Text    id:first-name    ${first_name}  # Input the first name into the corresponding field
    Input Text    id:last-name    ${last_name}   # Input the last name into the corresponding field
    Input Text    id:postal-code    ${postal_code} # Input the postal code into the corresponding field

Click Continue
    Click Button    id:continue    # Click the continue button to proceed to the next step

Click Finish
    Click Button    id:finish   # Click the finish button to complete the checkout process

Get Thank You Message
    ${thank_you_message}=    Get Text    ${THANK_YOU_MESSAGE}   # Get the text of the thank you message
    RETURN    ${thank_you_message}    # Return the thank you message