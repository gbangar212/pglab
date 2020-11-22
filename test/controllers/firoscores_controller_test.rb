require 'test_helper'

class FiroscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firoscore = firoscores(:one)
  end

  test "should get index" do
    get firoscores_url
    assert_response :success
  end

  test "should get new" do
    get new_firoscore_url
    assert_response :success
  end

  test "should create firoscore" do
    assert_difference('Firoscore.count') do
      post firoscores_url, params: { firoscore: { ea: @firoscore.ea, ec: @firoscore.ec, ei: @firoscore.ei, user_id: @firoscore.user_id, wa: @firoscore.wa, wc: @firoscore.wc, wi: @firoscore.wi } }
    end

    assert_redirected_to firoscore_url(Firoscore.last)
  end

  test "should show firoscore" do
    get firoscore_url(@firoscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_firoscore_url(@firoscore)
    assert_response :success
  end

  test "should update firoscore" do
    patch firoscore_url(@firoscore), params: { firoscore: { ea: @firoscore.ea, ec: @firoscore.ec, ei: @firoscore.ei, user_id: @firoscore.user_id, wa: @firoscore.wa, wc: @firoscore.wc, wi: @firoscore.wi } }
    assert_redirected_to firoscore_url(@firoscore)
  end

  test "should destroy firoscore" do
    assert_difference('Firoscore.count', -1) do
      delete firoscore_url(@firoscore)
    end

    assert_redirected_to firoscores_url
  end
end
