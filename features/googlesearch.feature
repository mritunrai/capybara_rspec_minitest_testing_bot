#features/googlesearch.feature

@smoke
Feature: Google search

	Scenario: Search for webdriver
		Given I am on the Google homepage
		When I will search for "webdriver"
		Then I should see "webdriver"

	Scenario: Search for capybara
		Given I am on the Google homepage
		When I will search for <"search">
		Then I should see <"search">
		Examples:
			| search   |
			| webdriver|
			| github   |