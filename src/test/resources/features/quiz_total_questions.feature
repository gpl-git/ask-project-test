@base_login
  Feature: Quiz Predefined
    Background:
      Given I open "login" page
      When I type "ask_instr@aol.com" into email field
      And I type "ABC123" into password field
      When I click button "Sign In"
      And I wait for 1 sec
      Then user role "TEACHER" is displayed
      When I click "Quizzes" menu item
      Then url contains text "quiz"
      And I wait for 1 sec
      When I click button "Create New Quiz"
      And I wait for 1 sec

    @test1
      Scenario: Creating 10 quizzes
        When I type "Demo TA Quiz" into title field
        And I add a question

        When I select "Single" question in "Q1"
        And I type "Question 1" into question field of "Q1"
        When I type "Option 1" into "Option 1*" of "Q1"
        And I type "Option 2" into "Option 2*" of "Q1"
        When I select "Option 2*" as a correct option in "Q1"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q2"
        When I type "Option 1" into "Option 1*" of "Q2"
        And I type "Option 2" into "Option 2*" of "Q2"
        When I select "Option 2*" as a correct option in "Q2"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q3"
        When I type "Option 1" into "Option 1*" of "Q3"
        And I type "Option 2" into "Option 2*" of "Q3"
        When I select "Option 2*" as a correct option in "Q3"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q4"
        When I type "Option 1" into "Option 1*" of "Q4"
        And I type "Option 2" into "Option 2*" of "Q4"
        When I select "Option 2*" as a correct option in "Q4"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q5"
        When I type "Option 1" into "Option 1*" of "Q5"
        And I type "Option 2" into "Option 2*" of "Q5"
        When I select "Option 2*" as a correct option in "Q5"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q6"
        When I type "Option 1" into "Option 1*" of "Q6"
        And I type "Option 2" into "Option 2*" of "Q6"
        When I select "Option 2*" as a correct option in "Q6"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q7"
        When I type "Option 1" into "Option 1*" of "Q7"
        And I type "Option 2" into "Option 2*" of "Q7"
        When I select "Option 2*" as a correct option in "Q7"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q8"
        When I type "Option 1" into "Option 1*" of "Q8"
        And I type "Option 2" into "Option 2*" of "Q8"
        When I select "Option 2*" as a correct option in "Q8"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q9"
        When I type "Option 1" into "Option 1*" of "Q9"
        And I type "Option 2" into "Option 2*" of "Q9"
        When I select "Option 2*" as a correct option in "Q9"

        Then I click on element with "//div[@class='controls ng-star-inserted shift']/button/span"
        Then I wait for 1 sec
        When I click on element with "//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]"
        And I type "Question 1" into question field of "Q10"
        When I type "Option 1" into "Option 1*" of "Q10"
        And I type "Option 2" into "Option 2*" of "Q10"
        When I select "Option 2*" as a correct option in "Q10"
        Then I check that element with "//mat-panel-title[contains(text(), 'Q10')]" xpath



        

