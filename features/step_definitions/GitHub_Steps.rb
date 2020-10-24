require "capybara"
require "capybara/dsl"
require "rspec"
require_relative "../support/page_module"

World(Capybara::DSL)
include Pages

Given(/^I am on github homepage$/) do
  visit "http://www.github.com"
end

When(/^I click on sign in button$/) do
  signin = Pages::SignIn.new
  signin.signin_github
end

When(/^I click on sign up button$/) do
  signup = Pages::SignUp.new
  signup.click_on_signup
end

And(/^I Enter details for account creation$/) do
  signup = Pages::SignUp.new
  signup.signup_github
end

Then(/^the title of the page should be "(.*)"$/) do |titleText|
  expect(@browser.title).to be == titleText
end

Then(/^the page should have "(.*)"$/) do |pageContent|
  expect(page).to have_content(pageContent)
end