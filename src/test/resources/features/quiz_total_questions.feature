@base_login
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

    @I_Should_Not_Be_Able_To_Create_Quiz_With_Zero_Questions
      Scenario: Creating 1 quiz with 0 questions
        When I type "Demo TA Quiz" into title field
        And I add a question
        When I select "Single" question in "Q1"
        Then I save quiz
        Then I check that quiz was not created

    @I_Should_Be_Able_To_Create_Quiz_With_Many_Questions
      Scenario: Creating quiz with many question
        When I type "Demo TA Quiz" into title field
        And I add a question
        When I select "Single" question in "Q1"
        Then I create 5 more questions
        Then I save quiz
        And I wait for 1 sec
        Then quiz "Demo TA Quiz" is displayed on the list of quizzes
        And I delete "Demo TA Quiz" from the list of quizzes
g





        

