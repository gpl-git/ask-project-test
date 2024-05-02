@login
Feature: ASK LogIn Scenarios

  Background:
    Given I go to "login" page


  @login1
  Scenario: Log in "Happy path"
    When I type "ask_instr@aol.com" to email field
    And I type "ABC123" to password field
    When I click button "Sign In"
    And I wait for 1 seconds
    Then I should see the page title as "Assessment Control @ Portnov"

  @login2
  Scenario: Log in with incorrect password
    When I type "ask_instr@aol.com" to email field
    And I type "aaa123" to password field
    When I click button "Sign In"
    And I wait for 1 seconds
    Then password error message "Authentication failed. User not found or password does not match" should be displayed

  @login3
   Scenario: Log in with incorrect email
    When I type "student@email.com" to email field
    And I type "ABC123" to password field
    When I click button "Sign In"
    And I wait for 1 seconds
    Then password error message "Authentication failed. User not found or password does not match" should be displayed

    @login4
    Scenario: Leading and trailing spaces in Email field are not allowed
      When I type " ask_instr@aol.com " to email field
      And I type "ABC123" to password field
      When I click button "Sign In"
      And I wait for 1 seconds
      Then password error message "Should be a valid email address" should be displayed

   @login5
   Scenario: Leading and trailing spaces in Password field are not allowed
    When I type "ask_instr@aol.com" to email field
    And I type " ABC123 " to password field
    When I click button "Sign In"
    And I wait for 1 seconds
    Then password error message "Whitespaces are not allowed" should be displayed

  @login6
  Scenario Outline: Email field and password field are required
    When I type <email> to email field
    And I type <password> to password field
    When I click button <btnName>
    And I wait for <sec> seconds
    Then password error message <errorMessage> should be displayed
    Examples:
      | email               | password   | btnName   | sec | errorMessage             |
      | ""                  | "ABC123"   | "Sign In" | 1   | "This field is required" |
      | "ask_instr@aol.com" | ""         | "Sign In" | 1   | "This field is required" |


