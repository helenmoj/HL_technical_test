@DynamicTests


Feature: Dynamic loading page tests

Background:
    Given I reach the internet page
    And I select dynamic loading


  @test1
    # test for example two
  Scenario: Confirm when clicking example two hello world appears after the loading bar disappears
    Given I click example two
    When I select the start button
    Then the loading bar disappears and 'Hello World!' is displayed

    # optional test for example one
  Scenario: Confirm when clicking example one hello world appears after the loading bar disappears
    Given I click example one
    When I select the start button
    Then the loading bar disappears and 'Hello World!' is displayed
