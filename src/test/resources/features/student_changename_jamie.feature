@student_changename_jamie
  Feature: Student Change Name
    Scenario:
      Given I open "login" page
      When I type "jamie.ph.wang@gmail.com" into email field
      And I type "ABC123" into password field
      When I click "Sign In" button
      And I wait for 1 sec
      Then user role "STUDENT" should be displayed
      When I click "Settings" menu item
      And I wait for 1 sec
      When I click "Change Your Name" button
      And I wait for 1 sec
      When I type "Student JamieUpdate" in to name field
      Then I click "Change" button




