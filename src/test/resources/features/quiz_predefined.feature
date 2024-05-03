@quiz
  Feature: ASK Quiz Scenarios
    Background:
      Given I go to "login" page
      When I type "ask_instr@aol.com" to email field
      And I type "ABC123" to password field
      When I click button "Sign In"
      And I wait for 1 seconds
      When I click "Quizzes" menu item
      And I wait for 1 seconds
      When I click button "Create New Quiz"
      And I wait for 1 seconds

    @quiz1
    Scenario: Quiz Demo
      When I type "Galina TA Demo" as quiz title
      And I add a question
      When I select "Single" question in "Q1"
      And I type "Question 1" to question field in "Q1"
      When I type "Option 1" to "Option 1*" field in "Q1"
      When I type "Option 2" to "Option 2*" field in "Q1"
      And I select "Option 2*" as a correct option in "Q1"
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "Galina TA Demo" should be displayed on the list of quizzes
      Then I wait for 2 seconds
      And I delete quiz "Galina TA Demo" from the list of quizzes
      And I wait for 1 seconds
