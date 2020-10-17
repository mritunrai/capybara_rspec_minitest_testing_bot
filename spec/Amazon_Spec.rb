require 'capybara/rspec'

require 'spec_helper'
#require 'AmazonHeader'

describe "the signin process", type: :feature do
    before :each do
        @session = Capybara::Session.new(:chrome)
        @session.visit("http://www.amazon.in") 
    end
   
    it "can find search results" do
       header = AmazonHeaderPage.New
       header.globalSearch("mobile")
    end

    after :each do
        @session.quit
      end
end