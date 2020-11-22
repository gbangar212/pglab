require "application_system_test_case"

class MbtiscoresTest < ApplicationSystemTestCase
  setup do
    @mbtiscore = mbtiscores(:one)
  end

  test "visiting the index" do
    visit mbtiscores_url
    assert_selector "h1", text: "Mbtiscores"
  end

  test "creating a Mbtiscore" do
    visit mbtiscores_url
    click_on "New Mbtiscore"

    fill_in "Ie", with: @mbtiscore.ie
    fill_in "Ns", with: @mbtiscore.ns
    fill_in "Pj", with: @mbtiscore.pj
    fill_in "Tf", with: @mbtiscore.tf
    fill_in "User", with: @mbtiscore.user_id
    click_on "Create Mbtiscore"

    assert_text "Mbtiscore was successfully created"
    click_on "Back"
  end

  test "updating a Mbtiscore" do
    visit mbtiscores_url
    click_on "Edit", match: :first

    fill_in "Ie", with: @mbtiscore.ie
    fill_in "Ns", with: @mbtiscore.ns
    fill_in "Pj", with: @mbtiscore.pj
    fill_in "Tf", with: @mbtiscore.tf
    fill_in "User", with: @mbtiscore.user_id
    click_on "Update Mbtiscore"

    assert_text "Mbtiscore was successfully updated"
    click_on "Back"
  end

  test "destroying a Mbtiscore" do
    visit mbtiscores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mbtiscore was successfully destroyed"
  end
end
