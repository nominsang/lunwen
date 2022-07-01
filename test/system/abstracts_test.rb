require "application_system_test_case"

class AbstractsTest < ApplicationSystemTestCase
  setup do
    @abstract = abstracts(:one)
  end

  test "visiting the index" do
    visit abstracts_url
    assert_selector "h1", text: "Abstracts"
  end

  test "should create abstract" do
    visit abstracts_url
    click_on "New abstract"

    fill_in "Content", with: @abstract.content
    fill_in "Language", with: @abstract.language_id
    click_on "Create Abstract"

    assert_text "Abstract was successfully created"
    click_on "Back"
  end

  test "should update Abstract" do
    visit abstract_url(@abstract)
    click_on "Edit this abstract", match: :first

    fill_in "Content", with: @abstract.content
    fill_in "Language", with: @abstract.language_id
    click_on "Update Abstract"

    assert_text "Abstract was successfully updated"
    click_on "Back"
  end

  test "should destroy Abstract" do
    visit abstract_url(@abstract)
    click_on "Destroy this abstract", match: :first

    assert_text "Abstract was successfully destroyed"
  end
end
