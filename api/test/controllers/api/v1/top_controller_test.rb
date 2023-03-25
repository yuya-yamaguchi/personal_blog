require 'test_helper'

class Api::V1::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_top_index_url
    assert_response :success
  end

end
