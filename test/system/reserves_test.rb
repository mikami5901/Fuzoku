require "application_system_test_case"

class ReservesTest < ApplicationSystemTestCase
  setup do
    @reserf = reserves(:one)
  end

  test "visiting the index" do
    visit reserves_url
    assert_selector "h1", text: "Reserves"
  end

  test "should create reserve" do
    visit reserves_url
    click_on "New reserve"

    fill_in "Girl", with: @reserf.girl_id
    fill_in "Reserve finish", with: @reserf.reserve_finish
    fill_in "Reserve start", with: @reserf.reserve_start
    fill_in "Schedule", with: @reserf.schedule_id
    click_on "Create Reserve"

    assert_text "Reserve was successfully created"
    click_on "Back"
  end

  test "should update Reserve" do
    visit reserf_url(@reserf)
    click_on "Edit this reserve", match: :first

    fill_in "Girl", with: @reserf.girl_id
    fill_in "Reserve finish", with: @reserf.reserve_finish
    fill_in "Reserve start", with: @reserf.reserve_start
    fill_in "Schedule", with: @reserf.schedule_id
    click_on "Update Reserve"

    assert_text "Reserve was successfully updated"
    click_on "Back"
  end

  test "should destroy Reserve" do
    visit reserf_url(@reserf)
    click_on "Destroy this reserve", match: :first

    assert_text "Reserve was successfully destroyed"
  end
end
