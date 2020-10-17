#features/githubhome.feature

@regression
Feature: Github homepage

  Scenario: Github homepage loads properly
    Given I am on github homepage
    Then the title of the page should be "GitHub: Where the world builds software · GitHub"

  Scenario: Github homepage loads properly
    Given I am on github homepage
    Then the title of the page should be "GitHub: Where the world builds software · GitHub"