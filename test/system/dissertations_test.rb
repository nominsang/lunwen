require "application_system_test_case"

class DissertationsTest < ApplicationSystemTestCase
  setup do
    @dissertation = dissertations(:one)
  end

  test "visiting the index" do
    visit dissertations_url
    assert_selector "h1", text: "Dissertations"
  end

  test "should create dissertation" do
    visit dissertations_url
    click_on "New dissertation"

    fill_in "Date submited", with: @dissertation.date_submited
    fill_in "Language", with: @dissertation.language_id
    fill_in "Title", with: @dissertation.title
    click_on "Create Dissertation"

    assert_text "Dissertation was successfully created"
    click_on "Back"
  end

  test "should update Dissertation" do
    visit dissertation_url(@dissertation)
    click_on "Edit this dissertation", match: :first

    fill_in "Date submited", with: @dissertation.date_submited
    fill_in "Language", with: @dissertation.language_id
    fill_in "Title", with: @dissertation.title
    click_on "Update Dissertation"

    assert_text "Dissertation was successfully updated"
    click_on "Back"
  end

  test "should destroy Dissertation" do
    visit dissertation_url(@dissertation)
    click_on "Destroy this dissertation", match: :first

    assert_text "Dissertation was successfully destroyed"
  end
end
