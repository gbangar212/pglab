require 'test_helper'

class JohariscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @johariscore = johariscores(:one)
  end

  test "should get index" do
    get johariscores_url
    assert_response :success
  end

  test "should get new" do
    get new_johariscore_url
    assert_response :success
  end

  test "should create johariscore" do
    assert_difference('Johariscore.count') do
      post johariscores_url, params: { johariscore: { askfeedback: @johariscore.askfeedback, givefeedback: @johariscore.givefeedback, user_id: @johariscore.user_id } }
    end

    assert_redirected_to johariscore_url(Johariscore.last)
  end

  test "should show johariscore" do
    get johariscore_url(@johariscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_johariscore_url(@johariscore)
    assert_response :success
  end

  test "should update johariscore" do
    patch johariscore_url(@johariscore), params: { johariscore: { askfeedback: @johariscore.askfeedback, givefeedback: @johariscore.givefeedback, user_id: @johariscore.user_id } }
    assert_redirected_to johariscore_url(@johariscore)
  end

  test "should destroy johariscore" do
    assert_difference('Johariscore.count', -1) do
      delete johariscore_url(@johariscore)
    end

    assert_redirected_to johariscores_url
  end
end
