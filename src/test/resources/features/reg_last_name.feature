@reglname

Feature: Registration Scenarios

  Background:
    Given I go to "registration" page
    When I type "J" to fName field
    And I type "abc123@test.com" to email field
    And I type "ABC" to group field
    When I type "12345" to password field
    And I type "12345" to confirm password field

  @reglname
  Scenario:
    When I type "Smith" to lName field