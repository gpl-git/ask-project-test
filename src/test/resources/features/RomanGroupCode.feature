@GroupCodeTest

  Feature: Automate test set "Registration - Group code"

  Background:
  Given I go to "Registration" page ASK QA


    @GroupCodeTest1
    Scenario: UnHappy Path Testing "Group code"

#     Test with 0 characters / Field can't be empty
      When I click on register me button for error message to show up
      And I wait for 1 seconds
      Then error message should show "This field is required"

#     Test with 11 characters
      When I type > 10 characters = 11
      And I click on register me button for error message to show up
      Then error message should appear "Should no more than 10 characters"
      And I clear Group code field
      And I wait for 2 seconds

    @GroupCodeTest2
    Scenario: Happy Path Testing "Group code"

#    Test with 1 character / Minimum allowed
      When I type minimum allowed characters = 1
      And I click on register me button for error message to show up
      Then error message should not show "Should be at least 1 character"
      And I wait for 2 seconds
      And I clear Group code field

#      Test with 10 characters / Max allowed
      When I type maximum allowed characters = 10
      And I click on register me button for error message to show up
      Then error message should not show "Should be at least 10 characters"
      And I wait for 2 seconds
      And I clear Group code field

    @GroupCodeTest3
      Scenario: Failing Tests / Known Bugs

#     Tests witch will fail
#    1. Type " " character (known bug)
      When I enter " "
      Then Error message should show up "Whitespaces are not allowed"
      And I clear Group code field
#     2. Type " A" whitespace+character (known bug)
      When I enter " A"
      Then Error message should show up "Whitespaces are not allowed"
      And I clear Group code field
#    3. Type "A " character+whitespace (known bug)
      When I enter "A "
      Then Error message should show up "Whitespaces are not allowed"
      And I clear Group code field
#    4. Type " A " whitespace+character+whitespace (known bug)
      When I enter " A "
      Then Error message should show up "Whitespaces are not allowed"
      And I clear Group code field
