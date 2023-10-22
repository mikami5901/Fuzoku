require "test_helper"

class JanitorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get janitor_index_url
    assert_response :success
  end
end
