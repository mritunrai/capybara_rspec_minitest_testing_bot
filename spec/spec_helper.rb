require "selenium/webdriver"
require "capybara"
require "capybara/cuprite"
require "capybara-screenshot/rspec"
require "capybara/rspec"

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :firefox
end

RSpec.configure do |config|
  config.include Capybara::DSL
end

ENV["BROWSER"] = "chrome"

include Capybara::DSL

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

if ENV["BROWSER"] == "chrome"
  Capybara.default_driver = :chrome
  @driver = Capybara::Selenium::Driver.new(:chrome)
elsif ENV["BROWSER"] == "firefox"
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  Capybara.default_driver = :firefox
  @driver = Capybara::Selenium::Driver.new(:firefox)
else
  Capybara.default_driver = :cuprite
  @driver = Capybara::Session.new(:cuprite)
end