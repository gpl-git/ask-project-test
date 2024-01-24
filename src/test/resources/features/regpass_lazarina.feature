@registration


Feature: Registration Predefined
  Background:
    Given I open "registration" page
    Then url contains text "registration"

  @registration1
  Scenario: Confirmation ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "12345" into password field
    And I type "12345" into confirm password field
    When I click button "Register Me"
    And I wait for 3 sec
    Then confirmation message "You have been Registered." is displayed

  @registration2
  Scenario: Error message ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "" into password field
    And I type "12345dfdf" into confirm password field
    When I click button "Register Me"
    And I wait for 2 sec
    Then error message "This field is required" is displayed

  @registration3
  Scenario: Minimum 5 characters ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "ie@4" into password field
    And I type "ie@4" into confirm password field
    When I click button "Register Me"
    And I wait for 3 sec
    Then error message "Should be at least 5 characters" is displayed

  @registration4
  Scenario: Maximum 32 characters ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "ierbgsiehrgbzlkdgvfgbwwieh@@!1234" into password field
    And I type "ierbgsiehrgbzlkdgvfgbwwieh@@!1234" into confirm password field
    When I click button "Register Me"
    And I wait for 2 sec
    Then error message "Password should not exceed 32 characters" is displayed

  @registration5
  Scenario: No white spaces ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "12345 b@" into password field
    And I type "12345 b@" into confirm password field
    When I click button "Register Me"
    And I wait for 3 sec
    Then error message "Whitespaces are not allowed" is displayed

  @registration6
  Scenario: Passwords should match ls
    When I type "Sara" into first name field
    And I type "Cruz" into last name field
    When I type "ponziebpogie@storebas.xyz" into email field
    And I type "aaaa" into group field
    When I type "12345" into password field
    And I type "12345dfdf" into confirm password field
    When I click button "Register Me"
    And I wait for 2 sec
    Then error message "Entered passwords should match" is displayed
