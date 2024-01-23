@quiz
  Feature: Quiz Predefined
    Background:
      Given I open "login" page
      When I type "ask_instr@aol.com" into email field
      And I type "ABC123" into password field
      When I click button "Sign In"
      And I wait for 1 sec
      Then user role "TEACHER" is displayed
      When I click "Quizzes" menu item
      Then url contains text "quiz"
      And I wait for 1 sec
      When I click button "Create New Quiz"
      And I wait for 1 sec

    @quiz1
    Scenario: Create a Quiz
      When I type "Demo TA Quiz" into title field
      And I add a question
      When I select "Single" question in "Q1"
      And I type "Question 1" into question field of "Q1"
      When I type "Option 1" into "Option 1*" of "Q1"
      And I type "Option 2" into "Option 2*" of "Q1"
      When I select "Option 2*" as a correct option in "Q1"
      And I wait for 600 sec
      And I click button "Save"
      And I wait for 1 sec
      Then quiz "Demo TA Quiz" is displayed on the list of quizzes
      And I delete "Demo TA Quiz" from the list of quizzes
      

