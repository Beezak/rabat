@login_test
Feature: Test login functionalities

  Background:
    Given a user is on th e login page

  @positive_test
  Scenario: Check login is successful with valid credentials
    When user enters username "Beezak" and password "12345"
    And click on the login button
    Then user is navigated to home page

  @dataDriven_test
  Scenario Outline: Check login is successful with valid credentials for multiple users
    When user enters username "<username>" and password "<password>"
    And click on the login button
    Then user is navigated to home page
    Examples:
    | username | password |
    |Rifat     | 12345    |
    |Robert    | 12345    |
    |Edward    | 12345    |

  Scenario: Check login is successful using data table
    When user click on log in button upon entering credentials
    |username|password|
    |Beezak  |12345   |
    Then user is navigated to home page

  @negative_test
  Scenario: Check login is unsuccessful with invalid credentials
    When user enters username "Rfat" and password "23456"
    And click on the login button
    Then user is failed to login