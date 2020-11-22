require "application_system_test_case"

class JohariscoresTest < ApplicationSystemTestCase
  setup do
    @johariscore = johariscores(:one)
  end

  test "visiting the index" do
    visit johariscores_url
    assert_selector "h1", text: "Johariscores"
  end

  test "creating a Johariscore" do
    visit johariscores_url
    click_on "New Johariscore"

    fill_in "Askfeedback", with: @johariscore.askfeedback
    fill_in "Givefeedback", with: @johariscore.givefeedback
    fill_in "User", with: @johariscore.user_id
    click_on "Create Johariscore"

    assert_text "Johariscore was successfully created"
    click_on "Back"
  end

  test "updating a Johariscore" do
    visit johariscores_url
    click_on "Edit", match: :first

    fill_in "Askfeedback", with: @johariscore.askfeedback
    fill_in "Givefeedback", with: @johariscore.givefeedback
    fill_in "User", with: @johariscore.user_id
    click_on "Update Johariscore"

    assert_text "Johariscore was successfully updated"
    click_on "Back"
  end

  test "destroying a Johariscore" do
    visit johariscores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Johariscore was successfully destroyed"
  end
end
