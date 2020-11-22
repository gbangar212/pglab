require 'test_helper'

class EcscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecscore = ecscores(:one)
  end

  test "should get index" do
    get ecscores_url
    assert_response :success
  end

  test "should get new" do
    get new_ecscore_url
    assert_response :success
  end

  test "should create ecscore" do
    assert_difference('Ecscore.count') do
      post ecscores_url, params: { ecscore: { awareness: @ecscore.awareness, control: @ecscore.control, diagnosis: @ecscore.diagnosis, response: @ecscore.response, total: @ecscore.total, user_id: @ecscore.user_id } }
    end

    assert_redirected_to ecscore_url(Ecscore.last)
  end

  test "should show ecscore" do
    get ecscore_url(@ecscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecscore_url(@ecscore)
    assert_response :success
  end

  test "should update ecscore" do
    patch ecscore_url(@ecscore), params: { ecscore: { awareness: @ecscore.awareness, control: @ecscore.control, diagnosis: @ecscore.diagnosis, response: @ecscore.response, total: @ecscore.total, user_id: @ecscore.user_id } }
    assert_redirected_to ecscore_url(@ecscore)
  end

  test "should destroy ecscore" do
    assert_difference('Ecscore.count', -1) do
      delete ecscore_url(@ecscore)
    end

    assert_redirected_to ecscores_url
  end
end
