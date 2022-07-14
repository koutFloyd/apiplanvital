require "test_helper"

class SpensionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spensiones_index_url
    assert_response :success
  end
end
