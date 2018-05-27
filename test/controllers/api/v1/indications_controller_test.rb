require 'test_helper'

class Api::V1::IndicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_indications_index_url
    assert_response :success
  end

end
