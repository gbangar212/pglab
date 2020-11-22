require 'test_helper'

class MbtinewscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mbtinewscore = mbtinewscores(:one)
  end

  test "should get index" do
    get mbtinewscores_url
    assert_response :success
  end

  test "should get new" do
    get new_mbtinewscore_url
    assert_response :success
  end

  test "should create mbtinewscore" do
    assert_difference('Mbtinewscore.count') do
      post mbtinewscores_url, params: { mbtinewscore: { scoree: @mbtinewscore.scoree, scoref: @mbtinewscore.scoref, scorei: @mbtinewscore.scorei, scorej: @mbtinewscore.scorej, scoren: @mbtinewscore.scoren, scorep: @mbtinewscore.scorep, scores: @mbtinewscore.scores, scoret: @mbtinewscore.scoret, user_id: @mbtinewscore.user_id } }
    end

    assert_redirected_to mbtinewscore_url(Mbtinewscore.last)
  end

  test "should show mbtinewscore" do
    get mbtinewscore_url(@mbtinewscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_mbtinewscore_url(@mbtinewscore)
    assert_response :success
  end

  test "should update mbtinewscore" do
    patch mbtinewscore_url(@mbtinewscore), params: { mbtinewscore: { scoree: @mbtinewscore.scoree, scoref: @mbtinewscore.scoref, scorei: @mbtinewscore.scorei, scorej: @mbtinewscore.scorej, scoren: @mbtinewscore.scoren, scorep: @mbtinewscore.scorep, scores: @mbtinewscore.scores, scoret: @mbtinewscore.scoret, user_id: @mbtinewscore.user_id } }
    assert_redirected_to mbtinewscore_url(@mbtinewscore)
  end

  test "should destroy mbtinewscore" do
    assert_difference('Mbtinewscore.count', -1) do
      delete mbtinewscore_url(@mbtinewscore)
    end

    assert_redirected_to mbtinewscores_url
  end
end
