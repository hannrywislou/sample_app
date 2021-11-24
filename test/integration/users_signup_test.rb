require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup information" do
    get signup_path
    assert_no_difference 'User.count', 1 do
      post_via_redirect users_path, params: { user: { name:  "",
                               email: "user@example.com",
                               password:              "password",
                               password_confirmation: "password" } }
    end
    assert_template 'users/show'
  end
end
