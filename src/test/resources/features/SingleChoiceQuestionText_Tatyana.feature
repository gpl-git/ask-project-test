@single_choice_question_text
Feature: Single Choice Question Text scenarios

  Background:
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    And I click "Sign In" button
    And I wait for 1 sec
    Then I click "Quizzes" menu item
    And I wait for the "Create New Quiz" button to be displayed
    And I wait for 2 sec
    When I click "Create New Quiz" button
    And I wait for 2 sec

  @single_choice_question_text1
  Scenario: The field is required
    Given I type "Single Choice Question Text Test 1" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    Then error message "This field is required" should be displayed
    And I wait for 2 sec


  @single_choice_question_text2
  Scenario: Allowable characters: alphanumeric and special characters (valid input)
    Given I type "Single Choice Question Text Test 2" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "This is a valid input into the text field 123@$%" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "Single Choice Question Text Test 2" should be displayed on the list of quizzes
    And I delete "Single Choice Question Text Test 2" from the list of quizzes
    And I wait for 2 sec
    Then "Single Choice Question Text Test 2" should not be displayed on the list of quizzes

  @single_choice_question_text3
  Scenario: Minimum 1 character is required (valid input, 1 character)
    Given I type "Single Choice Question Text Test 3" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "a" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "Single Choice Question Text Test 3" should be displayed on the list of quizzes
    And I delete "Single Choice Question Text Test 3" from the list of quizzes
    And I wait for 1 sec
    Then "Single Choice Question Text Test 3" should not be displayed on the list of quizzes

  @single_choice_question_text4
  Scenario: Maximum 1000 characters is allowed (valid input, 1000 characters)
    Given I type "Single Choice Question Text Test 4" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsu1000" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "Single Choice Question Text Test 4" should be displayed on the list of quizzes
    And I delete "Single Choice Question Text Test 4" from the list of quizzes
    And I wait for 1 sec
    Then "Single Choice Question Text Test 4" should not be displayed on the list of quizzes

  @single_choice_question_text5
  Scenario: Maximum 1000 characters is allowed (valid input, 999 characters)
    Given I type "Single Choice Question Text Test 5" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsu999" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "Single Choice Question Text Test 5" should be displayed on the list of quizzes
    And I wait for 1 sec
    And I delete "Single Choice Question Text Test 5" from the list of quizzes
    And I wait for 1 sec
    Then "Single Choice Question Text Test 5" should not be displayed on the list of quizzes

  @single_choice_question_text6
  Scenario: Maximum 1000 characters is allowed (invalid input, 1001 characters)
    Given I type "Single Choice Question Text Test 6" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsu1001i" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 2 sec
#    This test is invalid; there is a known bug - a text input field accepts more than 1000 characters


@tag
Scenario: SC Question Number of options
  Given I type "Single Choice Question Number of Options" as quiz title
  And I add a question
  And I wait for 1 sec
  When I select "Single" question in "Q1"
  When I type "This is a valid input into the text field 123@$%" into question filed of "Q1"
  And I type "Option 1" into "Option 1*" field of "Q1"
  And I type "Option 2" into "Option 2*" field of "Q1"
  When I select "Option 2*" as a correct option in "Q1"
  When I add up to 5 options in "Q1"
