require "test_helper"

class PropertyUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_user = property_users(:one)
  end

  test "should get index" do
    get property_users_url
    assert_response :success
  end

  test "should get new" do
    get new_property_user_url
    assert_response :success
  end

  test "should create property_user" do
    assert_difference("PropertyUser.count") do
      post property_users_url, params: { property_user: { closed: @property_user.closed, contacted: @property_user.contacted, favorite: @property_user.favorite, property_id: @property_user.property_id, user_id: @property_user.user_id } }
    end

    assert_redirected_to property_user_url(PropertyUser.last)
  end

  test "should show property_user" do
    get property_user_url(@property_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_user_url(@property_user)
    assert_response :success
  end

  test "should update property_user" do
    patch property_user_url(@property_user), params: { property_user: { closed: @property_user.closed, contacted: @property_user.contacted, favorite: @property_user.favorite, property_id: @property_user.property_id, user_id: @property_user.user_id } }
    assert_redirected_to property_user_url(@property_user)
  end

  test "should destroy property_user" do
    assert_difference("PropertyUser.count", -1) do
      delete property_user_url(@property_user)
    end

    assert_redirected_to property_users_url
  end
end
