#features/step_definitions/googlesearch_steps.rb

Given(/^I am on the Google homepage$/) do
  visit "http://www.google.com/ncr"
end

When(/^I will enter for "(.*?)"$/) do |searchText|
  fill_in "q", :with => searchText
end

Then(/^I should see for "(.*?)"$/) do |expectedText|
  expect(page).to have_content(expectedText)
end

# When("I will search for") do |table|
#   # table is a Cucumber::MultilineArgument::DataTable
#   data = table.rows_hash
#   data.each do |key, value|
#     puts "#{key} = #{value}"
#   end
# end

# Then("I should see") do |table|
#   # table is a Cucumber::MultilineArgument::DataTable
#   data = table.rows_hash
#   data.each do |key, value|
#     puts "#{key} = #{value}"
#   end
# end
