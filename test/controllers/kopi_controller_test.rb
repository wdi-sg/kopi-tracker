require 'test_helper'

class KopiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kopi_index_url
    assert_response :success
  end

end
