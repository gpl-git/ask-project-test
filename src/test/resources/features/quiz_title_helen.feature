@quiztitle
Feature: ASK Quiz Scenarios - Title of Quiz
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

  @quiztitle1
  Scenario: Allowable characters: Alphanumeric & Special characters
    When I type "Quiz_Title_Helen_MAR24*" as quiz title
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Quiz Title Helen - Textual" to question field in "Q1"
    When I click button "Save"
    And I wait for 1 seconds
    Then quiz "Quiz_Title_Helen_MAR24*" should be displayed on the list of quizzes
    And I delete quiz "Quiz_Title_Helen_MAR24*" from the list of quizzes
    And I wait for 2 seconds

  @quiztitle2
  Scenario: Negative Test: Non-Alphanumeric & Special characters
    When I type "Quiz_Title_Helen_MAR24*" as quiz title
    Then message "You have been Registered." should be displayed
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Quiz Title Helen - Textual" to question field in "Q1"
    When I click button "Save"
    And I wait for 1 seconds
    Then quiz "Quiz_Title_Helen_MAR24*" should be displayed on the list of quizzes
    And I delete quiz "Quiz_Title_Helen_MAR24*" from the list of quizzes
    And I wait for 2 seconds