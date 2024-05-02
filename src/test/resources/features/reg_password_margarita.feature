@reg_password
  Feature: Registration - Password/Confirm Password Scenarios

    Background:
      Given I go to "registration" page
      When I type "Robert" to fName field
      When I type "Ross" to lName field
      And I type "happylittletree@test.com" to email field
      And I type "ABC" to group field


      @reg_password1
      Scenario: Password/Confirm Password happy path
        When I type "12345" to password field
        And I type "12345" to confirm password field
        When I click button "Register Me"
        And I wait for 1 seconds
        Then message "You have been Registered." should be displayed

    @reg_password2
    Scenario Outline: Password/Confirm Password happy path
      When I type <password> to password field
      And I type <password> to confirm password field
      When I click button "Register Me"
      And I wait for 1 seconds
      Then message "You have been Registered." should be displayed
      Examples:
        | password |
        | "12345"  |
        | "Af345Q"  |
        | "12345qte12345qte12345qte12345qte"  |
        | "@#%^&*()_+=.,/?!"  |

    @reg_password3
    Scenario: Password/Confirm Password do not match
      When I type "12345" to password field
      And I type "123456" into confirm password field
      When I click button "Register Me"
      And I wait for 2 seconds
      Then error message under confirm password field should be displayed
      And error message under confirm password field should be as "Entered passwords should match"
      And registration is not processed

    @reg_password4
    Scenario Outline: Password/Confirm Password do not match
      When I type <password> to password field
      And I type <confPassword> into confirm password field
      When I click button "Register Me"
      And I wait for 2 seconds
      Then error message under confirm password field should be displayed
      And error message under confirm password field should be as <expectedConfError>
      And registration is not processed
      Examples:
        | password | confPassword | expectedConfError                |
        | "12345"  | "123456"     | "Entered passwords should match" |
        | "1234"  | "12345"     | "Entered passwords should match" |

    @reg_password5
    Scenario: Password/Confirm Password negative
      When I type "1234" to password field
      And I type "123456" into confirm password field
      When I click button "Register Me"
      And I wait for 2 seconds
      Then error message under password field should be displayed
      And error message under password field should be as "Should be at least 5 characters"
      Then error message under confirm password field should be displayed
      And error message under confirm password field should be as "Entered passwords should match"
      And registration is not processed

    @reg_password6
    Scenario Outline: Password/Confirm Password negative
      When I type <password> to password field
      And I type <confPassword> into confirm password field
      When I click button "Register Me"
      And I wait for 2 seconds
      Then error message under password field should be displayed
      And error message under password field should be as <expectedPassError>
      Then error message under confirm password field should be displayed
      And error message under confirm password field should be as <expectedConfError>
      And registration is not processed
      Examples:
        | password | confPassword | expectedPassError                 | expectedConfError                |
        | "1234"   | "123456"     | "Should be at least 5 characters" | "Entered passwords should match" |
        | ""   | ""     | "This field is required" | "This field is required" |
        | " "   | " "     | "Whitespaces are not allowed" | "Whitespaces are not allowed" |
        | "1234"   | "boundary33CHARACTERSboundary33CHA"     | "Should be at least 5 characters" | "Too long. Should be no more than 32 characters" |
        | "boundary33CHARACTERSboundary33CHA"   | "boundary33CHARACTERSboundary33CHA"     | "Too long. Should be no more than 32 characters" | "Too long. Should be no more than 32 characters" |