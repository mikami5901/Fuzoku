require "application_system_test_case"

class YoyakusTest < ApplicationSystemTestCase
  setup do
    @yoyaku = yoyakus(:one)
  end

  test "visiting the index" do
    visit yoyakus_url
    assert_selector "h1", text: "Yoyakus"
  end

  test "should create yoyaku" do
    visit yoyakus_url
    click_on "New yoyaku"

    fill_in "Girl", with: @yoyaku.girl_id
    fill_in "Reserve finish", with: @yoyaku.reserve_finish
    fill_in "Reserve start", with: @yoyaku.reserve_start
    click_on "Create Yoyaku"

    assert_text "Yoyaku was successfully created"
    click_on "Back"
  end

  test "should update Yoyaku" do
    visit yoyaku_url(@yoyaku)
    click_on "Edit this yoyaku", match: :first

    fill_in "Girl", with: @yoyaku.girl_id
    fill_in "Reserve finish", with: @yoyaku.reserve_finish
    fill_in "Reserve start", with: @yoyaku.reserve_start
    click_on "Update Yoyaku"

    assert_text "Yoyaku was successfully updated"
    click_on "Back"
  end

  test "should destroy Yoyaku" do
    visit yoyaku_url(@yoyaku)
    click_on "Destroy this yoyaku", match: :first

    assert_text "Yoyaku was successfully destroyed"
  end
end
