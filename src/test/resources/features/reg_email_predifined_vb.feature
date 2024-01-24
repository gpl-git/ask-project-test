@regEmail
  Feature: Email predifined
    Background:
      Given I open "registration" page
      And url contains text "registration"
      And I type "1" into first name field
      And I type "2" into last name field
      And I type "DEC23" into group field
      And I type "12345" into password field
      And I type "12345" into confirm password field

    @regEmail1
    Scenario: Allowable characters: Alphanumeric & Special characters
      And I type "1a@2b.3c" into email field
      And I click button "Register Me"
      And I wait for 1 sec
      And confirmation message "You have been Registered." is displayed
      And I wait for 1 sec

    @regEmail2
    Scenario: Email field required, can’t be empty
      When I click button "Register Me"
      Then error message "This field is required" is displayed
      And I wait for 1 sec

    @regEmail3
    Scenario: Local port with 64 characters on the left
      When I type 64 symbols before @ sign and "@test.here" into email field VB
      And I click button "Register Me"
      And I wait for 1 sec
      And confirmation message "You have been Registered." is displayed
      And I wait for 1 sec

    @regEmail4
    Scenario: Local port with 64 + 1 characters on the left form @ sign
      When I type 65 symbols before @ sign and "@test.here" into email field VB
      And I click button "Register Me"
      And I wait for 2 sec
      And error message "Should be a valid email address" is displayed
      And I wait for 1 sec

    @regEmail5
    Scenario: 63 characters on the right from @ sign
      When I type "test@" and 63 symbols after @ sign ".test" into email field VB
      And I click button "Register Me"
      And I wait for 2 sec
      And confirmation message "You have been Registered." is displayed
      And I wait for 1 sec

    @regEmail6
    Scenario: 63 + 1 characters on the right from @ sign
      When I type "test@" and 64 symbols after @ sign ".test" into email field VB
      And I click button "Register Me"
      And I wait for 2 sec
      And error message "Should be a valid email address" is displayed
      And I wait for 1 sec

    @regEmail7
    Scenario: 63 characters on the right from . sign
      When I type "test@test." and 63 symbols after . sign VB
      And I click button "Register Me"
      And I wait for 2 sec
      And confirmation message "You have been Registered." is displayed
      And I wait for 1 sec

    @regEmail8
    Scenario: 63 + 1 characters on the right from . sign
      When I type "test@test." and 64 symbols after . sign VB
      And I click button "Register Me"
      And I wait for 2 sec
      And error message "Should be a valid email address" is displayed
      And I wait for 1 sec

    @regEmail9
    Scenario: Max 128 characters
      When I type 42 characters before @ sign, 42 characters after @ sign, . sign and 42 characters after . sign VB
      And I click button "Register Me"
      And I wait for 2 sec
      And confirmation message "You have been Registered." is displayed
      And I wait for 1 sec

    @regEmail10
    Scenario: 128 + 1 characters
      When I type 43 characters before @ sign, 42 characters after @ sign, . sign and 42 characters after . sign VB
      And I click button "Register Me"
      And I wait for 2 sec
      And snack bar "Data too long for column 'email' at row 1 " is displayed VB
      And I wait for 1 sec

    @regEmail11
    Scenario: White spaces are not allowed
      When I type "emailwith space@test.com" into email field
      And I click button "Register Me"
      And I wait for 2 sec
      And error message "Should be a valid email address" is displayed
      And I wait for 1 sec

