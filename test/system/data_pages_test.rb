require "application_system_test_case"

class DataPagesTest < ApplicationSystemTestCase
  setup do
    @data_page = data_pages(:one)
  end

  test "visiting the index" do
    visit data_pages_url
    assert_selector "h1", text: "Data pages"
  end

  test "should create data page" do
    visit data_pages_url
    click_on "New data page"

    fill_in "Data", with: @data_page.data
    click_on "Create Data page"

    assert_text "Data page was successfully created"
    click_on "Back"
  end

  test "should update Data page" do
    visit data_page_url(@data_page)
    click_on "Edit this data page", match: :first

    fill_in "Data", with: @data_page.data
    click_on "Update Data page"

    assert_text "Data page was successfully updated"
    click_on "Back"
  end

  test "should destroy Data page" do
    visit data_page_url(@data_page)
    click_on "Destroy this data page", match: :first

    assert_text "Data page was successfully destroyed"
  end
end
