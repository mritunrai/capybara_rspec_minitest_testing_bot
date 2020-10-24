require "capybara/rspec"

require "spec_helper"

RSpec.describe "Google Search" do
  include Capybara::DSL

  # ENV["BROWSER"] = "chrome"

  # before(:each) do
  #   Capybara.register_driver :chrome do |app|
  #     Capybara::Selenium::Driver.new(app, :browser => :chrome)
  #   end

  #   if ENV["BROWSER"] == "chrome"
  #     Capybara.default_driver = :chrome
  #     @driver = Capybara::Selenium::Driver.new(:chrome)
  #   elsif ENV["BROWSER"] == "firefox"
  #     Capybara.register_driver :firefox do |app|
  #       Capybara::Selenium::Driver.new(app, :browser => :firefox)
  #     end
  #     Capybara.default_driver = :firefox
  #     @driver = Capybara::Selenium::Driver.new(:firefox)
  #   else
  #     Capybara.default_driver = :cuprite
  #     @driver = Capybara::Session.new(:cuprite)
  #   end
  # end

  it "can find search results", regression: true do
    visit "http://www.google.com/ncr"

    fill_in "q", with: "user@example.com"
  end

  it "can find search results", regression: true do
    visit "http://www.google.com/ncr"

    fill_in "q", with: "user@example.com"
  end
end
