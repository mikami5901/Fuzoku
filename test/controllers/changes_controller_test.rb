require "test_helper"

class ChangesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get changes_index_url
    assert_response :success
  end

  test "should get show" do
    get changes_show_url
    assert_response :success
  end

  test "should get delete" do
    get changes_delete_url
    assert_response :success
  end
end
