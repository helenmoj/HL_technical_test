@FunctionTests

Feature: Javascript alert tests

  Background:
    Given I reach the internet page
    And I select javascript alerts


    # select js confirm and select ok
  Scenario: Confirm I can click and select ok for JS confirm
    Given I click the JS Confirm button
    When I select ok on the js alert
    Then the result displays 'You clicked: Ok'

  Scenario: Confirm I can click and select cancel for JS confirm
    Given I click the JS Confirm button
    When I select cancel on the js alert
    Then the result shows 'You clicked: Cancel'

  Scenario: Confirm I can click and select ok for JS alert
    Given I click the JS alert button
    When I select ok on the js alert
    Then the result is 'You successfuly clicked an alert'

  Scenario: Confirm I can click and input text then select ok for JS prompt
    Given I click the JS prompt button
    When I input text
    And I select ok on the js alert
    Then the result will be 'You entered: hello'

  Scenario: Confirm I can click and select ok for JS prompt
    Given I click the JS prompt button
    When I select ok on the js alert
    Then the result will show 'You entered:'

  Scenario: Confirm I can click and select cancel for JS prompt
    Given I click the JS prompt button
    When I select cancel on the js alert
    Then the result of cancel will be 'You entered: null'







  # select js confirm and select cancel
  # select other 2 buttons, both ok and cancel


    # Click for JS Confirm: click the buttons on the alert and check that a relevant

  #Optional: write tests for the other buttons on the page “Click for JS Alert” and “Click for  JS Prompt”.