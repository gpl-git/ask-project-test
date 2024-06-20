@changepass
Feature: Change Password

  Background:
    Given I open "login" page
    When I type "zestudikki@gufum.com" into email field
    And I type "zxcvb" into password field
    When I click "Sign In" button
    And I wait for 1 sec
    Then user role "STUDENT" should be displayed
    And I wait for 1 sec
    When I click "Settings" button VY
    And I wait for 1 sec
    Then I click "Change Your Password" button
    And I wait for 1 sec
    Then "Changing Password" should b displayed


  @changepass1
  Scenario: Student Change password  Happy Path
    Then I type "zxcvb" into current password field
    Then I wait for 1 sec
    Then I type "abc123" into new password field
    Then I type "abc123" into confirm new password field
    When I click "Change" button    VI
    Then I wait for 2 sec
    Then "Settings" should be displayed
    Then I click "Change Your Password" button
    And I wait for 2 sec
    Then "Changing Password" should b displayed
    Then I wait for 1 sec
    Then I type "abc123" into current password field
    Then I wait for 1 sec
    Then I type "zxcvb" into new password field
    Then I type "zxcvb" into confirm new password field
    When I click "Change" button    VI
    Then I wait for 2 sec
    Then "Settings" should be displayed

    @changepass2
    Scenario: Wrong current password
    Then I type "zxcvbn" into current password field
    Then I wait for 1 sec
    Then I type "abc123" into new password field
    Then I type "abc123" into confirm new password field
    When I click "Change" button    VI
    Then I wait for 2 sec
    Then pop-up message "Authentication failed. User not found or password does not match" should be displayed


