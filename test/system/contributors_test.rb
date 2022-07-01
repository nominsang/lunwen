require "application_system_test_case"

class ContributorsTest < ApplicationSystemTestCase
  setup do
    @contributor = contributors(:one)
  end

  test "visiting the index" do
    visit contributors_url
    assert_selector "h1", text: "Contributors"
  end

  test "should create contributor" do
    visit contributors_url
    click_on "New contributor"

    fill_in "About", with: @contributor.about
    fill_in "First name", with: @contributor.first_name
    fill_in "Last name", with: @contributor.last_name
    fill_in "Professional title", with: @contributor.professional_title
    fill_in "Sex", with: @contributor.sex
    click_on "Create Contributor"

    assert_text "Contributor was successfully created"
    click_on "Back"
  end

  test "should update Contributor" do
    visit contributor_url(@contributor)
    click_on "Edit this contributor", match: :first

    fill_in "About", with: @contributor.about
    fill_in "First name", with: @contributor.first_name
    fill_in "Last name", with: @contributor.last_name
    fill_in "Professional title", with: @contributor.professional_title
    fill_in "Sex", with: @contributor.sex
    click_on "Update Contributor"

    assert_text "Contributor was successfully updated"
    click_on "Back"
  end

  test "should destroy Contributor" do
    visit contributor_url(@contributor)
    click_on "Destroy this contributor", match: :first

    assert_text "Contributor was successfully destroyed"
  end
end
