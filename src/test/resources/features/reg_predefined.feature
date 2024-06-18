@reg
  Feature: Registration Scenarios
    
    Scenario: Happy Path
      Given  I open "registration" page
      When I type "Galina" into first name field
      When I type "L" into last name field
      And I type "abc@1233.com" into email field
      And I type "QQQ" into group field
      When I type "12345" into password field
      When I type "12345" into confirmPassword field
      And I click "Register Me" button
      And I wait for 1 sec
      Then confirmation message "You have been Registered." should be displayed