require "test_helper"

class ContributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contributor = contributors(:one)
  end

  test "should get index" do
    get contributors_url
    assert_response :success
  end

  test "should get new" do
    get new_contributor_url
    assert_response :success
  end

  test "should create contributor" do
    assert_difference("Contributor.count") do
      post contributors_url, params: { contributor: { about: @contributor.about, first_name: @contributor.first_name, last_name: @contributor.last_name, professional_title: @contributor.professional_title, sex: @contributor.sex } }
    end

    assert_redirected_to contributor_url(Contributor.last)
  end

  test "should show contributor" do
    get contributor_url(@contributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_contributor_url(@contributor)
    assert_response :success
  end

  test "should update contributor" do
    patch contributor_url(@contributor), params: { contributor: { about: @contributor.about, first_name: @contributor.first_name, last_name: @contributor.last_name, professional_title: @contributor.professional_title, sex: @contributor.sex } }
    assert_redirected_to contributor_url(@contributor)
  end

  test "should destroy contributor" do
    assert_difference("Contributor.count", -1) do
      delete contributor_url(@contributor)
    end

    assert_redirected_to contributors_url
  end
end
