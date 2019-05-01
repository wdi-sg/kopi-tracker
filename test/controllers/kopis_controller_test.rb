require 'test_helper'

class KopisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kopis_index_url
    assert_response :success
  end

end
