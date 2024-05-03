@quiz
Feature: ASK Quiz Scenarios
  Background:
    Given I go to "login" page
    When I type "qa.sofi@gmail.com" to email field
    And I type "ABC123" to password field
    When I click button "Sign In"
    And I wait for 1 seconds
    When I click "Quizzes" menu item
    And I wait for 1 seconds
    When I click button "Create New Quiz"
    And I wait for 1 seconds

  @quiz1
  Scenario: Quiz Demo
    When I type "Quiz Title Helen" as quiz title
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Quiz Title Helen - Textual" to question field in "Q1"
    When I click button "Save"
    And I wait for 1 seconds
    Then quiz "Quiz Title Helen" should be displayed on the list of quizzes
    And I delete quiz "Quiz Title Helen" from the list of quizzes
    And I wait for 2 seconds