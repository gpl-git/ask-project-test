@sc_question_text
  Feature: Test Set MAR24-176 - ASK Single-Choice Question - Text
    Background:
      Given I go to "login" page
      When I type "qa1@test.com" to email field
      And I type "ABC123" to password field
      When I click button "Sign In"
      And I wait for 1 seconds
      When I click "Quizzes" menu item
      And I wait for 1 seconds
      When I click button "Create New Quiz"
      And I wait for 1 seconds

    @sc_question_text1
    Scenario: MAR24-177 (Allowable characters: Alphanumeric & Sp. characters)
      When I type "MAR24-177 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      And I type "ABC123!@$#*?" to question field in "Q1"
      And I wait for 1 seconds
      Then text "ABC123!@$#*?" should be displayed in the Question field
      And I wait for 1 seconds

    @sc_question_text2
    Scenario: MAR24-179 (The field is required)
      When I type "MAR24-179 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      When I type "B" to "Option 1*" field in "Q1"
      And I wait for 1 seconds
      When I type "C" to "Option 2*" field in "Q1"
      And I wait for 1 seconds
      And I select "Option 2*" as a correct option in "Q1"
      And I wait for 1 seconds
      When I click button "Save"
      And I wait for 1 seconds
      Then error message "This field is required" should be displayed
      And I wait for 1 seconds

    @sc_question_text3
    Scenario: MAR24-182 (Min 1 Characters)
      When I type "MAR24-182 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      And I type "A" to question field in "Q1"
      And I wait for 1 seconds
      When I type "B" to "Option 1*" field in "Q1"
      And I wait for 1 seconds
      When I type "C" to "Option 2*" field in "Q1"
      And I wait for 1 seconds
      And I select "Option 2*" as a correct option in "Q1"
      And I wait for 1 seconds
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "MAR24-182 TA" should be displayed on the list of quizzes
      And I wait for 1 seconds
      And I delete quiz "MAR24-182 TA" from the list of quizzes
      And I wait for 1 seconds

    @sc_question_text4
    Scenario: MAR24-188 (Max 1000 characters)
      When I type "MAR24-188 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      When I type 1000 alphanumeric characters to question field in "Q1"
      And I wait for 1 seconds
      When I type "testing for a business perspective" to "Option 1*" field in "Q1"
      And I wait for 1 seconds
      When I type "ensuring that the system is acceptable to all users" to "Option 2*" field in "Q1"
      And I wait for 1 seconds
      And I select "Option 2*" as a correct option in "Q1"
      And I wait for 1 seconds
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "MAR24-188 TA" should be displayed on the list of quizzes
      And I wait for 1 seconds
      And I delete quiz "MAR24-188 TA" from the list of quizzes
      And I wait for 1 seconds

    @sc_question_text5
    Scenario: MAR24-191 (Max 1000 characters - Negative Test)
      When I type "MAR24-191 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      When I type 1001 alphanumeric characters to question field in "Q1"
      And I wait for 1 seconds
#      The following step is failing. Known issue MAR24-499
      Then error message "Max 1000 characters" should be displayed

    @sc_question_text6
    Scenario: MAR24-370 (Input with only space)
      When I type "MAR24-370 TA" as quiz title
      And I wait for 1 seconds
      And I add a question
      And I wait for 1 seconds
      When I select "Single" question in "Q1"
      And I wait for 1 seconds
      And I type " " to question field in "Q1"
      And I wait for 1 seconds
      When I type "testing for a business perspective" to "Option 1*" field in "Q1"
      And I wait for 1 seconds
      When I type "ensuring that the system is acceptable to all users" to "Option 2*" field in "Q1"
      And I wait for 1 seconds
      And I select "Option 2*" as a correct option in "Q1"
      And I wait for 1 seconds
#      The following step is failing. Known issue MAR24-390
      Then error message "This field is required" should be displayed