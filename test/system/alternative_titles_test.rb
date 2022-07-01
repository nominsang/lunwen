require "application_system_test_case"

class AlternativeTitlesTest < ApplicationSystemTestCase
  setup do
    @alternative_title = alternative_titles(:one)
  end

  test "visiting the index" do
    visit alternative_titles_url
    assert_selector "h1", text: "Alternative titles"
  end

  test "should create alternative title" do
    visit alternative_titles_url
    click_on "New alternative title"

    fill_in "Language", with: @alternative_title.language_id
    fill_in "Title", with: @alternative_title.title
    click_on "Create Alternative title"

    assert_text "Alternative title was successfully created"
    click_on "Back"
  end

  test "should update Alternative title" do
    visit alternative_title_url(@alternative_title)
    click_on "Edit this alternative title", match: :first

    fill_in "Language", with: @alternative_title.language_id
    fill_in "Title", with: @alternative_title.title
    click_on "Update Alternative title"

    assert_text "Alternative title was successfully updated"
    click_on "Back"
  end

  test "should destroy Alternative title" do
    visit alternative_title_url(@alternative_title)
    click_on "Destroy this alternative title", match: :first

    assert_text "Alternative title was successfully destroyed"
  end
end
