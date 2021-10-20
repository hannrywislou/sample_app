require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @bass_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@bass_title}"

  end


  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@bass_title}"

  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@bass_title}"

  end

  test "Contacts" do
    get static_pages_contacts_url
    assert_response :success
    assert_select "title", "Contacts | #{@bass_title}"

  end
end

