require "application_system_test_case"

class EcscoresTest < ApplicationSystemTestCase
  setup do
    @ecscore = ecscores(:one)
  end

  test "visiting the index" do
    visit ecscores_url
    assert_selector "h1", text: "Ecscores"
  end

  test "creating a Ecscore" do
    visit ecscores_url
    click_on "New Ecscore"

    fill_in "Awareness", with: @ecscore.awareness
    fill_in "Control", with: @ecscore.control
    fill_in "Diagnosis", with: @ecscore.diagnosis
    fill_in "Response", with: @ecscore.response
    fill_in "Total", with: @ecscore.total
    fill_in "User", with: @ecscore.user_id
    click_on "Create Ecscore"

    assert_text "Ecscore was successfully created"
    click_on "Back"
  end

  test "updating a Ecscore" do
    visit ecscores_url
    click_on "Edit", match: :first

    fill_in "Awareness", with: @ecscore.awareness
    fill_in "Control", with: @ecscore.control
    fill_in "Diagnosis", with: @ecscore.diagnosis
    fill_in "Response", with: @ecscore.response
    fill_in "Total", with: @ecscore.total
    fill_in "User", with: @ecscore.user_id
    click_on "Update Ecscore"

    assert_text "Ecscore was successfully updated"
    click_on "Back"
  end

  test "destroying a Ecscore" do
    visit ecscores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ecscore was successfully destroyed"
  end
end
