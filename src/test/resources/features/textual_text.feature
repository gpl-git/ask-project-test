@textualQuestions
  Feature: Textual questions - Test

    Background:
      Given I go to "login" page
      When I type "ask_instr@aol.com" to email field
      And I type "ABC123" to password field
      When I click button "Sign In"
      And I wait for 1 seconds
      Then I should see the page title as "Assessment Control @ Portnov"
      When I click "Quizzes" menu item
      And I wait for 1 seconds
      When I click button "Create New Quiz"
      And I wait for 1 seconds
      When I type "Dmitry Automated Quiz" as quiz title
      And I add a question
      When I select "Textual" question in "Q1"
      And I wait for 2 seconds

    @TextualQuestionsText
    Scenario: Allowable characters: Alphanumeric & Sp. characters
      When I type "Enterme1232#%&()?@!*" to question field in "Q1"
      And I wait for 2 seconds
      And I verify "Enterme1232#%&()?@!*" should appear in the question field
      And I wait for 2 seconds
      When I click button "Save"
      Then quiz "Dmitry Automated Quiz" should be displayed on the list of quizzes
      And I wait for 2 seconds
      And I delete my quiz "Dmitry Automated Quiz" from the list of quizzes

    @TextualQuestionText1
    Scenario:The field is required
      When I click button "Save"
      Then Error message "This field is required" under text field should appear
      And I wait for 2 seconds

    @TextualQuestionText2
    Scenario: Min 1 Character
      When I type "F" to question field in "Q1"
      And I wait for 2 seconds
      And I verify "F" should appear in the question field
      And I wait for 2 seconds
      When I click button "Save"
      Then quiz "Dmitry Automated Quiz" should be displayed on the list of quizzes
      And I wait for 2 seconds
      And I delete my quiz "Dmitry Automated Quiz" from the list of quizzes

    @TextualQuestionText3
    Scenario: Max 1000 characters
      When I type "White-box testing: Testing based on an analysis of the internal structure of a component or system (ISTQB). Structure-based testing: Dynamic testing for which tests are the result of an analysis of the structure of the test item. Note. Structure-based testing is not limited to use at the component level, but can be used at all levels, such as menu item coverage as part of system testing. (GOST 56920). White box testing (also: transparent, open, glass box; code-based or structural testing) is a software testing method that assumes that the internal structure/design/implementation of the system is known to the person testing it. We select input values based on knowledge of the code that will process them. In the same way, we know what the result of this processing should be. Knowledge of all the features of the program under test and its implementation is mandatory for this technique. White box testing is delving into the internal structure of a system, beyond its external interfaces.yes" to question field in "Q1"
      And I wait for 2 seconds
      And I verify "White-box testing: Testing based on an analysis of the internal structure of a component or system (ISTQB). Structure-based testing: Dynamic testing for which tests are the result of an analysis of the structure of the test item. Note. Structure-based testing is not limited to use at the component level, but can be used at all levels, such as menu item coverage as part of system testing. (GOST 56920). White box testing (also: transparent, open, glass box; code-based or structural testing) is a software testing method that assumes that the internal structure/design/implementation of the system is known to the person testing it. We select input values based on knowledge of the code that will process them. In the same way, we know what the result of this processing should be. Knowledge of all the features of the program under test and its implementation is mandatory for this technique. White box testing is delving into the internal structure of a system, beyond its external interfaces.yes" should appear in the question field
      And I wait for 2 seconds
      When I click button "Save"
      Then quiz "Dmitry Automated Quiz" should be displayed on the list of quizzes
      And I wait for 2 seconds
      And I delete my quiz "Dmitry Automated Quiz" from the list of quizzes

    @TextualQuestionText4
    Scenario: Max 1000 characters(Negative)
      When I type "White-box testing: Testing based on an analysis of the internal structure of a component or system (ISTQB). Structure-based testing: Dynamic testing for which tests are the result of an analysis of the structure of the test item. Note. Structure-based testing is not limited to use at the component level, but can be used at all levels, such as menu item coverage as part of system testing. (GOST 56920). White box testing (also: transparent, open, glass box; code-based or structural testing) is a software testing method that assumes that the internal structure/design/implementation of the system is known to the person testing it. We select input values based on knowledge of the code that will process them. In the same way, we know what the result of this processing should be. Knowledge of all the features of the program under test and its implementation is mandatory for this technique. White box testing is delving into the internal structure of a system, beyond its external interfaces.you are smart person" to question field in "Q1"
      And I wait for 2 seconds
      And I verify "White-box testing: Testing based on an analysis of the internal structure of a component or system (ISTQB). Structure-based testing: Dynamic testing for which tests are the result of an analysis of the structure of the test item. Note. Structure-based testing is not limited to use at the component level, but can be used at all levels, such as menu item coverage as part of system testing. (GOST 56920). White box testing (also: transparent, open, glass box; code-based or structural testing) is a software testing method that assumes that the internal structure/design/implementation of the system is known to the person testing it. We select input values based on knowledge of the code that will process them. In the same way, we know what the result of this processing should be. Knowledge of all the features of the program under test and its implementation is mandatory for this technique. White box testing is delving into the internal structure of a system, beyond its external interfaces.you are smart person" should appear in the question field
      And I wait for 2 seconds
      When I click button "Save"
      Then Error message "1000 character max" under text field should appear







