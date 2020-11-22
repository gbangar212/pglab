require "application_system_test_case"

class JoharisTest < ApplicationSystemTestCase
  setup do
    @johari = joharis(:one)
  end

  test "visiting the index" do
    visit joharis_url
    assert_selector "h1", text: "Joharis"
  end

  test "creating a Johari" do
    visit joharis_url
    click_on "New Johari"

    fill_in "Ans10a", with: @johari.ans10a
    fill_in "Ans10b", with: @johari.ans10b
    fill_in "Ans11a", with: @johari.ans11a
    fill_in "Ans11b", with: @johari.ans11b
    fill_in "Ans12a", with: @johari.ans12a
    fill_in "Ans12b", with: @johari.ans12b
    fill_in "Ans13a", with: @johari.ans13a
    fill_in "Ans13b", with: @johari.ans13b
    fill_in "Ans14a", with: @johari.ans14a
    fill_in "Ans14b", with: @johari.ans14b
    fill_in "Ans15a", with: @johari.ans15a
    fill_in "Ans15b", with: @johari.ans15b
    fill_in "Ans16a", with: @johari.ans16a
    fill_in "Ans16b", with: @johari.ans16b
    fill_in "Ans17a", with: @johari.ans17a
    fill_in "Ans17b", with: @johari.ans17b
    fill_in "Ans18a", with: @johari.ans18a
    fill_in "Ans18b", with: @johari.ans18b
    fill_in "Ans19a", with: @johari.ans19a
    fill_in "Ans19b", with: @johari.ans19b
    fill_in "Ans1a", with: @johari.ans1a
    fill_in "Ans1b", with: @johari.ans1b
    fill_in "Ans20a", with: @johari.ans20a
    fill_in "Ans20b", with: @johari.ans20b
    fill_in "Ans2a", with: @johari.ans2a
    fill_in "Ans2b", with: @johari.ans2b
    fill_in "Ans3a", with: @johari.ans3a
    fill_in "Ans3b", with: @johari.ans3b
    fill_in "Ans4a", with: @johari.ans4a
    fill_in "Ans4b", with: @johari.ans4b
    fill_in "Ans5a", with: @johari.ans5a
    fill_in "Ans5b", with: @johari.ans5b
    fill_in "Ans6a", with: @johari.ans6a
    fill_in "Ans6b", with: @johari.ans6b
    fill_in "Ans7a", with: @johari.ans7a
    fill_in "Ans7b", with: @johari.ans7b
    fill_in "Ans8a", with: @johari.ans8a
    fill_in "Ans8b", with: @johari.ans8b
    fill_in "Ans9a", with: @johari.ans9a
    fill_in "Ans9b", with: @johari.ans9b
    fill_in "User", with: @johari.user_id
    click_on "Create Johari"

    assert_text "Johari was successfully created"
    click_on "Back"
  end

  test "updating a Johari" do
    visit joharis_url
    click_on "Edit", match: :first

    fill_in "Ans10a", with: @johari.ans10a
    fill_in "Ans10b", with: @johari.ans10b
    fill_in "Ans11a", with: @johari.ans11a
    fill_in "Ans11b", with: @johari.ans11b
    fill_in "Ans12a", with: @johari.ans12a
    fill_in "Ans12b", with: @johari.ans12b
    fill_in "Ans13a", with: @johari.ans13a
    fill_in "Ans13b", with: @johari.ans13b
    fill_in "Ans14a", with: @johari.ans14a
    fill_in "Ans14b", with: @johari.ans14b
    fill_in "Ans15a", with: @johari.ans15a
    fill_in "Ans15b", with: @johari.ans15b
    fill_in "Ans16a", with: @johari.ans16a
    fill_in "Ans16b", with: @johari.ans16b
    fill_in "Ans17a", with: @johari.ans17a
    fill_in "Ans17b", with: @johari.ans17b
    fill_in "Ans18a", with: @johari.ans18a
    fill_in "Ans18b", with: @johari.ans18b
    fill_in "Ans19a", with: @johari.ans19a
    fill_in "Ans19b", with: @johari.ans19b
    fill_in "Ans1a", with: @johari.ans1a
    fill_in "Ans1b", with: @johari.ans1b
    fill_in "Ans20a", with: @johari.ans20a
    fill_in "Ans20b", with: @johari.ans20b
    fill_in "Ans2a", with: @johari.ans2a
    fill_in "Ans2b", with: @johari.ans2b
    fill_in "Ans3a", with: @johari.ans3a
    fill_in "Ans3b", with: @johari.ans3b
    fill_in "Ans4a", with: @johari.ans4a
    fill_in "Ans4b", with: @johari.ans4b
    fill_in "Ans5a", with: @johari.ans5a
    fill_in "Ans5b", with: @johari.ans5b
    fill_in "Ans6a", with: @johari.ans6a
    fill_in "Ans6b", with: @johari.ans6b
    fill_in "Ans7a", with: @johari.ans7a
    fill_in "Ans7b", with: @johari.ans7b
    fill_in "Ans8a", with: @johari.ans8a
    fill_in "Ans8b", with: @johari.ans8b
    fill_in "Ans9a", with: @johari.ans9a
    fill_in "Ans9b", with: @johari.ans9b
    fill_in "User", with: @johari.user_id
    click_on "Update Johari"

    assert_text "Johari was successfully updated"
    click_on "Back"
  end

  test "destroying a Johari" do
    visit joharis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Johari was successfully destroyed"
  end
end
