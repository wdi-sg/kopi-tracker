require 'test_helper'

class OriginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get origins_index_url
    assert_response :success
  end

  test "should get new" do
    get origins_new_url
    assert_response :success
  end

  test "should get show" do
    get origins_show_url
    assert_response :success
  end

  test "should get edit" do
    get origins_edit_url
    assert_response :success
  end

end
