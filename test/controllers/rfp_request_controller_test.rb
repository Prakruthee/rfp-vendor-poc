require 'test_helper'

class RfpRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rfp_request_index_url
    assert_response :success
  end

end
