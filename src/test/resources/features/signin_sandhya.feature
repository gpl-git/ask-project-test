@login
  Feature: Student login functionality

    @login1
    Scenario: Student login page
      Given ss type "login" page
      When ss type "6dvjnd4@colevillecapital.com" into email field
      And ss type "12345" in password field
      And ss click "Sign In" button
      And ss wait for 1 sec
      Then user role "Student" is displayed ss
      And ss wait for 2 sec
#      Then error message "This field is required" is displayed ss

    @login2
    Scenario Outline: Student login page-outline
      Given ss type "login" page
      When ss type <email> into email field
      And ss type <password> in password field
      Then error message <expError> is displayed ss
      Examples:
        | email                          | password | expError                 |
        | "6dvjnd4@colevillecapital.com" | ""       | "This field is required" |
        | "6dvjnd4@colevillecapital.com" | "  "     | "Whitespaces are not allowed" |
        | ""                           | "12345"  | "This field is required"  |
        | "123@"                         | "12345" | "Should be a valid email address" |

