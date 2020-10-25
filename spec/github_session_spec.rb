#######github_spec.rb
require 'page_module'

RSpec.describe "Github home page" do
 
  before :each do
    @session = Capybara::Session.new(:selenium_chrome) 
    @session.visit "http://www.github.com"
  end

  context "Creating GitHub Page user account" do
    it "Github homepage loads properly", sessiontag: true do
      expect(@session.title).to be == "GitHub: Where the world builds software · GitHub"
    end

    it "Sign in to github page", sessiontag: true do
      signin = Pages::SignIn.new(@session)
      signin.signin_github
    end

    it "Sign up to github page", sessiontag: true do
      signup = Pages::SignUp.new(@session)
      signup.click_on_signup
      signup.signup_github
    end
  end

  after :each do
    @session.reset_session!
  end
end