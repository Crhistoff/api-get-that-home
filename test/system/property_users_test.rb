require "application_system_test_case"

class PropertyUsersTest < ApplicationSystemTestCase
  setup do
    @property_user = property_users(:one)
  end

  test "visiting the index" do
    visit property_users_url
    assert_selector "h1", text: "Property users"
  end

  test "should create property user" do
    visit property_users_url
    click_on "New property user"

    check "Closed" if @property_user.closed
    check "Contacted" if @property_user.contacted
    check "Favorite" if @property_user.favorite
    fill_in "Property", with: @property_user.property_id
    fill_in "User", with: @property_user.user_id
    click_on "Create Property user"

    assert_text "Property user was successfully created"
    click_on "Back"
  end

  test "should update Property user" do
    visit property_user_url(@property_user)
    click_on "Edit this property user", match: :first

    check "Closed" if @property_user.closed
    check "Contacted" if @property_user.contacted
    check "Favorite" if @property_user.favorite
    fill_in "Property", with: @property_user.property_id
    fill_in "User", with: @property_user.user_id
    click_on "Update Property user"

    assert_text "Property user was successfully updated"
    click_on "Back"
  end

  test "should destroy Property user" do
    visit property_user_url(@property_user)
    click_on "Destroy this property user", match: :first

    assert_text "Property user was successfully destroyed"
  end
end
