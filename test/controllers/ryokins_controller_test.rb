require "test_helper"

class RyokinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ryokin = ryokins(:one)
  end

  test "should get index" do
    get ryokins_url
    assert_response :success
  end

  test "should get new" do
    get new_ryokin_url
    assert_response :success
  end

  test "should create ryokin" do
    assert_difference("Ryokin.count") do
      post ryokins_url, params: { ryokin: { course: @ryokin.course, punn: @ryokin.punn } }
    end

    assert_redirected_to ryokin_url(Ryokin.last)
  end

  test "should show ryokin" do
    get ryokin_url(@ryokin)
    assert_response :success
  end

  test "should get edit" do
    get edit_ryokin_url(@ryokin)
    assert_response :success
  end

  test "should update ryokin" do
    patch ryokin_url(@ryokin), params: { ryokin: { course: @ryokin.course, punn: @ryokin.punn } }
    assert_redirected_to ryokin_url(@ryokin)
  end

  test "should destroy ryokin" do
    assert_difference("Ryokin.count", -1) do
      delete ryokin_url(@ryokin)
    end

    assert_redirected_to ryokins_url
  end
end
