require "test_helper"

class GirlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @girl = girls(:one)
  end

  test "should get index" do
    get girls_url
    assert_response :success
  end

  test "should get new" do
    get new_girl_url
    assert_response :success
  end

  test "should create girl" do
    assert_difference("Girl.count") do
      post girls_url, params: { girl: { age: @girl.age, bust: @girl.bust, bust_cup: @girl.bust_cup, experience: @girl.experience, girl_picture: @girl.girl_picture, height: @girl.height, hip: @girl.hip, message: @girl.message, name: @girl.name, nomination_fee: @girl.nomination_fee, option_id: @girl.option_id, start_date: @girl.start_date, tag_a: @girl.tag_a, tag_b: @girl.tag_b, tag_c: @girl.tag_c, tag_d: @girl.tag_d, waist: @girl.waist } }
    end

    assert_redirected_to girl_url(Girl.last)
  end

  test "should show girl" do
    get girl_url(@girl)
    assert_response :success
  end

  test "should get edit" do
    get edit_girl_url(@girl)
    assert_response :success
  end

  test "should update girl" do
    patch girl_url(@girl), params: { girl: { age: @girl.age, bust: @girl.bust, bust_cup: @girl.bust_cup, experience: @girl.experience, girl_picture: @girl.girl_picture, height: @girl.height, hip: @girl.hip, message: @girl.message, name: @girl.name, nomination_fee: @girl.nomination_fee, option_id: @girl.option_id, start_date: @girl.start_date, tag_a: @girl.tag_a, tag_b: @girl.tag_b, tag_c: @girl.tag_c, tag_d: @girl.tag_d, waist: @girl.waist } }
    assert_redirected_to girl_url(@girl)
  end

  test "should destroy girl" do
    assert_difference("Girl.count", -1) do
      delete girl_url(@girl)
    end

    assert_redirected_to girls_url
  end
end
