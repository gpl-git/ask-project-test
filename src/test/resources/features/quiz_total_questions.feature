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
        And I add 2 questions and confirm total number of questions added
        Then Element with expath should be present
        Then I select 2 question(s) and fill out all the fields
        Then I wait for 1 seconds
        Then Element with expath should be present
        And I click save
        Then I wait for 2 seconds
        Then quiz "Geronti Demo" should be displayed on the list of quizzes
        Then I wait for 2 seconds
        Then quiz "Geronti Demo" should have "2" question(s)
        And I delete quiz "Geronti Demo" from the list of quizzes




      @qTotal3
      Scenario: check if quiz can contain more then 50 questions
#        in case the scenario passes it means user can create a quiz with more then 50 questions
#        which is against the requirements
        When I type "yourQuizName" as quiz title
        And I add 51 questions and confirm total number of questions added
        Then I select 51 question(s) and fill out all the fields
        Then I wait for 1 seconds
        And I click save
        Then I wait for 1 seconds
        Then quiz "yourQuizName" should be displayed on the list of quizzes
        Then I wait for 2 seconds
        Then quiz "yourQuizName" should have "51" question(s)
        And I delete quiz "yourQuizName" from the list of quizzes



        


