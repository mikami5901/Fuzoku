require "application_system_test_case"

class RyokinsTest < ApplicationSystemTestCase
  setup do
    @ryokin = ryokins(:one)
  end

  test "visiting the index" do
    visit ryokins_url
    assert_selector "h1", text: "Ryokins"
  end

  test "should create ryokin" do
    visit ryokins_url
    click_on "New ryokin"

    fill_in "Course", with: @ryokin.course
    fill_in "Punn", with: @ryokin.punn
    click_on "Create Ryokin"

    assert_text "Ryokin was successfully created"
    click_on "Back"
  end

  test "should update Ryokin" do
    visit ryokin_url(@ryokin)
    click_on "Edit this ryokin", match: :first

    fill_in "Course", with: @ryokin.course
    fill_in "Punn", with: @ryokin.punn
    click_on "Update Ryokin"

    assert_text "Ryokin was successfully updated"
    click_on "Back"
  end

  test "should destroy Ryokin" do
    visit ryokin_url(@ryokin)
    click_on "Destroy this ryokin", match: :first

    assert_text "Ryokin was successfully destroyed"
  end
end
