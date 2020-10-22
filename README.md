Supports
1. Multiple Browser run.
2. Headless browser run.
3. Tag Based run.
4. Allure Reprots
5. Run test using Rake Task
6. Failed Screenshot

Setup for Capybara with Cucumber

1. brew cask install chromedriver
2. gem install bundler
3. gem install cucumber
4. gem install rspec
5. cucumber --init    // Initialize cucumber project directory
6. rspec --init       // Initialize rspec project directory
7. bundle init
8. bundle install      // Install dependency mentioned in Gemfile
8. gem 'capybara-minitest' // for minitest 

To Run the Tests

Running Cucumber test
$cucumber --tag @run
$cucumber feature/githubhome.feature  // Running specific feature file.

Running Cucumber test using Rake task

$rake 'runCucumberTest['mk']'    // This command is for zsh shell , there are some issue to run rake task on zsh shell.
$rake  runCucumberTest['mk']    // non zsh shell .

Allure Reporting Installation
Add this line to your application's Gemfile:

gem 'allure-cucumber'
else  execute below command to install allure gem.

$ gem install allure-cucumber

Add below config into env.rb file.

# Allure
AllureCucumber.configure do |c|
  c.results_directory = "report/allure-results"
  c.clean_results_directory = true
  c.link_tms_pattern = "https://example.org/tms/{}"
  c.link_issue_pattern = "https://example.org/issue/{}"
  c.tms_prefix = "TMS_"
  c.issue_prefix = "ISSUE_"
end

How to create report :
$allure serve report/allure-results 

Running Rspec Test
$rspec spec/*.rb   // run all test in ruby files.
$bundle exec rspec   // Running RSpec tests.

Setup Minitest Framework.
To run a Minitest test, the only setup you really need is to require the autorun file at the beginning of a test file:require 'minitest/autorun'
A better way to get started with Minitest is to have Bundler create a template project for you.
$bundle gem myproject

Setting Up Minitest
To run a Minitest test, the only setup you really need is to require the autorun file at the beginning of a test file:require 'minitest/autorun'. This is good if you’d like to keep the code small. A better way to get started with Minitest is to have Bundler create a template project for you.

bundle gem myproject

There are three files generated that are specifically for your test suite:

Rakefile
test/test_helper.rb
test/myproject_test.rb

The Rakefile maps what files should be included when you run your tests viarake. Update the three lines in the gemspec file myproject.gemspec that have TODO written in them (you may delete the homepage line if you wish), and this will allow you to run your tests. You can simply runrakeon the command line orrake test

Note: Ensure test should have prefix with “test_” , specially in case of creating for minitest.

How to Run Test: $ruby <File path>

