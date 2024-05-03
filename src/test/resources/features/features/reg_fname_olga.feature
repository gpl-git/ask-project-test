@reg

  Feature: Registration First Name

    Background:
      Given I go to "registration" page
      When I type "I" to lName field
      And I type "MAR24" to group field
      When I type "ABC1234" to password field
      And I type "ABC1234" to confirm password field

    @reg1
    Scenario Outline: First Name Empty, White spaces
      When I type <firstName> to firstName field
      And I type "dxp93mkz@livegolftv.com" to email field
      And I click "Register Me" button
      Then I wait for 2 seconds
      Then error message <expError> should be displayed
      Then I wait for 2 seconds
      Examples:
        | firstName | expError               |
        | ""        | "This field is required" |
        | "  "      | "Whitespaces are not allowed" |

    @reg2
    Scenario: First Name 256 Char Negative
      When I type 256 alphanumeric characters to firstName field
      And I type "dxp93mkz@livegolftv.com" to email field
      And I click "Register Me" button
      Then I wait for 2 seconds
      Then bottom error message "Data too long for column 'name' at row 1" should be displayed
      Then I wait for 2 seconds


      @reg3
#        Xpath is not working, I'm stuck on that.
        Scenario: First Name Foreign Char
        When I type "中山" to firstName field
        And I type "dxp93mkz@livegolftv.com" to email field
        And I click "Register Me" button
        Then err message "Incorrect string value: '\xE4\xB8\xAD\xE5\xB1\xB1...' for column 'name' at row 1" should be displayed
        Then I wait for 2 seconds



    @reg4
    Scenario Outline: First Name 1 Char, Alphanumeric & Special Char
      When I type <firstName> to firstName field
      And I type new email address to email field
      And I click "Register Me" button
      Then I wait for 2 seconds
      Then message "You have been Registered." should be displayed
      Examples:
        | firstName |
        | "O"       |
        | "12JIOF"  |
        | "*&^%#"   |

      @reg5
      Scenario: First Name 254 Char Max
        When I type 254 alphanumeric characters to firstName field
        And I type new email address to email field
        And I click "Register Me" button
        Then I wait for 2 seconds
        Then message "You have been Registered." should be displayed








