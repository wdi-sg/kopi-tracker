require 'test_helper'

class OriginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get origins_index_url
    assert_response :success
  end

end
