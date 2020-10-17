require 'capybara/rspec'

require 'spec_helper'

describe "the signin process", type: :feature do
    before :each do
        @session = Capybara::Session.new(:cuprite)
        @session.visit("http://www.google.com") 
    end
   
    it "can find search results" do
            @session.fill_in 'q', with: 'user@example.com'
            @session.click_button 'btnK'    
    end
end