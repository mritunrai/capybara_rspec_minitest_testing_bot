#features/githubhome.feature
@regression
@SEVERITY:trivial @ISSUE:YZZ-100 @TMS:9901
Feature: Github homepage

  Scenario: Github homepage loads properly
    Given I am on github homepage
    Then the title of the page should be "GitHub: Where the world builds software · GitHub"

  Scenario: Sign in to github page
    Given I am on github homepage
    When I click on sign in button
    Then the title of the page should be "Sign in to GitHub · GitHub"

    Scenario: Sign up to github page
    Given I am on github homepage
    When I click on sign up button
    Then the page should have "Create your account"