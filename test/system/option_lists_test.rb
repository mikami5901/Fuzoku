require "application_system_test_case"

class OptionListsTest < ApplicationSystemTestCase
  setup do
    @option_list = option_lists(:one)
  end

  test "visiting the index" do
    visit option_lists_url
    assert_selector "h1", text: "Option lists"
  end

  test "should create option list" do
    visit option_lists_url
    click_on "New option list"

    fill_in "Option name", with: @option_list.option_name
    fill_in "Option picture", with: @option_list.option_picture
    fill_in "Option price", with: @option_list.option_price
    click_on "Create Option list"

    assert_text "Option list was successfully created"
    click_on "Back"
  end

  test "should update Option list" do
    visit option_list_url(@option_list)
    click_on "Edit this option list", match: :first

    fill_in "Option name", with: @option_list.option_name
    fill_in "Option picture", with: @option_list.option_picture
    fill_in "Option price", with: @option_list.option_price
    click_on "Update Option list"

    assert_text "Option list was successfully updated"
    click_on "Back"
  end

  test "should destroy Option list" do
    visit option_list_url(@option_list)
    click_on "Destroy this option list", match: :first

    assert_text "Option list was successfully destroyed"
  end
end
