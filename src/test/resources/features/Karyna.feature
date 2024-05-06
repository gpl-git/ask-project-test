@quiz_stopper

  Feature: Single Choice Question - Show-Stopper
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

      @quiz1
      Scenario: Quiz with Single Choice Question - Show-Stopper
        When I type "Karyna Demo Single Choice Question" as a quiz title
        And I add a question
        When I select "Single" question in "Q1"
        And I type "Which testing phase tests individual software modules combined together as a group?" to question field in "Q1"
        When I type "Module testing" to "Option 1*" field in "Q1"
        When I type "Integration testing" to "Option 2*" field in "Q1"
        And I select "Option 2*" as a correct option in "Q1"
        And I add a question
        When I select "Single" question in "Q2"
        And I type "Which of the following is not part of performance testing?" to question field in "Q2"
        When I type "Recovery testing" to "Option 1*" field in "Q2"
        When I type "Measuring response time" to "Option 2*" field in "Q2"
        And I select "Option 1*" as a correct option in "Q2"
        And I add a question
        When I select "Single" question in "Q3"
        And I type "Which of the following is a major task of test planning?" to question field in "Q3"
        When I type "Scheduling   test   analysis   and   design   tasks" to "Option 1*" field in "Q3"
        When I type "Initiating   corrective   actions" to "Option 2*" field in "Q3"
        And I select "Option 1*" as a correct option in "Q3"
        Then I click "Show-Stopper" question in "Q3"
        And I add a question
        When I select "Single" question in "Q4"
        And I type "Product Backlog should be ordered on the basis of?" to question field in "Q4"
        When I type "Value of the items being delivered" to "Option 1*" field in "Q4"
        When I type "The complexity of the items being delivered" to "Option 2*" field in "Q4"
        And I select "Option 1*" as a correct option in "Q4"
        And I add a question
        When I select "Single" question in "Q5"
        And I type "When is a Sprint Retrospective ceremony performed?" to question field in "Q5"
        When I type "Whenever the team suggests" to "Option 1*" field in "Q5"
        When I type "At the end of each Sprint" to "Option 2*" field in "Q5"
        And I select "Option 2*" as a correct option in "Q5"
        When I click button "Save"
        And I wait for 1 seconds
        Then quiz "Karyna Demo Single Choice Question" should be displayed on the list of quizzes
        Then I click on the quiz with title "Karyna Demo Single Choice Question"
        And I click quiz "Karyna Demo Single Choice Question" button "Preview"
        And I wait for 3 seconds
        Then Show-Stopper Question is displayed
        And I wait for 3 seconds
        Then I click button "Close"
        Then I wait for 2 seconds
        And I delete quiz "Karyna Demo Single Choice Question" from the list of quizzes
        And I wait for 5 seconds









