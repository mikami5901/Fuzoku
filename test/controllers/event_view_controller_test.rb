require "test_helper"

class EventViewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_view_index_url
    assert_response :success
  end
end
