@JSTests
Feature: Javascript alert tests

  Background:
    Given I reach the internet page
    And I select javascript alerts

    # select js confirm and select ok
  @js1
  Scenario: Confirm I can click and select ok for JS confirm
    Given I click the JS Confirm button
    When I select ok on the js alert
    Then the result is 'You clicked: Ok'


     # select js confirm and select cancel
  @js2
  Scenario: Confirm I can click and select cancel for JS confirm
    Given I click the JS Confirm button
    When I select cancel on the js alert
    Then the result is 'You clicked: Cancel'

    # select js alert and select ok
  @js3
  Scenario: Confirm I can click and select ok for JS alert
    Given I click the JS alert button
    When I select ok on the js alert
    Then the result is 'You successfuly clicked an alert'

    # select js prompt, input text & select ok
  @js4
  Scenario: Confirm I can click and input text then select ok for JS prompt
    Given I click the JS prompt button
    When I input text
    And I select ok on the js alert
    Then the result is 'You entered: hello'

    # select js prompt & select ok
  @js5
  Scenario: Confirm I can click and select ok for JS prompt
    Given I click the JS prompt button
    When I select ok on the js alert
    Then the result is 'You entered:'

    # select js prompt & select cancel
  @js6
  Scenario: Confirm I can click and select cancel for JS prompt
    Given I click the JS prompt button
    When I select cancel on the js alert
    Then the result is 'You entered: null'