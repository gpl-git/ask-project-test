@registration
Feature: Registration Predefined
  Background:
    Given I open "login" page
    Then url contains text "login"
    
  @registration1
  Scenario: restore password feature
    When I click on link "forgot password"
    Then "Reset Password Request" window is displayed
    When I type "hhctrd@packiu.com" into email field
    And I click button "Password Reset"
    Then confirmation message "Your request is confirmed" is displayed




