@PredefinedMoisei
Feature: Quiz Predefined
  Background:
    Given I open "login" page
    When I type "rroux000@hulas.us" into email field
    And I type "Password1" into password field
    When I click button "Sign In"
    And I wait for 1 sec
    Then user role "TEACHER" is displayed
    When I click "Quizzes" menu item
    Then url contains text "quiz"
    And I wait for 1 sec
    When I click button "Create New Quiz"
    And I wait for 1 sec

  @textualNoStopper
  Scenario: Create a Textual Quiz with no Showstopper
    When I type "Demo Texual Quiz Moisei" into title field
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Question 1" into question field of "Q1"
    And I wait for 1 sec
    And I click button "Save"
    And I wait for 1 sec
    Then quiz "Demo Texual Quiz Moisei" is displayed on the list of quizzes
    And I delete "Demo Texual Quiz Moisei" from the list of quizzes


  @TextualStopper
    Scenario: Create a Textual Quiz with Showstopper
    When I type "Showstopper Texual Quiz Moisei" into title field
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Question 1" into question field of "Q1"
    And I select Show-Stopper option
    And I verify that Show-Stopper option is present
    And I click button "Save"
    And I wait for 1 sec
    Then quiz "Showstopper Texual Quiz Moisei" is displayed on the list of quizzes
    And I delete "Showstopper Texual Quiz Moisei" from the list of quizzes

  @textual2Showstoppers
    Scenario: Create a Textual Quiz with 2 showstoppers
    When I type "Showstopper Texual Quiz Moisei" into title field
    And I add a question
    When I select "Textual" question in "Q1"
    And I type "Question with showstopper" into question field of "Q1"
    And I select Show-Stopper option
    And I verify that Show-Stopper option is present
#    And I verify that Show-Stopper option is present MP
    And I add a question
    When I select "Textual" question in "Q2"
    And I type "Question with showstopper" into question field of "Q2"
    And I select second Show-Stopper option
    And I verify that second Show-Stopper option is present
    And I wait for 1 sec
    And I click button "Save"
    And I wait for 1 sec
    Then quiz "Showstopper Texual Quiz Moisei" is displayed on the list of quizzes
    And I delete "Showstopper Texual Quiz Moisei" from the list of quizzes