require "selenium/webdriver"
require 'capybara'
require "capybara/cuprite"



# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

# Capybara.register_driver :headless_chrome do |app|
#   capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
#     chromeOptions: { args: %w(headless disable-gpu) }
#   )
# end

Capybara.javascript_driver = :cuprite
Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app, window_size: [1200, 800])
end


  session = Capybara::Session.new(:cuprite)
  session.visit("http://www.google.com") 
# Capybara.javascript_driver = :headless_chrome