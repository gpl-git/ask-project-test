@regGroupcode
  Feature: Validating Group Code
    Background:
      Given I open "registration" page
      Then url contains text "registration"
      When I type "Ocean" into first name field
      And I type "Blue" into last name field
      When I type "emibat@maryron.com" into email field
      When I type "ABC@123" into password field
      And I type "ABC@123" into confirm password field
      
    @regGroupcode1 @Smoke
    Scenario: Group Code Happy Path/DEC23-430
      And I type "ABC" into group field
      When I click button "Register Me"
      And I wait for 1 sec
      Then confirmation message "You have been Registered." is displayed

    @regGroupcode2 @Smoke
      Scenario: Group Code Empty Field/DEC23-431
      And I type "" into group field
      When I click button "Register Me"
      And I wait for 1 sec
      Then error message "This field is required" is displayed

    @regGroupcode3 @smoke
    Scenario Outline: All possible messages for white space in Group Code
      When I type <group1> into group field
      And I click button "Register Me"
      Then error message <message> is displayed
      And I wait for 2 sec
#      This is known issue
      Examples:
        | group1   | message                           |
        | " ABC"   | "No leading spaces are allowed"   |
        | "AB "    | "No trailing spaces are allowed"  |
        | "A BC"   | "No white spaces in are allowed"  |

    @regGroupcode4 @smoke
    Scenario Outline: Allowed number of characters in group code field/Positive Test Case
      And I type <group> into group field
      And I click button "Register Me"
      And I wait for 2 sec
      Then error message <expError> is displayed
      Examples:
        | group          | expError                            |
        | "12345678901"  | "Should no more than 10 characters" |
        | ""             | "This field is required"            |


    @regGroupcode5 @smoke
    Scenario Outline: Allowed number of characters in group code field/Negative Test Case
      And I type <group> into group field
      And I click button "Register Me"
      And I wait for 2 sec
      Then confirmation message <expMessage> is displayed
      Examples:
        | group        | expMessage                  |
        | "ABC"        | "You have been Registered." |
        | "A"          | "You have been Registered." |
        | "123456789"  | "You have been Registered." |
        | "1234567890" | "You have been Registered." |
















