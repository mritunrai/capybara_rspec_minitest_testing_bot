require "capybara/minitest"
require "minitest/autorun"
require_relative "test_helper"

class HomeSpec < Minitest::Test
  include Capybara::DSL

  def setup
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    Capybara.default_driver = :selenium_chrome
    # Capybara.save_path = "test/tmp"
  end

  def test_mk
    assert_equal "1", "2"
  end

  def test_hello
    visit "http://www.github.com"

    assert_content "Homepage"
    page.must_have_content "Homepage"
  end
end
