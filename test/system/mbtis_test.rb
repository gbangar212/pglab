require "application_system_test_case"

class MbtisTest < ApplicationSystemTestCase
  setup do
    @mbti = mbtis(:one)
  end

  test "visiting the index" do
    visit mbtis_url
    assert_selector "h1", text: "Mbtis"
  end

  test "creating a Mbti" do
    visit mbtis_url
    click_on "New Mbti"

    fill_in "Ans10a", with: @mbti.ans10a
    fill_in "Ans10b", with: @mbti.ans10b
    fill_in "Ans11a", with: @mbti.ans11a
    fill_in "Ans11b", with: @mbti.ans11b
    fill_in "Ans12a", with: @mbti.ans12a
    fill_in "Ans12b", with: @mbti.ans12b
    fill_in "Ans13a", with: @mbti.ans13a
    fill_in "Ans13b", with: @mbti.ans13b
    fill_in "Ans14a", with: @mbti.ans14a
    fill_in "Ans14b", with: @mbti.ans14b
    fill_in "Ans15a", with: @mbti.ans15a
    fill_in "Ans15b", with: @mbti.ans15b
    fill_in "Ans16a", with: @mbti.ans16a
    fill_in "Ans16b", with: @mbti.ans16b
    fill_in "Ans17a", with: @mbti.ans17a
    fill_in "Ans17b", with: @mbti.ans17b
    fill_in "Ans18a", with: @mbti.ans18a
    fill_in "Ans18b", with: @mbti.ans18b
    fill_in "Ans19a", with: @mbti.ans19a
    fill_in "Ans19b", with: @mbti.ans19b
    fill_in "Ans1a", with: @mbti.ans1a
    fill_in "Ans1b", with: @mbti.ans1b
    fill_in "Ans20a", with: @mbti.ans20a
    fill_in "Ans20b", with: @mbti.ans20b
    fill_in "Ans21a", with: @mbti.ans21a
    fill_in "Ans21b", with: @mbti.ans21b
    fill_in "Ans22a", with: @mbti.ans22a
    fill_in "Ans22b", with: @mbti.ans22b
    fill_in "Ans23a", with: @mbti.ans23a
    fill_in "Ans23b", with: @mbti.ans23b
    fill_in "Ans24b", with: @mbti.ans24b
    fill_in "Ans25a", with: @mbti.ans25a
    fill_in "Ans25b", with: @mbti.ans25b
    fill_in "Ans26a", with: @mbti.ans26a
    fill_in "Ans26b", with: @mbti.ans26b
    fill_in "Ans27a", with: @mbti.ans27a
    fill_in "Ans27b", with: @mbti.ans27b
    fill_in "Ans28a", with: @mbti.ans28a
    fill_in "Ans28b", with: @mbti.ans28b
    fill_in "Ans29a", with: @mbti.ans29a
    fill_in "Ans29b", with: @mbti.ans29b
    fill_in "Ans2a", with: @mbti.ans2a
    fill_in "Ans2b", with: @mbti.ans2b
    fill_in "Ans30a", with: @mbti.ans30a
    fill_in "Ans30b", with: @mbti.ans30b
    fill_in "Ans31a", with: @mbti.ans31a
    fill_in "Ans31b", with: @mbti.ans31b
    fill_in "Ans32a", with: @mbti.ans32a
    fill_in "Ans32b", with: @mbti.ans32b
    fill_in "Ans3a", with: @mbti.ans3a
    fill_in "Ans3b", with: @mbti.ans3b
    fill_in "Ans4a", with: @mbti.ans4a
    fill_in "Ans4b", with: @mbti.ans4b
    fill_in "Ans5a", with: @mbti.ans5a
    fill_in "Ans5b", with: @mbti.ans5b
    fill_in "Ans6a", with: @mbti.ans6a
    fill_in "Ans6b", with: @mbti.ans6b
    fill_in "Ans7a", with: @mbti.ans7a
    fill_in "Ans7b", with: @mbti.ans7b
    fill_in "Ans8a", with: @mbti.ans8a
    fill_in "Ans8b", with: @mbti.ans8b
    fill_in "Ans9a", with: @mbti.ans9a
    fill_in "Ans9b", with: @mbti.ans9b
    fill_in "User", with: @mbti.user_id
    click_on "Create Mbti"

    assert_text "Mbti was successfully created"
    click_on "Back"
  end

  test "updating a Mbti" do
    visit mbtis_url
    click_on "Edit", match: :first

    fill_in "Ans10a", with: @mbti.ans10a
    fill_in "Ans10b", with: @mbti.ans10b
    fill_in "Ans11a", with: @mbti.ans11a
    fill_in "Ans11b", with: @mbti.ans11b
    fill_in "Ans12a", with: @mbti.ans12a
    fill_in "Ans12b", with: @mbti.ans12b
    fill_in "Ans13a", with: @mbti.ans13a
    fill_in "Ans13b", with: @mbti.ans13b
    fill_in "Ans14a", with: @mbti.ans14a
    fill_in "Ans14b", with: @mbti.ans14b
    fill_in "Ans15a", with: @mbti.ans15a
    fill_in "Ans15b", with: @mbti.ans15b
    fill_in "Ans16a", with: @mbti.ans16a
    fill_in "Ans16b", with: @mbti.ans16b
    fill_in "Ans17a", with: @mbti.ans17a
    fill_in "Ans17b", with: @mbti.ans17b
    fill_in "Ans18a", with: @mbti.ans18a
    fill_in "Ans18b", with: @mbti.ans18b
    fill_in "Ans19a", with: @mbti.ans19a
    fill_in "Ans19b", with: @mbti.ans19b
    fill_in "Ans1a", with: @mbti.ans1a
    fill_in "Ans1b", with: @mbti.ans1b
    fill_in "Ans20a", with: @mbti.ans20a
    fill_in "Ans20b", with: @mbti.ans20b
    fill_in "Ans21a", with: @mbti.ans21a
    fill_in "Ans21b", with: @mbti.ans21b
    fill_in "Ans22a", with: @mbti.ans22a
    fill_in "Ans22b", with: @mbti.ans22b
    fill_in "Ans23a", with: @mbti.ans23a
    fill_in "Ans23b", with: @mbti.ans23b
    fill_in "Ans24b", with: @mbti.ans24b
    fill_in "Ans25a", with: @mbti.ans25a
    fill_in "Ans25b", with: @mbti.ans25b
    fill_in "Ans26a", with: @mbti.ans26a
    fill_in "Ans26b", with: @mbti.ans26b
    fill_in "Ans27a", with: @mbti.ans27a
    fill_in "Ans27b", with: @mbti.ans27b
    fill_in "Ans28a", with: @mbti.ans28a
    fill_in "Ans28b", with: @mbti.ans28b
    fill_in "Ans29a", with: @mbti.ans29a
    fill_in "Ans29b", with: @mbti.ans29b
    fill_in "Ans2a", with: @mbti.ans2a
    fill_in "Ans2b", with: @mbti.ans2b
    fill_in "Ans30a", with: @mbti.ans30a
    fill_in "Ans30b", with: @mbti.ans30b
    fill_in "Ans31a", with: @mbti.ans31a
    fill_in "Ans31b", with: @mbti.ans31b
    fill_in "Ans32a", with: @mbti.ans32a
    fill_in "Ans32b", with: @mbti.ans32b
    fill_in "Ans3a", with: @mbti.ans3a
    fill_in "Ans3b", with: @mbti.ans3b
    fill_in "Ans4a", with: @mbti.ans4a
    fill_in "Ans4b", with: @mbti.ans4b
    fill_in "Ans5a", with: @mbti.ans5a
    fill_in "Ans5b", with: @mbti.ans5b
    fill_in "Ans6a", with: @mbti.ans6a
    fill_in "Ans6b", with: @mbti.ans6b
    fill_in "Ans7a", with: @mbti.ans7a
    fill_in "Ans7b", with: @mbti.ans7b
    fill_in "Ans8a", with: @mbti.ans8a
    fill_in "Ans8b", with: @mbti.ans8b
    fill_in "Ans9a", with: @mbti.ans9a
    fill_in "Ans9b", with: @mbti.ans9b
    fill_in "User", with: @mbti.user_id
    click_on "Update Mbti"

    assert_text "Mbti was successfully updated"
    click_on "Back"
  end

  test "destroying a Mbti" do
    visit mbtis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mbti was successfully destroyed"
  end
end
