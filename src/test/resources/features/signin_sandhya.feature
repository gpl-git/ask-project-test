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
      Given ss type <url> page
      When ss type <email> into email field
      And ss type <password> in password field
      And ss click <btnName> button
      And ss wait for <sec> sec
      Then error message <expError> is displayed ss
      Examples:
        | url     | email                          | password | btnName   | sec | expError                 |
        | "login" | "6dvjnd4@colevillecapital.com" | ""  | "Sign In" | 1   | "This field is required" |
        | "login" | "6dvjnd4@colevillecapital.com" | "  "  | "Sign In" | 1   | "Whitespaces are not allowed" |
        | "login" | "" | "12345"  | "Sign In" | 1   | "This field is required" |
        | "login" | "123@" | "12345"  | "Sign In" | 1   | "Should be a valid email address" |

