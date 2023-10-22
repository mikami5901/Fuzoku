require "test_helper"

class NewcomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newcomers_index_url
    assert_response :success
  end
end
