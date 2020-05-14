require 'test_helper'

class KopisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kopis_index_url
    assert_response :success
  end

  test "should get new" do
    get kopis_new_url
    assert_response :success
  end

  test "should get create" do
    get kopis_create_url
    assert_response :success
  end

  test "should get show" do
    get kopis_show_url
    assert_response :success
  end

end
