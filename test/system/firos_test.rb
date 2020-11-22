require "application_system_test_case"

class FirosTest < ApplicationSystemTestCase
  setup do
    @firo = firos(:one)
  end

  test "visiting the index" do
    visit firos_url
    assert_selector "h1", text: "Firos"
  end

  test "creating a Firo" do
    visit firos_url
    click_on "New Firo"

    fill_in "Ans1", with: @firo.ans1
    fill_in "Ans10", with: @firo.ans10
    fill_in "Ans11", with: @firo.ans11
    fill_in "Ans12", with: @firo.ans12
    fill_in "Ans13", with: @firo.ans13
    fill_in "Ans14", with: @firo.ans14
    fill_in "Ans15", with: @firo.ans15
    fill_in "Ans16", with: @firo.ans16
    fill_in "Ans17", with: @firo.ans17
    fill_in "Ans18", with: @firo.ans18
    fill_in "Ans19", with: @firo.ans19
    fill_in "Ans2", with: @firo.ans2
    fill_in "Ans20", with: @firo.ans20
    fill_in "Ans21", with: @firo.ans21
    fill_in "Ans22", with: @firo.ans22
    fill_in "Ans23", with: @firo.ans23
    fill_in "Ans24", with: @firo.ans24
    fill_in "Ans25", with: @firo.ans25
    fill_in "Ans26", with: @firo.ans26
    fill_in "Ans27", with: @firo.ans27
    fill_in "Ans28", with: @firo.ans28
    fill_in "Ans29", with: @firo.ans29
    fill_in "Ans3", with: @firo.ans3
    fill_in "Ans30", with: @firo.ans30
    fill_in "Ans31", with: @firo.ans31
    fill_in "Ans32", with: @firo.ans32
    fill_in "Ans33", with: @firo.ans33
    fill_in "Ans34", with: @firo.ans34
    fill_in "Ans35", with: @firo.ans35
    fill_in "Ans36", with: @firo.ans36
    fill_in "Ans37", with: @firo.ans37
    fill_in "Ans38", with: @firo.ans38
    fill_in "Ans39", with: @firo.ans39
    fill_in "Ans4", with: @firo.ans4
    fill_in "Ans40", with: @firo.ans40
    fill_in "Ans41", with: @firo.ans41
    fill_in "Ans42", with: @firo.ans42
    fill_in "Ans43", with: @firo.ans43
    fill_in "Ans44", with: @firo.ans44
    fill_in "Ans45", with: @firo.ans45
    fill_in "Ans46", with: @firo.ans46
    fill_in "Ans47", with: @firo.ans47
    fill_in "Ans48", with: @firo.ans48
    fill_in "Ans49", with: @firo.ans49
    fill_in "Ans5", with: @firo.ans5
    fill_in "Ans50", with: @firo.ans50
    fill_in "Ans51", with: @firo.ans51
    fill_in "Ans52", with: @firo.ans52
    fill_in "Ans6", with: @firo.ans6
    fill_in "Ans7", with: @firo.ans7
    fill_in "Ans8", with: @firo.ans8
    fill_in "Ans9", with: @firo.ans9
    fill_in "User", with: @firo.user_id
    click_on "Create Firo"

    assert_text "Firo was successfully created"
    click_on "Back"
  end

  test "updating a Firo" do
    visit firos_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @firo.ans1
    fill_in "Ans10", with: @firo.ans10
    fill_in "Ans11", with: @firo.ans11
    fill_in "Ans12", with: @firo.ans12
    fill_in "Ans13", with: @firo.ans13
    fill_in "Ans14", with: @firo.ans14
    fill_in "Ans15", with: @firo.ans15
    fill_in "Ans16", with: @firo.ans16
    fill_in "Ans17", with: @firo.ans17
    fill_in "Ans18", with: @firo.ans18
    fill_in "Ans19", with: @firo.ans19
    fill_in "Ans2", with: @firo.ans2
    fill_in "Ans20", with: @firo.ans20
    fill_in "Ans21", with: @firo.ans21
    fill_in "Ans22", with: @firo.ans22
    fill_in "Ans23", with: @firo.ans23
    fill_in "Ans24", with: @firo.ans24
    fill_in "Ans25", with: @firo.ans25
    fill_in "Ans26", with: @firo.ans26
    fill_in "Ans27", with: @firo.ans27
    fill_in "Ans28", with: @firo.ans28
    fill_in "Ans29", with: @firo.ans29
    fill_in "Ans3", with: @firo.ans3
    fill_in "Ans30", with: @firo.ans30
    fill_in "Ans31", with: @firo.ans31
    fill_in "Ans32", with: @firo.ans32
    fill_in "Ans33", with: @firo.ans33
    fill_in "Ans34", with: @firo.ans34
    fill_in "Ans35", with: @firo.ans35
    fill_in "Ans36", with: @firo.ans36
    fill_in "Ans37", with: @firo.ans37
    fill_in "Ans38", with: @firo.ans38
    fill_in "Ans39", with: @firo.ans39
    fill_in "Ans4", with: @firo.ans4
    fill_in "Ans40", with: @firo.ans40
    fill_in "Ans41", with: @firo.ans41
    fill_in "Ans42", with: @firo.ans42
    fill_in "Ans43", with: @firo.ans43
    fill_in "Ans44", with: @firo.ans44
    fill_in "Ans45", with: @firo.ans45
    fill_in "Ans46", with: @firo.ans46
    fill_in "Ans47", with: @firo.ans47
    fill_in "Ans48", with: @firo.ans48
    fill_in "Ans49", with: @firo.ans49
    fill_in "Ans5", with: @firo.ans5
    fill_in "Ans50", with: @firo.ans50
    fill_in "Ans51", with: @firo.ans51
    fill_in "Ans52", with: @firo.ans52
    fill_in "Ans6", with: @firo.ans6
    fill_in "Ans7", with: @firo.ans7
    fill_in "Ans8", with: @firo.ans8
    fill_in "Ans9", with: @firo.ans9
    fill_in "User", with: @firo.user_id
    click_on "Update Firo"

    assert_text "Firo was successfully updated"
    click_on "Back"
  end

  test "destroying a Firo" do
    visit firos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firo was successfully destroyed"
  end
end
