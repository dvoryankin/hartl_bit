require 'test_helper'

# class StaticPagesControllerTest < ActionController::TestCase
class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Application"
  end

  test "should get home" do
    get root_path
    # get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Application"
  end

  test "should get help" do
    get help_url
    # get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_url
    # get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_url
    # get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
