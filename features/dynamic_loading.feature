@DynamicTests
Feature: Dynamic loading page tests

Background:
    Given I reach the internet page
    And I select dynamic loading

  @dyn1
    # test for example two, check that a “Hello World” message appears after the loading  bar disappears.
  Scenario: Confirm when clicking example two hello world appears after the loading bar disappears
    Given I click example two
    And I see the text 'Example 2: Element rendered after the fact' is displayed
    And I select the start button
    When The loading bar has disappeared
    Then 'Hello World!' is displayed

    @dyn2
    # optional test for example one, check that a “Hello World” message appears after the loading  bar disappears.
    Scenario: Confirm when clicking example one hello world appears after the loading bar disappears
     Given I click example one
      And I see the text 'Example 1: Element on page that is hidden'
      And I select the start button
      When The loading bar has disappeared
      Then 'Hello World!' is displayed
