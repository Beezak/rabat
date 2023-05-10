Feature: Mortgage Calculator
@CalculateApr
  Scenario:  Calculate Real APR Rates
    Given a user is in the mortgage calculator home page
    And user navigate to real Apr page
    When user clicks on Calculate button upon entering data
    |HomePrice|DownPayment|InterestRate|
    |200000   |15000      |3           |
    Then the real apr rate is "3.139%"