# frozen_string_literal: true

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get sessions_new_url
    get login_path # same just for test
    assert_response :success
  end
end
