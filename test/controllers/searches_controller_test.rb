require "test_helper"

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get searches_new_url
    assert_response :success
  end

  test "should get search" do
    get searches_search_url
    assert_response :success
  end
end
