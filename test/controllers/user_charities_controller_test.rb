require 'test_helper'

class UserCharitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_charity = user_charities(:one)
  end

  test "should get index" do
    get user_charities_url
    assert_response :success
  end

  test "should get new" do
    get new_user_charity_url
    assert_response :success
  end

  test "should create user_charity" do
    assert_difference('UserCharity.count') do
      post user_charities_url, params: { user_charity: { charity_id: @user_charity.charity_id, status: @user_charity.status, user_id: @user_charity.user_id } }
    end

    assert_redirected_to user_charity_url(UserCharity.last)
  end

  test "should show user_charity" do
    get user_charity_url(@user_charity)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_charity_url(@user_charity)
    assert_response :success
  end

  test "should update user_charity" do
    patch user_charity_url(@user_charity), params: { user_charity: { charity_id: @user_charity.charity_id, status: @user_charity.status, user_id: @user_charity.user_id } }
    assert_redirected_to user_charity_url(@user_charity)
  end

  test "should destroy user_charity" do
    assert_difference('UserCharity.count', -1) do
      delete user_charity_url(@user_charity)
    end

    assert_redirected_to user_charities_url
  end
end
