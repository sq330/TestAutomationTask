# Swag Labs Automated Testing with Robot Framework

## Project Overview

This project uses Robot Framework and SeleniumLibrary to automate the testing of the Swag Labs website ([https://www.saucedemo.com](https://www.saucedemo.com)). The project includes the following three test scenarios:

1. **Customer Purchases Products**: Tests that a user can add multiple products to the shopping cart and successfully complete a purchase.
2. **Customer Sorts Product Items**: Tests that a user can sort products and verifies the sorting results.
3. **User Is Locked Out**: Tests that a locked-out user is unable to log in and receives an appropriate error message.

## Installation Steps

### Prerequisites

- Python 3.6 or higher
- pip

### Installing Dependencies

1. Install Robot Framework:
    ```sh
    pip install robotframework
    ```

2. Install SeleniumLibrary:
    ```sh
    pip install robotframework-seleniumlibrary
    ```

3. **[Optional]** Install WebDriver (e.g., ChromeDriver):
    - Download ChromeDriver (for Chrome versions 114 or lower)
    - Add ChromeDriver to your system PATH, or note its path for later use.

### File Structure

```
├── README.md
├── data
    └── test_data.robot
├── pages
    └── login_page.robot
    └── inventory_page.robot
    └── cart_page.robot
    └── checkout_page.robot
├── tests
    └── swag_labs_tests.robot
```
- `data/test_data.robot`: Contains the test data.
- `pages/login_page.robot`: Contains keywords for the login page.
- `pages/inventory_page.robot`: Contains keywords for the product page.
- `pages/cart_page.robot`: Contains keywords for the shopping cart page.
- `pages/checkout_page.robot`: Contains keywords for the checkout page.
- `tests/swag_labs_tests.robot`: Contains the test cases.


## Running Tests

1. Open a terminal or command prompt.

2. Navigate to the directory containing the test case file:
    ```sh
    cd /path/to/project/tests
    ```

3. Run all test cases:
    ```sh
    robot swag_labs_tests.robot
    ```


