@Registration
  Feature: Last Name field verification

    Background:
      Given I open "registration" page

    @regn_lastname1
    Scenario: Alphanumeric and special characters are allowed
      When I type "Emma" into first name field
      When I type "123!@#DFGH*&%ABC" into  last name field
      And  I type "iabbsupply@crosswaytransport.net" into email field
      And I type "abc" into group code field
      And I type "ABC123" into password field
      Then I type "ABC123" into confirm password field
      And I click "Register Me" button
      And I wait for 2 sec
