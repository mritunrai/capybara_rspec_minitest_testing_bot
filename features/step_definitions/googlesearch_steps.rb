#features/step_definitions/googlesearch_steps.rb

Given(/^I am on the Google homepage$/) do
  visit "http://www.google.com/ncr"
end

When(/^I will search for "(.*?)"$/) do |searchText|
  fill_in "q", :with => searchText
end

# Then(/^I should see "(.*?)"$/) do |expectedText|
#   expect(page).to have_content("Hi")
# end

Then("I should see {string}") do |expectedText|
  expect(page).to have_content(expectedText)
end
