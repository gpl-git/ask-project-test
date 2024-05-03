@qTotal
  Feature: Quiz total questions
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

    @qTotal1
    Scenario: Quiz with 1 question
      When I type "Geronti Demo" as quiz title
      And I add a question
      When I select "Single" question in "Q1"
      And I type "Question 1" to question field in "Q1"
      When I type "Option 1" to "Option 1*" field in "Q1"
      When I type "Option 2" to "Option 2*" field in "Q1"
      And I select "Option 2*" as a correct option in "Q1"
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "Geronti Demo" should be displayed on the list of quizzes
      Then quiz "Geronti Demo" should have "1" question(s)
      Then I wait for 2 seconds
      And I delete quiz "Geronti Demo" from the list of quizzes
      And I wait for 2 seconds


      @qTotal2
      Scenario: Quiz with multiple questions
        When I type "Geronti Demo" as quiz title
        And I add 50 questions and confirm total number of questions added
        Then I wait for 2 seconds
        Then Element with expath should be present
        Then I select 50 question(s) and fill out all the fields
        Then I wait for 2 seconds


