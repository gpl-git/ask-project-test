@reg

  Feature: Registration Scenarios

    Background:
      Given I go to "registration" page
      When I type "Smith" to lName field
      And I type "abc123@test.com" to email field
      And I type "ABC" to group field
      When I type "12345" to password field
      And I type "12345" to confirm password field


    @reg1 @fName
    Scenario Outline: Fist Name Happy Path
      When I type <fName> to fName field
      When I click button "Register Me"
      And I wait for 1 seconds
      Then message "You have been Registered." should be displayed
      Examples:
        | fName  |
        | "John" |
        | "John121212" |
        | "John@@@@@" |


