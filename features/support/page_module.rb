require "capybara/dsl"
World(Capybara::DSL)

module Pages
  include Capybara::DSL

  class SignIn
    def signin_github
      find(:xpath, '//a[@class="HeaderMenu-link no-underline mr-3"]').click
    end
  end

  class SignUp
    def signup_github
      find(:xpath, '//a[@class="HeaderMenu-link d-inline-block no-underline border border-gray-dark rounded-1 px-2 py-1"]').click
    end
  end
end
