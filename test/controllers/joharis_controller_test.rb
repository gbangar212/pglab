require 'test_helper'

class JoharisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @johari = joharis(:one)
  end

  test "should get index" do
    get joharis_url
    assert_response :success
  end

  test "should get new" do
    get new_johari_url
    assert_response :success
  end

  test "should create johari" do
    assert_difference('Johari.count') do
      post joharis_url, params: { johari: { ans10a: @johari.ans10a, ans10b: @johari.ans10b, ans11a: @johari.ans11a, ans11b: @johari.ans11b, ans12a: @johari.ans12a, ans12b: @johari.ans12b, ans13a: @johari.ans13a, ans13b: @johari.ans13b, ans14a: @johari.ans14a, ans14b: @johari.ans14b, ans15a: @johari.ans15a, ans15b: @johari.ans15b, ans16a: @johari.ans16a, ans16b: @johari.ans16b, ans17a: @johari.ans17a, ans17b: @johari.ans17b, ans18a: @johari.ans18a, ans18b: @johari.ans18b, ans19a: @johari.ans19a, ans19b: @johari.ans19b, ans1a: @johari.ans1a, ans1b: @johari.ans1b, ans20a: @johari.ans20a, ans20b: @johari.ans20b, ans2a: @johari.ans2a, ans2b: @johari.ans2b, ans3a: @johari.ans3a, ans3b: @johari.ans3b, ans4a: @johari.ans4a, ans4b: @johari.ans4b, ans5a: @johari.ans5a, ans5b: @johari.ans5b, ans6a: @johari.ans6a, ans6b: @johari.ans6b, ans7a: @johari.ans7a, ans7b: @johari.ans7b, ans8a: @johari.ans8a, ans8b: @johari.ans8b, ans9a: @johari.ans9a, ans9b: @johari.ans9b, user_id: @johari.user_id } }
    end

    assert_redirected_to johari_url(Johari.last)
  end

  test "should show johari" do
    get johari_url(@johari)
    assert_response :success
  end

  test "should get edit" do
    get edit_johari_url(@johari)
    assert_response :success
  end

  test "should update johari" do
    patch johari_url(@johari), params: { johari: { ans10a: @johari.ans10a, ans10b: @johari.ans10b, ans11a: @johari.ans11a, ans11b: @johari.ans11b, ans12a: @johari.ans12a, ans12b: @johari.ans12b, ans13a: @johari.ans13a, ans13b: @johari.ans13b, ans14a: @johari.ans14a, ans14b: @johari.ans14b, ans15a: @johari.ans15a, ans15b: @johari.ans15b, ans16a: @johari.ans16a, ans16b: @johari.ans16b, ans17a: @johari.ans17a, ans17b: @johari.ans17b, ans18a: @johari.ans18a, ans18b: @johari.ans18b, ans19a: @johari.ans19a, ans19b: @johari.ans19b, ans1a: @johari.ans1a, ans1b: @johari.ans1b, ans20a: @johari.ans20a, ans20b: @johari.ans20b, ans2a: @johari.ans2a, ans2b: @johari.ans2b, ans3a: @johari.ans3a, ans3b: @johari.ans3b, ans4a: @johari.ans4a, ans4b: @johari.ans4b, ans5a: @johari.ans5a, ans5b: @johari.ans5b, ans6a: @johari.ans6a, ans6b: @johari.ans6b, ans7a: @johari.ans7a, ans7b: @johari.ans7b, ans8a: @johari.ans8a, ans8b: @johari.ans8b, ans9a: @johari.ans9a, ans9b: @johari.ans9b, user_id: @johari.user_id } }
    assert_redirected_to johari_url(@johari)
  end

  test "should destroy johari" do
    assert_difference('Johari.count', -1) do
      delete johari_url(@johari)
    end

    assert_redirected_to joharis_url
  end
end
