require "test_helper"

class WaittimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get waittime_index_url
    assert_response :success
  end

  test "should get show" do
    get waittime_show_url
    assert_response :success
  end
end
