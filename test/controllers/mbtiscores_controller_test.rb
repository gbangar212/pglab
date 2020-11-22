require 'test_helper'

class MbtiscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mbtiscore = mbtiscores(:one)
  end

  test "should get index" do
    get mbtiscores_url
    assert_response :success
  end

  test "should get new" do
    get new_mbtiscore_url
    assert_response :success
  end

  test "should create mbtiscore" do
    assert_difference('Mbtiscore.count') do
      post mbtiscores_url, params: { mbtiscore: { ie: @mbtiscore.ie, ns: @mbtiscore.ns, pj: @mbtiscore.pj, tf: @mbtiscore.tf, user_id: @mbtiscore.user_id } }
    end

    assert_redirected_to mbtiscore_url(Mbtiscore.last)
  end

  test "should show mbtiscore" do
    get mbtiscore_url(@mbtiscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_mbtiscore_url(@mbtiscore)
    assert_response :success
  end

  test "should update mbtiscore" do
    patch mbtiscore_url(@mbtiscore), params: { mbtiscore: { ie: @mbtiscore.ie, ns: @mbtiscore.ns, pj: @mbtiscore.pj, tf: @mbtiscore.tf, user_id: @mbtiscore.user_id } }
    assert_redirected_to mbtiscore_url(@mbtiscore)
  end

  test "should destroy mbtiscore" do
    assert_difference('Mbtiscore.count', -1) do
      delete mbtiscore_url(@mbtiscore)
    end

    assert_redirected_to mbtiscores_url
  end
end
