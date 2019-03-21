ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

reporter_options = { color: true, slow_count: 5 }
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper

  # Add more helper methods to be used by all tests here...

  # Return true if test user logged in
  def is_logged_in?
    !session[:user_id].nil?
  end

  # Test user log in
  def log_in_as(user, options = {})
    password    = options[:password]    || 'password'
    remember_me = options[:remember_me] || '1'
    if integration_test?
      post login_path, params: { session: { email:    user.email,
                                  password: password,
                                  remember_me: remember_me } }
    else
      session[:user_id] = user.id
    end
  end

  private

    #Return true inside integration test
    def integration_test?
      defined?(post_via_redirect)
    end
end
