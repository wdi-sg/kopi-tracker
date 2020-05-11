require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get report_index_url
    assert_response :success
  end

end
