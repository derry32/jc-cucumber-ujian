Feature: Login functionality

  @End2EndTest @RegressionTest
  Scenario: Successful login with valid credentials
    Given I am on the OrangeHRM login page
    When I enter on a valid username and password
    And I click on the login button
    Then I should be redirected to the dashboard

  @RegressionTest
  Scenario: Unsuccessful login with invalid username
    Given I am on the OrangeHRM login page
    When I enter an invalid username and a valid password
    And I click on the login button
    Then I should see an error message for invalid credential

  @RegressionTest
  Scenario: Unsuccessful login with empty username
    Given I am on the OrangeHRM login page
    When I enter an empty username and a valid password
    And I click on the login button
    Then I should see an error message for invalid credential required

  @RegressionTest
  Scenario: Unsuccessful login with empty password
    Given I am on the OrangeHRM login page
    When I enter an valid username and a empty password
    And I click on the login button
    Then I should see an error message for empty password required
