require "test_helper"

class AlternativeTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alternative_title = alternative_titles(:one)
  end

  test "should get index" do
    get alternative_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_alternative_title_url
    assert_response :success
  end

  test "should create alternative_title" do
    assert_difference("AlternativeTitle.count") do
      post alternative_titles_url, params: { alternative_title: { language_id: @alternative_title.language_id, title: @alternative_title.title } }
    end

    assert_redirected_to alternative_title_url(AlternativeTitle.last)
  end

  test "should show alternative_title" do
    get alternative_title_url(@alternative_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_alternative_title_url(@alternative_title)
    assert_response :success
  end

  test "should update alternative_title" do
    patch alternative_title_url(@alternative_title), params: { alternative_title: { language_id: @alternative_title.language_id, title: @alternative_title.title } }
    assert_redirected_to alternative_title_url(@alternative_title)
  end

  test "should destroy alternative_title" do
    assert_difference("AlternativeTitle.count", -1) do
      delete alternative_title_url(@alternative_title)
    end

    assert_redirected_to alternative_titles_url
  end
end
