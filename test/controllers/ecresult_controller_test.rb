require 'test_helper'

class EcresultControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ecresult_show_url
    assert_response :success
  end

end
