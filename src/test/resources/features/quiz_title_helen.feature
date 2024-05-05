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
  Scenario Outline: Quiz Title Length Requirement Validation (min 1, max 1000)
    When I type <numTitle> alphanumeric characters as quiz title
    And I click anywhere next to the field
    Then I verify comliance of <numTitle> with Character Limit Requirement
    And I wait for 2 seconds
    Examples:
      | numTitle |
      | 0      |
      | 1     |
      | 1000      |
      | 1001      |


  @quiztitle2
  Scenario Outline: Allowable characters: Alphanumeric & Sp. characters
    When I type <quizTitle> as quiz title
    And I click anywhere next to the field
    Then I verify for non-Latin letters and digits in the field
    Examples:
      | quizTitle                |
      | "Quiz" |
      | "Quiz Title Helen MAR24" |
      | "Quiz_Title_Helen_MAR24" |
      | "Quiz Title Helen MAR24*" |
      | "Quiz/MAR24*" |
      | "552024" |
      | "Название теста" |
      | "田中太郎" |
      | "泽东" |
      | "แม" |
      | "ابن خلدون" |