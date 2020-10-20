Setup for Capybara with Cucumber
1. brew cask install chromedriver
2. gem install bundler
3. gem install cucumber
4. gem install rspec
5. cucumber --init    // Initialize cucumber project directory
6. rspec --init       // Initialize rspec project directory
7. bundle init
8. gem 'capybara-minitest' // for 



Running Cucumber test
$cucumber --tag @run
$cucumber feature/githubhome.feature  // Running specific feature file.

Running Cucumber test using Rake task
$rake 'runCucumberTest['mk','@smoke']'    // This command is for zsh shell , there are some issue to run rake task on zsh shell.
$rake  runCucumberTest['mk','@smoke']    // non zsh shell .

Running Rspec Test
$rspec spec/*.rb   // run all test in ruby files.
$bundle exec rspec   // Running RSpec tests.

Setup Minitest Framework.
To run a Minitest test, the only setup you really need is to require the autorun file at the beginning of a test file:require 'minitest/autorun'
A better way to get started with Minitest is to have Bundler create a template project for you.
$bundle gem myproject

How to Run: $ruby <File path>