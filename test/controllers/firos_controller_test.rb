require 'test_helper'

class FirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firo = firos(:one)
  end

  test "should get index" do
    get firos_url
    assert_response :success
  end

  test "should get new" do
    get new_firo_url
    assert_response :success
  end

  test "should create firo" do
    assert_difference('Firo.count') do
      post firos_url, params: { firo: { ans1: @firo.ans1, ans10: @firo.ans10, ans11: @firo.ans11, ans12: @firo.ans12, ans13: @firo.ans13, ans14: @firo.ans14, ans15: @firo.ans15, ans16: @firo.ans16, ans17: @firo.ans17, ans18: @firo.ans18, ans19: @firo.ans19, ans2: @firo.ans2, ans20: @firo.ans20, ans21: @firo.ans21, ans22: @firo.ans22, ans23: @firo.ans23, ans24: @firo.ans24, ans25: @firo.ans25, ans26: @firo.ans26, ans27: @firo.ans27, ans28: @firo.ans28, ans29: @firo.ans29, ans3: @firo.ans3, ans30: @firo.ans30, ans31: @firo.ans31, ans32: @firo.ans32, ans33: @firo.ans33, ans34: @firo.ans34, ans35: @firo.ans35, ans36: @firo.ans36, ans37: @firo.ans37, ans38: @firo.ans38, ans39: @firo.ans39, ans4: @firo.ans4, ans40: @firo.ans40, ans41: @firo.ans41, ans42: @firo.ans42, ans43: @firo.ans43, ans44: @firo.ans44, ans45: @firo.ans45, ans46: @firo.ans46, ans47: @firo.ans47, ans48: @firo.ans48, ans49: @firo.ans49, ans5: @firo.ans5, ans50: @firo.ans50, ans51: @firo.ans51, ans52: @firo.ans52, ans6: @firo.ans6, ans7: @firo.ans7, ans8: @firo.ans8, ans9: @firo.ans9, user_id: @firo.user_id } }
    end

    assert_redirected_to firo_url(Firo.last)
  end

  test "should show firo" do
    get firo_url(@firo)
    assert_response :success
  end

  test "should get edit" do
    get edit_firo_url(@firo)
    assert_response :success
  end

  test "should update firo" do
    patch firo_url(@firo), params: { firo: { ans1: @firo.ans1, ans10: @firo.ans10, ans11: @firo.ans11, ans12: @firo.ans12, ans13: @firo.ans13, ans14: @firo.ans14, ans15: @firo.ans15, ans16: @firo.ans16, ans17: @firo.ans17, ans18: @firo.ans18, ans19: @firo.ans19, ans2: @firo.ans2, ans20: @firo.ans20, ans21: @firo.ans21, ans22: @firo.ans22, ans23: @firo.ans23, ans24: @firo.ans24, ans25: @firo.ans25, ans26: @firo.ans26, ans27: @firo.ans27, ans28: @firo.ans28, ans29: @firo.ans29, ans3: @firo.ans3, ans30: @firo.ans30, ans31: @firo.ans31, ans32: @firo.ans32, ans33: @firo.ans33, ans34: @firo.ans34, ans35: @firo.ans35, ans36: @firo.ans36, ans37: @firo.ans37, ans38: @firo.ans38, ans39: @firo.ans39, ans4: @firo.ans4, ans40: @firo.ans40, ans41: @firo.ans41, ans42: @firo.ans42, ans43: @firo.ans43, ans44: @firo.ans44, ans45: @firo.ans45, ans46: @firo.ans46, ans47: @firo.ans47, ans48: @firo.ans48, ans49: @firo.ans49, ans5: @firo.ans5, ans50: @firo.ans50, ans51: @firo.ans51, ans52: @firo.ans52, ans6: @firo.ans6, ans7: @firo.ans7, ans8: @firo.ans8, ans9: @firo.ans9, user_id: @firo.user_id } }
    assert_redirected_to firo_url(@firo)
  end

  test "should destroy firo" do
    assert_difference('Firo.count', -1) do
      delete firo_url(@firo)
    end

    assert_redirected_to firos_url
  end
end
