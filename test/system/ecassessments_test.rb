require "application_system_test_case"

class EcassessmentsTest < ApplicationSystemTestCase
  setup do
    @ecassessment = ecassessments(:one)
  end

  test "visiting the index" do
    visit ecassessments_url
    assert_selector "h1", text: "Ecassessments"
  end

  test "creating a Ecassessment" do
    visit ecassessments_url
    click_on "New Ecassessment"

    fill_in "Ans1", with: @ecassessment.ans1
    fill_in "Ans10", with: @ecassessment.ans10
    fill_in "Ans11", with: @ecassessment.ans11
    fill_in "Ans12", with: @ecassessment.ans12
    fill_in "Ans2", with: @ecassessment.ans2
    fill_in "Ans3", with: @ecassessment.ans3
    fill_in "Ans4", with: @ecassessment.ans4
    fill_in "Ans5", with: @ecassessment.ans5
    fill_in "Ans6", with: @ecassessment.ans6
    fill_in "Ans7", with: @ecassessment.ans7
    fill_in "Ans8", with: @ecassessment.ans8
    fill_in "Ans9", with: @ecassessment.ans9
    fill_in "User", with: @ecassessment.user_id
    click_on "Create Ecassessment"

    assert_text "Ecassessment was successfully created"
    click_on "Back"
  end

  test "updating a Ecassessment" do
    visit ecassessments_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @ecassessment.ans1
    fill_in "Ans10", with: @ecassessment.ans10
    fill_in "Ans11", with: @ecassessment.ans11
    fill_in "Ans12", with: @ecassessment.ans12
    fill_in "Ans2", with: @ecassessment.ans2
    fill_in "Ans3", with: @ecassessment.ans3
    fill_in "Ans4", with: @ecassessment.ans4
    fill_in "Ans5", with: @ecassessment.ans5
    fill_in "Ans6", with: @ecassessment.ans6
    fill_in "Ans7", with: @ecassessment.ans7
    fill_in "Ans8", with: @ecassessment.ans8
    fill_in "Ans9", with: @ecassessment.ans9
    fill_in "User", with: @ecassessment.user_id
    click_on "Update Ecassessment"

    assert_text "Ecassessment was successfully updated"
    click_on "Back"
  end

  test "destroying a Ecassessment" do
    visit ecassessments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ecassessment was successfully destroyed"
  end
end
