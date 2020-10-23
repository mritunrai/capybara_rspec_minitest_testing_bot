#features/googlesearch.feature

@smoke
Feature: Google search

	Scenario: Search for webdriver
		Given I am on the Google homepage
		When I will enter for "webdriver"
		Then I should see for "webdriver"

	Scenario Outline: Search for capybara

		Given I am on the Google homepage
		When I will enter for "<search>"
		Then I should see for "<result>"

		Examples: google outline examples description
			| search    | result    |
			| webdriver | webdriver |
			| amazon    | amazon    |

