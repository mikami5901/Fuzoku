require "application_system_test_case"

class GirlsTest < ApplicationSystemTestCase
  setup do
    @girl = girls(:one)
  end

  test "visiting the index" do
    visit girls_url
    assert_selector "h1", text: "Girls"
  end

  test "should create girl" do
    visit girls_url
    click_on "New girl"

    fill_in "Age", with: @girl.age
    fill_in "Bust", with: @girl.bust
    fill_in "Bust cup", with: @girl.bust_cup
    check "Experience" if @girl.experience
    fill_in "Girl picture", with: @girl.girl_picture
    fill_in "Height", with: @girl.height
    fill_in "Hip", with: @girl.hip
    fill_in "Message", with: @girl.message
    fill_in "Name", with: @girl.name
    fill_in "Nomination fee", with: @girl.nomination_fee
    fill_in "Option", with: @girl.option_id
    fill_in "Start date", with: @girl.start_date
    fill_in "Tag a", with: @girl.tag_a
    fill_in "Tag b", with: @girl.tag_b
    fill_in "Tag c", with: @girl.tag_c
    fill_in "Tag d", with: @girl.tag_d
    fill_in "Waist", with: @girl.waist
    click_on "Create Girl"

    assert_text "Girl was successfully created"
    click_on "Back"
  end

  test "should update Girl" do
    visit girl_url(@girl)
    click_on "Edit this girl", match: :first

    fill_in "Age", with: @girl.age
    fill_in "Bust", with: @girl.bust
    fill_in "Bust cup", with: @girl.bust_cup
    check "Experience" if @girl.experience
    fill_in "Girl picture", with: @girl.girl_picture
    fill_in "Height", with: @girl.height
    fill_in "Hip", with: @girl.hip
    fill_in "Message", with: @girl.message
    fill_in "Name", with: @girl.name
    fill_in "Nomination fee", with: @girl.nomination_fee
    fill_in "Option", with: @girl.option_id
    fill_in "Start date", with: @girl.start_date
    fill_in "Tag a", with: @girl.tag_a
    fill_in "Tag b", with: @girl.tag_b
    fill_in "Tag c", with: @girl.tag_c
    fill_in "Tag d", with: @girl.tag_d
    fill_in "Waist", with: @girl.waist
    click_on "Update Girl"

    assert_text "Girl was successfully updated"
    click_on "Back"
  end

  test "should destroy Girl" do
    visit girl_url(@girl)
    click_on "Destroy this girl", match: :first

    assert_text "Girl was successfully destroyed"
  end
end
