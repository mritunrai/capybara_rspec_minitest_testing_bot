require "selenium-webdriver"
require 'capybara'
require 'cucumber' 
require 'rubygems'
require "capybara/cuprite"

$driver 

puts(ENV['BROWSER'])

Before do | scenario |
  Capybara.reset_sessions!
  
  Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  if ENV['BROWSER'] === "chrome" || ENV['BROWSER'].empty? 
    Capybara.default_driver = :chrome 
    $driver = Capybara::Session.new(:chrome)

    log("Chrome driver is getting instantiated")
  else 
    Capybara.default_driver = :cuprite 
    $driver = Capybara::Session.new(:cuprite)
    log("Headless chrome driver is getting instantiated is getting instantiated")
  end

  log(ENV['BROWSER'])

  log("Driver instacne has been created for Scenarios")
end

After do | scenario |
  $driver.quit
end