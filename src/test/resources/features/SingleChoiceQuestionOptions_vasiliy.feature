@single_choice_question_options
Feature: Single Choice Question Options Scenarios

  @single_choice_question_options1
  Scenario: Option field is required (Cannot be empty)
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    When I click "Sign In" button
    And I wait for 1 sec
    Then user role "TEACHER" should be displayed
    When I click "Quizzes" menu item
    And I wait for 1 sec
    When I click "Create New Quiz" button
    And I wait for 1 sec
    When I type "Quiz Demo Title" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question1" into question filed of "Q1"
    And I type "" into "Option 1*" field of "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then error message "This field is required." is displayed

  @single_choice_question_options2
  Scenario: Option field requires two options to be written
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    When I click "Sign In" button
    And I wait for 1 sec
    Then user role "TEACHER" should be displayed
    When I click "Quizzes" menu item
    And I wait for 1 sec
    When I click "Create New Quiz" button
    And I wait for 1 sec
    When I type "Quiz Demo Title" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question1" into question filed of "Q1"
    And I type "Answer" into "Option 1*" field of "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then error message "This field is required." is displayed

  @single_choice_question_options3
    Scenario: Option field requires correct answer to be indicated
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    When I click "Sign In" button
    And I wait for 1 sec
    Then user role "TEACHER" should be displayed
    When I click "Quizzes" menu item
    And I wait for 1 sec
    When I click "Create New Quiz" button
    And I wait for 1 sec
    When I type "Quiz Demo Title" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Answer" into "Option 1*" field of "Q1"
    And I type "Answer2" into "Option 2*" field of "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then error message "Choose correct answer" is displayed


