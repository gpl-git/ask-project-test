@submissions
  Feature: Submissions feature
    
    @submissions1
    Scenario: Open submissions and validate correct page
      Given I open "login" page
      And I type "ask_instr@aol.com" into email field
      And I type "ABC123" into password field
      And I click button "Sign In"
      And I wait for 3 sec
      When I click "Submissions" menu item
      Then url contains text "submissions"