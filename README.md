**Automated Login using Selenium with Robot Framework**

## Overview
This project demonstrates how to automate the login process using Selenium with Robot Framework. The Robot Framework is a generic open-source automation framework for acceptance testing, acceptance test-driven development (ATDD), and robotic process automation (RPA). Selenium is a powerful tool for automating web browsers.

## Prerequisites
- Python installed on your system.
- Pip package manager installed.
- Edge or Firefox browser installed.
- Robot Framework and Selenium libraries installed. You can install them via pip:
  ```
  pip install robotframework
  pip install robotframework-seleniumlibrary
  ```

## How to Execute
1. Clone this repository to your local machine:
   ```
   git clone <repository_url>
   ```
2. Navigate to the project directory:
   ```
   cd automated-login-selenium-robot
   ```
3. Open the `login.robot` file in a text editor.
4. Update the login credentials (username and password) in the `Variables` section.
5. Run the test using the Robot Framework command:
   ```
   robot login.robot
   ```

## File Structure
- **login.robot**: Contains the test case for automated login.
- **resources**: Directory containing reusable keywords and variables.
  - **keywords.robot**: Defines reusable keywords.
  - **variables.robot**: Contains variables like URLs and login credentials.

## Test Execution Flow
1. Open the browser.
2. Navigate to the login page.
3. Enter the username and password.
4. Click the login button.
5. Verify if the login was successful.

## Contact
For any questions or suggestions, feel free to reach out via [email](mailto:santideis@aim.com)
