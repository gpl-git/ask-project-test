@regGroupcode
  Feature: Validating Group Code
    Background:
      Given I open "registration" page
      Then url contains text "registration"
    @regGroupcode1 @Smoke
    Scenario: Group Code Happy Path/DEC23-430
      When I type "Ocean" into first name field
      And I type "Blue" into last name field
      When I type "emibat@maryron.com" into email field
      And I type "ABC" into group field
      When I type "ABC@123" into password field
      And I type "ABC@123" into confirm password field
      When I click button "Register Me"
      And I wait for 1 sec
      Then confirmation message "You have been Registered." is displayed

    @regGroupcode2 @Smoke
      Scenario: Group Code Empty Field/DEC23-431
      When I type "Ocean" into first name field
      And I type "Blue" into last name field
      When I type "emibat1@maryron.com" into email field
      And I type "" into group field
      When I type "ABC@123" into password field
      And I type "ABC@123" into confirm password field
      When I click button "Register Me"
      And I wait for 1 sec
      Then error message "This field is required" is displayed

    @regGroupcode3 @smoke
      Scenario: Group Code White Space/DEC23-441
      When I type "Ocean" into first name field
      And I type "Blue" into last name field
      When I type "emibat2@maryron.com" into email field
      And I type "A BC" into group field
      When I type "ABC@123" into password field
      And I type "ABC@123" into confirm password field
      When I click button "Register Me"
      And I wait for 1 sec
      Then error message "No white spaces are allowed" is displayed





