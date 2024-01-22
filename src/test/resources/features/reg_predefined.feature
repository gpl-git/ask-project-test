@registration

  Feature: Registration Predefined
    Background:
      Given I open "registration" page
      Then url contains text "registration"
    @registration1
    Scenario: Confirmation
      When I type "John" into first name field
      And I type "Smith" into last name field
      When I type "diesel04@fradsfadsf.online" into email field
      And I type "aaaa" into group field
      When I type "12345" into password field
      And I type "12345dfdf" into confirm password field
      When I click button "Register Me"
      And I wait for 1 sec
#      Then confirmation message "You have been Registered." is displayed
      Then error message "Entered passwords should match" is displayed

