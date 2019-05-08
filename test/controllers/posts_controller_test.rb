require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:admin)
  end

  test "non-signed in user layout links" do
    get root_path
    assert_template 'posts/index'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", new_user_session_path, count: 2
    assert_select "a[href=?]", new_user_registration_path
  end

  # test "signed in user layout links" do
  #   get new_user_session_path
  #   assert_template 'devise/sessions/new'
  #   post user_session_path, params: { user: { email: @user.email, password: 'password' } }
  #   assert_not flash.empty?
  #   assert_redirected_to root_path
  #   follow_redirect!
  #   assert_template 'static_pages/home'
  #   assert_select "a[href=?]", new_user_session_path, count: 0
  #   assert_select "a[href=?]", new_user_registration_path, count: 0
  #   assert_select "a[href=?]", edit_user_registration_path
  #   assert_select "a[href=?]", destroy_user_session_path
  # end
end
