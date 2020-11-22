require "application_system_test_case"

class FiroscoresTest < ApplicationSystemTestCase
  setup do
    @firoscore = firoscores(:one)
  end

  test "visiting the index" do
    visit firoscores_url
    assert_selector "h1", text: "Firoscores"
  end

  test "creating a Firoscore" do
    visit firoscores_url
    click_on "New Firoscore"

    fill_in "Ea", with: @firoscore.ea
    fill_in "Ec", with: @firoscore.ec
    fill_in "Ei", with: @firoscore.ei
    fill_in "User", with: @firoscore.user_id
    fill_in "Wa", with: @firoscore.wa
    fill_in "Wc", with: @firoscore.wc
    fill_in "Wi", with: @firoscore.wi
    click_on "Create Firoscore"

    assert_text "Firoscore was successfully created"
    click_on "Back"
  end

  test "updating a Firoscore" do
    visit firoscores_url
    click_on "Edit", match: :first

    fill_in "Ea", with: @firoscore.ea
    fill_in "Ec", with: @firoscore.ec
    fill_in "Ei", with: @firoscore.ei
    fill_in "User", with: @firoscore.user_id
    fill_in "Wa", with: @firoscore.wa
    fill_in "Wc", with: @firoscore.wc
    fill_in "Wi", with: @firoscore.wi
    click_on "Update Firoscore"

    assert_text "Firoscore was successfully updated"
    click_on "Back"
  end

  test "destroying a Firoscore" do
    visit firoscores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firoscore was successfully destroyed"
  end
end
