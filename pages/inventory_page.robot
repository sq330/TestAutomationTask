*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SORT_DROPDOWN}    css:.product_sort_container    # CSS selector for the sort dropdown element
${FIRST_PRODUCT_NAME}    css:.inventory_item_name   # CSS selector for the first product name element


*** Keywords ***
Sort Products
    [Arguments]    ${sort_option}
    Select From List by Label    ${SORT_DROPDOWN}    ${sort_option}    # Selects the specified option from the sort dropdown

Open Cart
    Click Link    class:shopping_cart_link      # Click the cart link to open the cart

Get Sorted Product List
    # Get the list of product names displayed on the page after sorting
    @{sorted_product_list}=    Get WebElements    css:.inventory_item_name
    ${sorted_product_names}=    Create List
    FOR    ${product}    IN    @{sorted_product_list}
        ${product_name}=    Get Text    ${product}
        Append To List    ${sorted_product_names}    ${product_name}
    END
    RETURN    ${sorted_product_names}

Add Products To Cart
    [Arguments]    @{product_ids}
    # Loop through the product IDs and add each product to the cart
    FOR    ${product_id}    IN    @{product_ids}
        Click Button    id:${product_id}
    END