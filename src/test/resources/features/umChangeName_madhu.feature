@userManagement_changeName
Feature: User Management -Change Full Name 
  Background:
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    When I click button "Sign In"
    And I wait for 1 sec
    Then user role "TEACHER" is displayed
    When I click "Users Management" menu item
    Then url contains text "users-management"
    And I wait for 1 sec
    When I click button "Teachers"
    And I wait for 1 sec
    
    @userManagement_changeName1 @smoke
      Scenario: Change Name of the teacher in option menu of User Management
      When I click button {string}