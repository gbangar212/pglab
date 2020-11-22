require "application_system_test_case"

class MbtinewscoresTest < ApplicationSystemTestCase
  setup do
    @mbtinewscore = mbtinewscores(:one)
  end

  test "visiting the index" do
    visit mbtinewscores_url
    assert_selector "h1", text: "Mbtinewscores"
  end

  test "creating a Mbtinewscore" do
    visit mbtinewscores_url
    click_on "New Mbtinewscore"

    fill_in "Scoree", with: @mbtinewscore.scoree
    fill_in "Scoref", with: @mbtinewscore.scoref
    fill_in "Scorei", with: @mbtinewscore.scorei
    fill_in "Scorej", with: @mbtinewscore.scorej
    fill_in "Scoren", with: @mbtinewscore.scoren
    fill_in "Scorep", with: @mbtinewscore.scorep
    fill_in "Scores", with: @mbtinewscore.scores
    fill_in "Scoret", with: @mbtinewscore.scoret
    fill_in "User", with: @mbtinewscore.user_id
    click_on "Create Mbtinewscore"

    assert_text "Mbtinewscore was successfully created"
    click_on "Back"
  end

  test "updating a Mbtinewscore" do
    visit mbtinewscores_url
    click_on "Edit", match: :first

    fill_in "Scoree", with: @mbtinewscore.scoree
    fill_in "Scoref", with: @mbtinewscore.scoref
    fill_in "Scorei", with: @mbtinewscore.scorei
    fill_in "Scorej", with: @mbtinewscore.scorej
    fill_in "Scoren", with: @mbtinewscore.scoren
    fill_in "Scorep", with: @mbtinewscore.scorep
    fill_in "Scores", with: @mbtinewscore.scores
    fill_in "Scoret", with: @mbtinewscore.scoret
    fill_in "User", with: @mbtinewscore.user_id
    click_on "Update Mbtinewscore"

    assert_text "Mbtinewscore was successfully updated"
    click_on "Back"
  end

  test "destroying a Mbtinewscore" do
    visit mbtinewscores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mbtinewscore was successfully destroyed"
  end
end
