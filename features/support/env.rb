require "selenium-webdriver"
require "capybara"
require "cucumber"
require "rubygems"
require "capybara/cuprite"
require "allure-cucumber"
require "capybara-screenshot/cucumber"

World(Capybara::DSL)

Capybara.threadsafe = true

$driver

ENV["BROWSER"]

puts(ENV["BROWSER"])

#Set default selector as css
Capybara.default_selector = :css

Before do |scenario|
  Capybara.save_path = "screenshot"
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  if ENV["BROWSER"] === "chrome" || ENV["BROWSER"].empty?
    Capybara.default_driver = :chrome
    $driver = Capybara::Session.new(:chrome)
    Capybara.javascript_driver = :chrome
    log("Chrome driver is getting instantiated")
  else
    Capybara.default_driver = :cuprite
    $driver = Capybara::Session.new(:cuprite)
    log("Headless chrome driver is getting instantiated is getting instantiated")
  end

  log(ENV["BROWSER"])
  log("Driver instacne has been created for Scenarios")
end

After do |scenario|
  if scenario.failed?
    timestamp = "#{Time.zone.now.strftime("%Y-%m-%d-%H:%M:%S")}"
  end
  Capybara.reset_sessions!
  #$driver.quit
end

############    Adding Alure Report   #############

# Allure
AllureCucumber.configure do |c|
  c.results_directory = "report/allure-results"
  c.clean_results_directory = true
  c.link_tms_pattern = "https://example.org/tms/{}"
  c.link_issue_pattern = "https://example.org/issue/{}"
  c.tms_prefix = "TMS_"
  c.issue_prefix = "ISSUE_"
end
