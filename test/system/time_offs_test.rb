require "application_system_test_case"

class TimeOffsTest < ApplicationSystemTestCase
  setup do
    @time_off = time_offs(:one)
  end

  test "visiting the index" do
    visit time_offs_url
    assert_selector "h1", text: "Time offs"
  end

  test "should create time off" do
    visit time_offs_url
    click_on "New time off"

    check "Afternoon" if @time_off.afternoon
    fill_in "Date", with: @time_off.date
    fill_in "More info", with: @time_off.more_info
    check "Morning" if @time_off.morning
    fill_in "User", with: @time_off.user_id
    click_on "Create Time off"

    assert_text "Time off was successfully created"
    click_on "Back"
  end

  test "should update Time off" do
    visit time_off_url(@time_off)
    click_on "Edit this time off", match: :first

    check "Afternoon" if @time_off.afternoon
    fill_in "Date", with: @time_off.date
    fill_in "More info", with: @time_off.more_info
    check "Morning" if @time_off.morning
    fill_in "User", with: @time_off.user_id
    click_on "Update Time off"

    assert_text "Time off was successfully updated"
    click_on "Back"
  end

  test "should destroy Time off" do
    visit time_off_url(@time_off)
    click_on "Destroy this time off", match: :first

    assert_text "Time off was successfully destroyed"
  end
end
