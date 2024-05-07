@RegEmail
  Feature: Automate test set "Registration - email"
    Background:
      Given I go to "registration" page
      When I type "123GTN!#&%$!" to fName field
      And I type "DTH" to lName field
      And I type "FGTT" to group field
      And I type "4594sad" to password field
      And I type "4594sad" to confirm password field
    @RegEmail1
    Scenario: Allowable characters: Alphanumeric & Special characters
      And I type "argroup@breaksmedia.com" to email field
      When I click button "Register Me"
      And I wait for 4 seconds
      Then message "You have been Registered." should be displayed

      @RegEmail2
      Scenario: Email field required, can’t be empty
        Given I click button "Register Me"
        Then email error should be displayed

      @RegEmail3
      Scenario: Local port with 64 characters on the left of an @ domain
        Given I type "argroupletsdoitwellwecantoacceptthisfieldanditcanbegooditsthruno@e.com" to email field
        When I click button "Register Me"
        And I wait for 2 seconds
        Then message "You have been Registered." should be displayed

      @RegEmail4
      Scenario: Local port with 63 characters on the right of an @ domain followed by '.'
        Given I type "t@allowthisfieldpleaseyoucandoitwellyesicanthiswillbealotofsimbol.com" to email field
        When I click button "Register Me"
        And I wait for 2 seconds
        Then message "You have been Registered." should be displayed

      @RegEmail5
       Scenario: White spaces are not allowed
        Given I type "argroup @ breaksmedia.com" to email field
        When I click button "Register Me"
        And I wait for 2 seconds
        Then email error should be displayed

     @RegEmail6
      Scenario: Max 128 characters
       Given I type "5678901234567890123456789012345678901234567890123456789012345644@wqweqweqweqweqweqweqweqeqweqweqweqweqweqweqweqweqweqeqweqeq.com" to email field
       When I click button "Register Me"
       And I wait for 2 seconds
       Then message "You have been Registered." should be displayed




