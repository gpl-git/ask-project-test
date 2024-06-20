@webdriver

Feature: WebDriver Scenarios

  @webdriver1
  Scenario: WebDriver Methods - Navigate
    Given I navigate to "google"
    Then I print out page details
    When I navigate to "bing"
    Then I print out page details
    And I go back, forward, and refresh
