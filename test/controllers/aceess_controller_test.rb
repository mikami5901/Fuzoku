require "test_helper"

class AceessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aceess_index_url
    assert_response :success
  end
end
