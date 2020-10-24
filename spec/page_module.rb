require "capybara/dsl"

module Pages
  class SignIn
    def initialize(session)
      @session = session
    end

    def signin_github
      @session.find(:xpath, '//a[@class="HeaderMenu-link no-underline mr-3"]').click
    end
  end

  class SignUp
    def initialize(session)
      @session = session
    end

    def click_on_signup
      @session.find(:xpath, '//a[@class="HeaderMenu-link d-inline-block no-underline border border-gray-dark rounded-1 px-2 py-1"]').click
    end

    def signup_github
      @session.find(:xpath, '//input[@id="user_login"]').set("mk")
      @session.find(:xpath, '//input[@id="user_email"]').set("mk@gmail.com")
      @session.find(:xpath, '//input[@id="user_password"]').set("mkgmailcom")
    end
  end
end
