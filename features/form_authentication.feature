@AuthTests
Feature: Form authentication tests

  Background:
    Given I reach the internet page
    And I select the link form authentication

@auth1
    # successful login
  Scenario: Confirm I can successfully log into the secure area with details provided
    Given I enter correct details
    When I select the login button
    Then the user successfully logs into the account

  @auth2
  # unsuccessful login - error message
  Scenario: Confirm when I attempt to login in with incorrect details it will display error messages
    Given I enter incorrect details
    When I select the login button
    Then the user will see an error message




