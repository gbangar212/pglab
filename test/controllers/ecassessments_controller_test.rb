require 'test_helper'

class EcassessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecassessment = ecassessments(:one)
  end

  test "should get index" do
    get ecassessments_url
    assert_response :success
  end

  test "should get new" do
    get new_ecassessment_url
    assert_response :success
  end

  test "should create ecassessment" do
    assert_difference('Ecassessment.count') do
      post ecassessments_url, params: { ecassessment: { ans1: @ecassessment.ans1, ans10: @ecassessment.ans10, ans11: @ecassessment.ans11, ans12: @ecassessment.ans12, ans2: @ecassessment.ans2, ans3: @ecassessment.ans3, ans4: @ecassessment.ans4, ans5: @ecassessment.ans5, ans6: @ecassessment.ans6, ans7: @ecassessment.ans7, ans8: @ecassessment.ans8, ans9: @ecassessment.ans9, user_id: @ecassessment.user_id } }
    end

    assert_redirected_to ecassessment_url(Ecassessment.last)
  end

  test "should show ecassessment" do
    get ecassessment_url(@ecassessment)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecassessment_url(@ecassessment)
    assert_response :success
  end

  test "should update ecassessment" do
    patch ecassessment_url(@ecassessment), params: { ecassessment: { ans1: @ecassessment.ans1, ans10: @ecassessment.ans10, ans11: @ecassessment.ans11, ans12: @ecassessment.ans12, ans2: @ecassessment.ans2, ans3: @ecassessment.ans3, ans4: @ecassessment.ans4, ans5: @ecassessment.ans5, ans6: @ecassessment.ans6, ans7: @ecassessment.ans7, ans8: @ecassessment.ans8, ans9: @ecassessment.ans9, user_id: @ecassessment.user_id } }
    assert_redirected_to ecassessment_url(@ecassessment)
  end

  test "should destroy ecassessment" do
    assert_difference('Ecassessment.count', -1) do
      delete ecassessment_url(@ecassessment)
    end

    assert_redirected_to ecassessments_url
  end
end
