@Assignment
Feature: Quiz JD
  Background:
    Given I open "login" for assignment control
    When I type "rademacher@hulaspalmcourt.com" into email field
    And I type "ABC123" into password field
    When I click button "Sign In" I must be as a Teacher
    And I wait for 2 sec
    When I click "Quizzes" menu item for creating a quiz
    Then url contains part of the text "quizz"
    And I wait for 1 sec
    When I click "Create New Quiz" in the Quizzes Page
    And I wait for 2 sec

  @Myquiz1
  Scenario: Create a Quiz with 1 type of question
    When I type "LastTest By. JD" into title field for a Quiz
    And I add a question to my quiz
    When I select "Single" question in "Q1" for my Quiz
    And I type "Question 1" into question field of "Q1" for my Quiz
    When I type "Option 1" into "Option 1*" of "Q1" for my Quiz
    And I type "Option 2" into "Option 2*" of "Q1" for my Quiz
    When I select "Option 2*" as a correct option in "Q1" for my Quiz
 #   And I select "showstopperquestion" for my Quiz
    And I click button "Save"
    And I wait for 1 sec
    Then quiz "LastTest By. JD" is displayed on the list of my quizzes
    And I delete "LastTest By. JD" from the list of my quizzes
    And I wait for 5 sec



    
