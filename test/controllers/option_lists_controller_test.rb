require "test_helper"

class OptionListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_list = option_lists(:one)
  end

  test "should get index" do
    get option_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_option_list_url
    assert_response :success
  end

  test "should create option_list" do
    assert_difference("OptionList.count") do
      post option_lists_url, params: { option_list: { option_name: @option_list.option_name, option_picture: @option_list.option_picture, option_price: @option_list.option_price } }
    end

    assert_redirected_to option_list_url(OptionList.last)
  end

  test "should show option_list" do
    get option_list_url(@option_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_list_url(@option_list)
    assert_response :success
  end

  test "should update option_list" do
    patch option_list_url(@option_list), params: { option_list: { option_name: @option_list.option_name, option_picture: @option_list.option_picture, option_price: @option_list.option_price } }
    assert_redirected_to option_list_url(@option_list)
  end

  test "should destroy option_list" do
    assert_difference("OptionList.count", -1) do
      delete option_list_url(@option_list)
    end

    assert_redirected_to option_lists_url
  end
end
