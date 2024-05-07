@multiple
  Feature: Multiple Choice Question
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

    @multiple1
    Scenario: Other option
      When I type "Leo Demo Multiple: other option" as quiz title
      And I add a question
      When I select "Multiple" question in "Q1"
      And I type "Solve for x: 2x + 5 = 15" to question field in "Q1"
      When I type "x = 5" to "Option 1*" field in "Q1"
      When I type "x = 9" to "Option 2*" field in "Q1"
      And I select option "1" checkbox as a correct option in "Q1"
      Then I click Other option checkbox
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "Leo Demo Multiple: other option" should be displayed on the list of quizzes
      Then I click on the quiz with title "Leo Demo Multiple: other option"
      And I click quiz "Leo Demo Multiple: other option" button "Preview"
      Then other option is displayed
      Then I click button "Close"
      When I click quiz "Leo Demo Multiple: other option" button "Delete"
      Then I confirm

    @multiple2
    Scenario: 15 answers
      When I type "Leo Demo Multiple: 15" as quiz title
      And I add a question
      When I select "Multiple" question in "Q1"
      And I type "What is 2+2" to question field in "Q1"
      When I type 15 answers
      And I select option "4" checkbox as a correct option in "Q1"
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "Leo Demo Multiple: 15" should be displayed on the list of quizzes
      Then I click on the quiz with title "Leo Demo Multiple: 15"
      When I click quiz "Leo Demo Multiple: 15" button "Delete"
      Then I confirm

    @multiple3
    Scenario: 1000
      When I type "Leo Demo Multiple: 1000" as quiz title
      And I add a question
      When I select "Multiple" question in "Q1"
      And I type "What is regression testing?" to question field in "Q1"
      When I type "Regression testing ensures that recent code changes haven't adversely affected existing features by retesting the unchanged parts of the software." to "Option 1*" field in "Q1"
      When I type 1000 symbols to "Option 2*" field in "Q1"
      And I select option "1" checkbox as a correct option in "Q1"
      When I click button "Save"
      And I wait for 1 seconds
      Then quiz "Leo Demo Multiple: 1000" should be displayed on the list of quizzes
      Then I click on the quiz with title "Leo Demo Multiple: 1000"
      When I click quiz "Leo Demo Multiple: 1000" button "Delete"
      Then I confirm

    @multiple4
    Scenario: Errors handling
      When I type "Leo Demo Multiple: errors handling" as quiz title
      And I add a question
      When I select "Multiple" question in "Q1"
      When I click button "Save"
      Then error message "This field is required" should be displayed
      And I type "What is regression testing?" to question field in "Q1"
      When I click button "Save"
      Then error message "This field is required" should be displayed
      When I type "Regression testing ensures that recent code changes haven't adversely affected existing features by retesting the unchanged parts of the software." to "Option 1*" field in "Q1"
      When I click button "Save"
      Then error message "This field is required" should be displayed
      When I type "2nd answer" to "Option 2*" field in "Q1"
      When I click button "Save"
      Then error message "*Choose at least one correct answer" should be displayed
      And I select option "1" checkbox as a correct option in "Q1"
      When I click button "Save"
      Then quiz "Leo Demo Multiple: errors handling" should be displayed on the list of quizzes
      And I wait for 1 seconds
      Then I click on the quiz with title "Leo Demo Multiple: errors handling"
      When I click quiz "Leo Demo Multiple: errors handling" button "Delete"
      Then I confirm

    @multiple5
    Scenario: Delete option disabled
      When I type "Leo Demo Multiple: Delete option" as quiz title
      And I add a question
      When I select "Multiple" question in "Q1"
      And I type "What is regression testing?" to question field in "Q1"
      When I type "Regression testing ensures that recent code changes haven't adversely affected existing features by retesting the unchanged parts of the software." to "Option 1*" field in "Q1"
      Then verify disabled "Delete Option" for "Option 1*"
      When I type "2nd answer" to "Option 2*" field in "Q1"
      Then verify disabled "Delete Option" for "Option 2*"
      And I select option "1" checkbox as a correct option in "Q1"
      When I click button "Save"
      Then quiz "Leo Demo Multiple: Delete option" should be displayed on the list of quizzes
      And I wait for 1 seconds
      Then I click on the quiz with title "Leo Demo Multiple: Delete option"
      When I click quiz "Leo Demo Multiple: Delete option" button "Delete"
      Then I confirm