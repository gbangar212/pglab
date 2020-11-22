require 'test_helper'

class MbtisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mbti = mbtis(:one)
  end

  test "should get index" do
    get mbtis_url
    assert_response :success
  end

  test "should get new" do
    get new_mbti_url
    assert_response :success
  end

  test "should create mbti" do
    assert_difference('Mbti.count') do
      post mbtis_url, params: { mbti: { ans10a: @mbti.ans10a, ans10b: @mbti.ans10b, ans11a: @mbti.ans11a, ans11b: @mbti.ans11b, ans12a: @mbti.ans12a, ans12b: @mbti.ans12b, ans13a: @mbti.ans13a, ans13b: @mbti.ans13b, ans14a: @mbti.ans14a, ans14b: @mbti.ans14b, ans15a: @mbti.ans15a, ans15b: @mbti.ans15b, ans16a: @mbti.ans16a, ans16b: @mbti.ans16b, ans17a: @mbti.ans17a, ans17b: @mbti.ans17b, ans18a: @mbti.ans18a, ans18b: @mbti.ans18b, ans19a: @mbti.ans19a, ans19b: @mbti.ans19b, ans1a: @mbti.ans1a, ans1b: @mbti.ans1b, ans20a: @mbti.ans20a, ans20b: @mbti.ans20b, ans21a: @mbti.ans21a, ans21b: @mbti.ans21b, ans22a: @mbti.ans22a, ans22b: @mbti.ans22b, ans23a: @mbti.ans23a, ans23b: @mbti.ans23b, ans24b: @mbti.ans24b, ans25a: @mbti.ans25a, ans25b: @mbti.ans25b, ans26a: @mbti.ans26a, ans26b: @mbti.ans26b, ans27a: @mbti.ans27a, ans27b: @mbti.ans27b, ans28a: @mbti.ans28a, ans28b: @mbti.ans28b, ans29a: @mbti.ans29a, ans29b: @mbti.ans29b, ans2a: @mbti.ans2a, ans2b: @mbti.ans2b, ans30a: @mbti.ans30a, ans30b: @mbti.ans30b, ans31a: @mbti.ans31a, ans31b: @mbti.ans31b, ans32a: @mbti.ans32a, ans32b: @mbti.ans32b, ans3a: @mbti.ans3a, ans3b: @mbti.ans3b, ans4a: @mbti.ans4a, ans4b: @mbti.ans4b, ans5a: @mbti.ans5a, ans5b: @mbti.ans5b, ans6a: @mbti.ans6a, ans6b: @mbti.ans6b, ans7a: @mbti.ans7a, ans7b: @mbti.ans7b, ans8a: @mbti.ans8a, ans8b: @mbti.ans8b, ans9a: @mbti.ans9a, ans9b: @mbti.ans9b, user_id: @mbti.user_id } }
    end

    assert_redirected_to mbti_url(Mbti.last)
  end

  test "should show mbti" do
    get mbti_url(@mbti)
    assert_response :success
  end

  test "should get edit" do
    get edit_mbti_url(@mbti)
    assert_response :success
  end

  test "should update mbti" do
    patch mbti_url(@mbti), params: { mbti: { ans10a: @mbti.ans10a, ans10b: @mbti.ans10b, ans11a: @mbti.ans11a, ans11b: @mbti.ans11b, ans12a: @mbti.ans12a, ans12b: @mbti.ans12b, ans13a: @mbti.ans13a, ans13b: @mbti.ans13b, ans14a: @mbti.ans14a, ans14b: @mbti.ans14b, ans15a: @mbti.ans15a, ans15b: @mbti.ans15b, ans16a: @mbti.ans16a, ans16b: @mbti.ans16b, ans17a: @mbti.ans17a, ans17b: @mbti.ans17b, ans18a: @mbti.ans18a, ans18b: @mbti.ans18b, ans19a: @mbti.ans19a, ans19b: @mbti.ans19b, ans1a: @mbti.ans1a, ans1b: @mbti.ans1b, ans20a: @mbti.ans20a, ans20b: @mbti.ans20b, ans21a: @mbti.ans21a, ans21b: @mbti.ans21b, ans22a: @mbti.ans22a, ans22b: @mbti.ans22b, ans23a: @mbti.ans23a, ans23b: @mbti.ans23b, ans24b: @mbti.ans24b, ans25a: @mbti.ans25a, ans25b: @mbti.ans25b, ans26a: @mbti.ans26a, ans26b: @mbti.ans26b, ans27a: @mbti.ans27a, ans27b: @mbti.ans27b, ans28a: @mbti.ans28a, ans28b: @mbti.ans28b, ans29a: @mbti.ans29a, ans29b: @mbti.ans29b, ans2a: @mbti.ans2a, ans2b: @mbti.ans2b, ans30a: @mbti.ans30a, ans30b: @mbti.ans30b, ans31a: @mbti.ans31a, ans31b: @mbti.ans31b, ans32a: @mbti.ans32a, ans32b: @mbti.ans32b, ans3a: @mbti.ans3a, ans3b: @mbti.ans3b, ans4a: @mbti.ans4a, ans4b: @mbti.ans4b, ans5a: @mbti.ans5a, ans5b: @mbti.ans5b, ans6a: @mbti.ans6a, ans6b: @mbti.ans6b, ans7a: @mbti.ans7a, ans7b: @mbti.ans7b, ans8a: @mbti.ans8a, ans8b: @mbti.ans8b, ans9a: @mbti.ans9a, ans9b: @mbti.ans9b, user_id: @mbti.user_id } }
    assert_redirected_to mbti_url(@mbti)
  end

  test "should destroy mbti" do
    assert_difference('Mbti.count', -1) do
      delete mbti_url(@mbti)
    end

    assert_redirected_to mbtis_url
  end
end
