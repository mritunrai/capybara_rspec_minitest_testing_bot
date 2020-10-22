require "capybara"
require "capybara/dsl"
require "rspec"
require_relative "../support/page_module"

World(Capybara::DSL)
include Pages

Given(/^I am on github homepage$/) do
  visit "http://www.github.com"
  Pages.login
end

Then(/^the title of the page should be "(.*)"$/) do |titleText|
  expect(@browser.title).to be == titleText
end
