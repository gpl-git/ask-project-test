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



